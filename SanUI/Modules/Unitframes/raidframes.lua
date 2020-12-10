-- File originally written by Tukz of Tukui (see general SanUI credits). Lots of changes
-- by me, so never bug Tukz about any problem with this, please.
--if true then return end
local addonName, addon = ...
local S,C,L = unpack(addon) 
local oUF = addon.oUF

local Scale = S.Toolkit.Functions.Scale

local font2 = C["Medias"].UnitFrameFont
local font1 = C["Medias"].Font
local normTex = C["Medias"].Blank

-- disable blizzard party and raid frames
InterfaceOptionsFrameCategoriesButton11:SetScale(0.00001)
InterfaceOptionsFrameCategoriesButton11:SetAlpha(0)

local utf8sub = function(string, i, dots)
	if not string then return end
	local bytes = #string
	if (bytes <= i) then
		return string
	else
		local len, pos = 0, 1
		while(pos <= bytes) do
			len = len + 1
			local c = string:byte(pos)
			if (c > 0 and c <= 127) then
				pos = pos + 1
			elseif (c >= 192 and c <= 223) then
				pos = pos + 2
			elseif (c >= 224 and c <= 239) then
				pos = pos + 3
			elseif (c >= 240 and c <= 247) then
				pos = pos + 4
			end
			if (len == i) then break end
		end

		if (len == i and pos <= bytes) then
			return string:sub(1, pos - 1)..(dots and '...' or '')
		else
			return string
		end
	end
end

oUF.Tags.Events["enhdead"] = "UNIT_HEALTH UNIT_CONNECTION PLAYER_FLAGS_CHANGED"
oUF.Tags.Methods["enhdead"] = function(u)
	if(UnitIsDead(u)) then
		return 'Dead'
	elseif(UnitIsGhost(u)) then
		return 'Ghost'
	elseif(not UnitIsConnected(u)) then
		return 'Off'
	end		
end

--need to override this function because we don't have self.Health.value for 
--raid units anymore
S.PostUpdateHealthRaid = function(health, unit, min, max)
	-- doing this here to force friendly unit (vehicle or pet) very far away from you to update color correcly
	-- because if vehicle or pet is too far away, unitreaction return nil and color of health bar is white.
	if not UnitIsPlayer(unit) and UnitIsFriend(unit, "player") and C["UnitFrames"].unicolor ~= true then
		local c = S.Colors.reaction[5]
		local r, g, b = c[1], c[2], c[3]
		health:SetStatusBarColor(r, g, b)
		health.bg:SetTexture(.1, .1, .1)
	end
	
end

oUF.Tags.Events['getnamecolor'] = 'UNIT_POWER_UPDATE'
oUF.Tags.Methods['getnamecolor'] = function(unit)
	if (UnitIsPlayer(unit)) then
		return _TAGS['raidcolor'](unit)
	else
		local reaction = UnitReaction(unit, 'player')
	
		if (reaction) then
			local c = S.Colors.reaction[reaction]
			return string.format('|cff%02x%02x%02x', c[1] * 255, c[2] * 255, c[3] * 255)
		else
			r, g, b = .84,.75,.65
			return string.format('|cff%02x%02x%02x', r * 255, g * 255, b * 255)
		end
	end
end

oUF.Tags.Events['nameshort'] = 'UNIT_NAME_UPDATE PARTY_LEADER_CHANGED GROUP_ROSTER_UPDATE'
oUF.Tags.Methods['nameshort'] = function(unit)
	local name = UnitName(unit)
	
	if not name then
		return ""
	end
	
	return utf8sub(name, 10, false)
end

local updateThreat = function(self, event, unit)
	if (self.unit ~= unit) then return end
	
	local threat = UnitThreatSituation(unit)
	
	if threat and threat > 1 then
		self.Health.bg:SetVertexColor(120/255,12/255,12/255)
		self.Health.bg:SetColorTexture(.8,.8,.8)
		self.Health:SetStatusBarColor(.3,.3,.3,.7)

		local fontName, fontHeight, fontFlags = self.Name:GetFont()
		self.Name:SetFont(fontName,fontHeight,"OUTLINE")
	else
		self.Health.bg:SetColorTexture(.3,.3,.3)
		self.Health.bg:SetVertexColor(0,0,0,1)
		self.Health:SetStatusBarColor(.2,.2,.2,1)

		local fontName, fontHeight, fontFlags = self.Name:GetFont()
		self.Name:SetFont(fontName,fontHeight,"")
	end

end

local function Shared(self, unit)
	self.colors = S.UnitColor
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)
	
	local health = CreateFrame("StatusBar", nil, self)
	health:SetPoint("TOPLEFT")
	health:SetPoint("TOPRIGHT")
	health:SetHeight(Scale(28))
	health:SetStatusBarTexture(normTex)
	health:SetFrameLevel(8)
	health:SetStatusBarColor(.2, .2, .2, 1)
	health:SetOrientation("VERTICAL")
	self.Health = health

	health.bg = health:CreateTexture(nil, "BORDER")
	health.bg:SetAllPoints()
	health.bg:SetTexture(normTex)
	health.bg:SetVertexColor(0,0,0,1)
	
	health.colorDisconnected = false
	health.colorClass = false
	health.colorTapping = false
	health.colorClassNPC = false
	health.colorClassPet = false
	health.colorReaction = false
	health.colorSmooth = false
	health.colorHealth = false
	health.Smooth = true

	local name = self.Health:CreateFontString(nil, "OVERLAY")
	name:SetPoint("CENTER",self.Health,"CENTER")
	name:SetFont(font1, 11)
	self:Tag(name, "[getnamecolor][nameshort]")
	self.Name = name

	table.insert(self.__elements, updateThreat)
	self:RegisterEvent("PLAYER_TARGET_CHANGED", updateThreat, true)
	self:RegisterEvent("UNIT_THREAT_LIST_UPDATE", updateThreat)
	self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", updateThreat)
	
	-- highlight
	local glowBorder = {edgeFile = C["Medias"].Blank, edgeSize = 1}
	local HighlightTarget = CreateFrame("Frame", nil, self.Health, "BackdropTemplate")

	HighlightTarget:SetFrameLevel(self.Health:GetFrameLevel() + 3)
	HighlightTarget:SetAllPoints()
	HighlightTarget:SetBackdrop(glowBorder)
	HighlightTarget:SetBackdropBorderColor(0,0,0,1)
	
	self:RegisterEvent("PLAYER_TARGET_CHANGED", function(self,event,unit)
			if UnitIsUnit("target", self.unit) then
				self.HighlightTarget:SetBackdropBorderColor(1,1,1)
			else
				self.HighlightTarget:SetBackdropBorderColor(0,0,0)
			end
		end)
		
	self.HighlightTarget = HighlightTarget
	
	local Dead = self.Health:CreateFontString(nil, "OVERLAY")
	Dead:SetPoint("BOTTOMRIGHT",self.Health,"BOTTOMRIGHT",-S.scale1,0)
	Dead:SetFont(C["Medias"].Font, 11)
	self:Tag(Dead, "[enhdead]")
	self.Dead = Dead
	
	local RaidIcon = health:CreateTexture(nil, "OVERLAY")
	RaidIcon:SetHeight(Scale(16))
	RaidIcon:SetWidth(Scale(16))
	RaidIcon:SetPoint("CENTER", self, "TOP",-Scale(12),-S.scale1)
	RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\Others\\RaidIcons.blp")
	RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
	self.RaidTargetIndicator  = RaidIcon
	RaidIcon:Hide() -- not sure if necessary, seems so from MOTHER's rooms

	local ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
	ReadyCheck:SetHeight(Scale(12))
	ReadyCheck:SetWidth(Scale(12))
	ReadyCheck:SetPoint("CENTER",self.Health,"TOP") 	
	self.ReadyCheckIndicator = ReadyCheck

	local ResurrectIcon = self.Health:CreateTexture(nil, "OVERLAY")
	ResurrectIcon:SetSize(Scale(16), Scale(16))
	ResurrectIcon:SetPoint("CENTER")
	ResurrectIcon:SetDrawLayer("OVERLAY", 7)
	self.ResurrectIndicator = ResurrectIcon
	
	local range = {insideAlpha = 1, outsideAlpha = C["Raid"].RangeAlpha}
	range.PostUpdate = function(self, object, inRange, checkedRange, connected)
		if not connected then 
			object:SetAlpha(self.outsideAlpha)
		end
	end
	self.Range = range
	
	local mhpb = CreateFrame("StatusBar", nil, self.Health)
	mhpb:SetOrientation("VERTICAL")
	mhpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	mhpb:SetWidth(Scale(66))
	mhpb:SetHeight(Scale(28))				
	mhpb:SetStatusBarTexture(normTex)
	mhpb:SetStatusBarColor(0, 0.5, 0.15, 1)

	local ohpb = CreateFrame("StatusBar", nil, self.Health)
	ohpb:SetOrientation("VERTICAL")
	ohpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	ohpb:SetWidth(Scale(66))
	ohpb:SetHeight(Scale(28))
	ohpb:SetStatusBarTexture(normTex)
	ohpb:SetStatusBarColor(0, 0.5, 0, 1)
	
	local absb = CreateFrame("StatusBar", nil, self.Health)
	absb:SetOrientation("VERTICAL")
	absb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	absb:SetWidth(Scale(66))
	absb:SetHeight(Scale(28))				
	absb:SetStatusBarTexture(normTex)
	absb:SetStatusBarColor(0.5, 0.5, 0, 1)

	self.HealthPrediction = {
		myBar = mhpb,
		otherBar = ohpb,
		absorbBar = absb,
		maxOverflow = 1,
	}

	self.Name:SetParent(absb)
	
	local auras = CreateFrame("Frame", nil, self)
	auras:SetPoint("TOPLEFT", self.Health, S.scale2, -S.scale2)
	auras:SetPoint("BOTTOMRIGHT", self.Health, -S.scale2, S.scale2)
	auras:SetFrameLevel(self.Health:GetFrameLevel()+2)
	auras.Icons = {}
	auras.Texts = {}

	for _, spell in pairs(S["UnitFrames"].RaidBuffsTracking[S.MyClass] or {}) do
		local icon = CreateFrame("Frame", nil, auras)
		icon:SetPoint(unpack(spell.pos))
		
		icon.spellID = spell.spellID
		icon.anyCaster = spell.anyCaster
		icon.timers = spell.timers
		icon.cooldownAnim = spell.cooldownAnim	
		icon.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers
		icon:SetWidth(S.scale6)
		icon:SetHeight(S.scale6)
	
		if icon.cooldownAnim then 
			local cd = CreateFrame("Cooldown", nil, icon,"CooldownFrameTemplate")
			cd:SetAllPoints(icon)
			cd.noCooldownCount = icon.noCooldownCount or false -- needed for tullaCC to not show cooldown numbers
			cd:SetReverse(true)
			icon.cd = cd
		end
		
		local tex = icon:CreateTexture(nil, "OVERLAY")
		tex:SetAllPoints(icon)
		tex:SetTexture(C.Medias.Blank)
		tex:SetVertexColor(unpack(spell.color))
		
		icon.tex = tex
		icon.color = spell.color	
		
		auras.Icons[spell.spellID] = icon
		icon:Hide()
	end
	
	
	local turtle_icon = CreateFrame("Frame", nil, auras)	
	turtle_icon:SetPoint("TOPRIGHT", S.scale2, S.scale2)	
	turtle_icon.anyCaster = true
	turtle_icon.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers	
	turtle_icon:SetWidth(Scale(15))
	turtle_icon:SetHeight(Scale(15))
	turtle_icon.setTex = true

	local tex = turtle_icon:CreateTexture(nil, "OVERLAY")
	tex:SetAllPoints(turtle_icon)
	tex:SetTexCoord(.1,.9,.1,.9)
	turtle_icon.tex = tex
	
	local cd = CreateFrame("Cooldown", nil, turtle_icon,"CooldownFrameTemplate")
	cd:SetAllPoints(turtle_icon)
	cd.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers
	cd:SetReverse(true)
	turtle_icon.cd = cd
	
	turtle_icon:Hide()
	
	for _, spellID in pairs(S["UnitFrames"].RaidBuffsTracking["ALL"]) do	
		auras.Icons[spellID] = turtle_icon
	end
	
	for _, spell in ipairs(S["UnitFrames"].TextAuras[S.MyClass] or {}) do
		local text = auras:CreateFontString(nil, "OVERLAY")
		text:SetFont("Fonts\\FRIZQT__.TTF", spell.textsize)--, "THINOUTLINE")
		text:SetPoint(unpack(spell.pos))
		
		text.anyCaster = spell.anyCaster
		text.format = spell.format
		text.res = 0.3
		text.timers = spell.timers
		
		auras.Texts[spell.spellID] = text
		text:Hide()
	end
	
	self.NotAuraTrack = auras

	local RaidDebuffs = CreateFrame("Frame", nil, self)
	RaidDebuffs:SetHeight(Scale(15))
	RaidDebuffs:SetWidth(Scale(15))
	RaidDebuffs:SetPoint("BOTTOMLEFT",self, 1, 1)---S.scale2,-S.scale2)
	RaidDebuffs:SetFrameStrata(health:GetFrameStrata())
	--HighlightTarget has + 3, we want to be above that
	RaidDebuffs:SetFrameLevel(health:GetFrameLevel() + 4)
	
	RaidDebuffs:CreateBackdrop()
	
	RaidDebuffs.icon = RaidDebuffs:CreateTexture(nil, "OVERLAY")
	RaidDebuffs.icon:SetTexCoord(.1,.9,.1,.9)
	RaidDebuffs.icon:SetPoint("CENTER")
	RaidDebuffs.icon:SetSize(Scale(14), Scale(14))

	RaidDebuffs.cd = CreateFrame("Cooldown", nil, RaidDebuffs,"CooldownFrameTemplate")
	RaidDebuffs.cd:SetAllPoints(RaidDebuffs.icon)
	RaidDebuffs.cd.noOCC = true -- remove this line if you want cooldown number on it
	RaidDebuffs.cd.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers
	RaidDebuffs.cd:SetReverse(true)
	
	RaidDebuffs.count = RaidDebuffs:CreateFontString(nil, "OVERLAY")
	RaidDebuffs.count:SetFont(font2, 9, "THINOUTLINE")
	RaidDebuffs.count:SetPoint("BOTTOMRIGHT", RaidDebuffs, "BOTTOMRIGHT", 0, S.scale2)
	RaidDebuffs.count:SetTextColor(1, .9, 0)	

	RaidDebuffs.Debuffs = S["UnitFrames"].RaidDebuffs
	
	self.RaidDebuffs = RaidDebuffs
		
	local ORD = oUF_RaidDebuffs	
	ORD.ShowDispelableDebuff = true
	ORD.FilterDispellableDebuff = true
	ORD.MatchBySpellName = true
	ORD.SetDebuffTypeColor = RaidDebuffs.SetBorderColor
	
	ORD:ResetDebuffData()
	ORD:RegisterDebuffs(RaidDebuffs.Debuffs)
	
	if not ORD.RegisteredSanUI then
		S["UnitFrames"].DebuffsTracking.RaidDebuffs.spells = RaidDebuffs.Debuffs
		ORD:ResetDebuffData()
		ORD:RegisterDebuffs(RaidDebuffs.Debuffs)
		ORD.RegisteredSanUI = true
	end

	return self
end

local point = "LEFT"
local columnAnchorPoint = "TOP"
local pa1, pa2, px, py = "TOPLEFT", "BOTTOMLEFT", 0, -3

oUF:RegisterStyle("SanUIRaid", Shared)

local function GetRaidFrameAttributes()
	return
	"SanUIRaid", 
	nil, 
	"solo,party,raid",
	"oUF-initialConfigFunction", [[
		local header = self:GetParent()
		self:SetWidth(header:GetAttribute("initial-width"))
		self:SetHeight(header:GetAttribute("initial-height"))
	]],
	"initial-width", Scale(66),
	"initial-height", Scale(28),
	"showParty", true,
	"showRaid", true,
	"showPlayer", true,
	"showSolo", true,
	"xoffset", S.scale2,
	"yOffset", Scale(-2),
	"point", point,
	"groupFilter", "1,2,3,4,5,6,7,8",
	"groupingOrder", "1,2,3,4,5,6,7,8",
	"groupBy", "GROUP",
	"maxColumns", 8,
	"unitsPerColumn", 5,
	"columnSpacing", S.scale2,
	"columnAnchorPoint", columnAnchorPoint
end
S.RaidFrameAttributes = GetAttributes

-- Show Raid Pets
local function GetPetFrameAttributes()
	return
	"SanUIRaidPets", "SecureGroupPetHeaderTemplate", "solo,party,raid",
	"showPlayer", true,
	"showParty", true,
	"showRaid", true,
	"showSolo", true,
	"maxColumns", 8,
	"point", point,
	"unitsPerColumn", 5,
	"columnSpacing", S.scale2,
	"columnAnchorPoint", columnAnchorPoint,
	"yOffset", Scale(-2),
	"xOffset", S.scale2,
	"initial-width", Scale(66),
	"initial-height", Scale(28),
	"oUF-initialConfigFunction", [[
		local header = self:GetParent()
		self:SetWidth(header:GetAttribute("initial-width"))
		self:SetHeight(header:GetAttribute("initial-height"))
	]]
end
S.RaidFramePetAttributes = GetPetAttributes
local y = S.ScreenHeight / 9
	
oUF:Factory(function(self)
	oUF:SetActiveStyle("SanUIRaid")

	local raid = oUF:SpawnHeader(GetRaidFrameAttributes())
	raid:SetParent(Tukui_PetBattleFrameHider)
	raid:ClearAllPoints()
	raid:SetPoint("CENTER",UIParent,0,-195)

	local pet = oUF:SpawnHeader(GetPetFrameAttributes())
	pet:SetParent(Tukui_PetBattleFrameHider)
	pet:SetPoint(pa1, raid, pa2, Scale(px), Scale(py))
	
	-- Max number of group according to Instance max players
	local ten = "1,2"
	local twentyfive = "1,2,3,4,5"
	local forty = "1,2,3,4,5,6,7,8"
	local twenty = "1,2,3,4,5,6"

	local MaxGroup = CreateFrame("Frame", "SanUIRaidMaxGroup")
	MaxGroup:RegisterEvent("PLAYER_ENTERING_WORLD")
	MaxGroup:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	MaxGroup:SetScript("OnEvent", function(self, event)
		if InCombatLockdown() then
			MaxGroup:RegisterEvent("PLAYER_REGEN_ENABLED")
			return
		end
		
		if event == "PLAYER_REGEN_ENABLED" then
			MaxGroup:UnregisterEvent("PLAYER_REGEN_ENABLED")
		end
		
		local filter
		local inInstance, instanceType = IsInInstance()
		local _, _, _, _, maxPlayers, _, _ = GetInstanceInfo()
		
		if maxPlayers == 25 then
			filter = twentyfive
		elseif maxPlayers == 10 then
			filter = ten
		elseif maxPlayers == 20 then
			filter = twenty
		else
			filter = forty
		end

		if inInstance and instanceType == "raid" then
			SanUIRaid:SetAttribute("groupFilter", filter)
			if C.UnitFrames.showraidpets then
				SanUIRaidPets:SetAttribute("groupFilter", filter)
			end
		else
			SanUIRaid:SetAttribute("groupFilter", "1,2,3,4,5,6,7,8")
			if C.UnitFrames.ShowPets then
				SanUIRaidPets:SetAttribute("groupFilter", "1,2,3,4,5,6,7,8")
			end
		end
	end)
end)
