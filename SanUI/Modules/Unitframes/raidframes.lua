-- File originally written by Tukz of Tukui (see general SanUI credits). Lots of changes
-- by me, so never bug Tukz about any problem with this, please.

local S,C,L = unpack(SanUI) 
local oUF = TukuiUnitFrameFramework

local font2 = C["Medias"].UnitFrameFont
local font1 = C["Medias"].Font
local normTex = C["Medias"].Normal
local bdcr, bdcg, bdcb = unpack(C["Medias"].BorderColor)
local backdrop = {
	bgFile = C["Medias"].blank,
	insets = {top = -S.Mult, left = -S.Mult, bottom = -S.Mult, right = -S.Mult},
}

-- disable blizzard party and raid frames
InterfaceOptionsFrameCategoriesButton11:SetScale(0.00001)
InterfaceOptionsFrameCategoriesButton11:SetAlpha(0)

-- raid
hooksecurefunc(S.Panels,"Enable",function()
	CompactRaidFrameManager:SetParent(S["Panels"].Hider)
end)
CompactUnitFrameProfiles:UnregisterAllEvents()

local utf8sub = function(string, i, dots)
	if not string then return end
	local bytes = string:len()
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

oUF.Tags.Events["enhdead"] = "UNIT_HEALTH UNIT_CONNECTION"
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

oUF.Tags.Events['getnamecolor'] = 'UNIT_POWER'
oUF.Tags.Methods['getnamecolor'] = function(unit)
	local reaction = UnitReaction(unit, 'player')
	if (UnitIsPlayer(unit)) then
		return _TAGS['raidcolor'](unit)
	elseif (reaction) then
		local c = S.Colors.reaction[reaction]
		return string.format('|cff%02x%02x%02x', c[1] * 255, c[2] * 255, c[3] * 255)
	else
		r, g, b = .84,.75,.65
		return string.format('|cff%02x%02x%02x', r * 255, g * 255, b * 255)
	end
	
end

oUF.Tags.Events['nameshort'] = 'UNIT_NAME_UPDATE PARTY_LEADER_CHANGED GROUP_ROSTER_UPDATE'
oUF.Tags.Methods['nameshort'] = function(unit)
	local name = UnitName(unit)
	
	if not name then
		print("No name found in Tag nameshort for unit "..unit.."!")
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
		self.Health:SetStatusBarColor(.3,.3,.3,1)

		local fontName, fontHeight, fontFlags = self.Name:GetFont()
		self.Name:SetFont(fontName,fontHeight,"")
	end

end

local function Shared(self, unit)
	self.colors = S.UnitColor
	self:RegisterForClicks("AnyUp")
	self:SetScript("OnEnter", UnitFrame_OnEnter)
	self:SetScript("OnLeave", UnitFrame_OnLeave)
	
	self:SetBackdrop({bgFile = C["Medias"].blank, insets = {top = -S.Mult, left = -S.Mult, bottom = -S.Mult, right = -S.Mult}})
	self:SetBackdropColor(0, 0, 0)
	
	local health = CreateFrame("StatusBar", nil, self)
	health:SetPoint("TOPLEFT")
	health:SetPoint("TOPRIGHT")
	health:Height(28)
	health:SetStatusBarTexture(normTex)
	health:SetFrameLevel(8)
	health:SetStatusBarColor(.3, .3, .3, 1)
	self.Health = health
	
	--if C["UnitFrames"].gridhealthvertical == true then
		health:SetOrientation("VERTICAL")
	--end
	
	health.bg = health:CreateTexture(nil, "BORDER")
	health.bg:SetAllPoints()
	health.bg:SetTexture(normTex)
	health.bg:SetColorTexture(0.3, 0.3, 0.3)
	health.bg:SetVertexColor(0,0,0,1)
	
	--health.PostUpdate = S.PostUpdateHealthRaid
	
	health.frequentUpdates = true
	health.colorDisconnected = false
	health.colorClass = false
	health.colorTapping = false
	health.colorClassNPC = false
	health.colorClassPet = false
	health.colorReaction = false
	health.colorSmooth = false
	health.colorHealth = false

	local name = self.Health:CreateFontString(nil, "OVERLAY")
	name:SetPoint("CENTER",self.Health,"CENTER")
	name:SetFont(font1, 11)
	self:Tag(name, "[getnamecolor][nameshort]")
	self.Name = name

	table.insert(self.__elements, updateThreat)
	self:RegisterEvent("PLAYER_TARGET_CHANGED", updateThreat)
	self:RegisterEvent("UNIT_THREAT_LIST_UPDATE", updateThreat)
	self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", updateThreat)
	
	-- highlight
	local glowBorder = {edgeFile = C["Medias"].Blank, edgeSize = S.Scale(1)}
	local HighlightTarget = CreateFrame("Frame", nil, self)

	HighlightTarget:Point("TOPLEFT", self, "TOPLEFT",-1, 1)
    	HighlightTarget:Point("BOTTOMRIGHT", self, "BOTTOMRIGHT",1,- 1)
	HighlightTarget:SetBackdrop(glowBorder)
	HighlightTarget:SetFrameLevel(self:GetFrameLevel() + 1)
	HighlightTarget:SetBackdropBorderColor(0.4,0.4,0.4,1)
	
	self:RegisterEvent("PLAYER_TARGET_CHANGED", function(self,event,unit)
			if UnitIsUnit("target", self.unit) then
				self.HighlightTarget:SetBackdropBorderColor(1,1,1)
			else
				self.HighlightTarget:SetBackdropBorderColor(0.4,0.4,0.4)
			end
		end)
		
	self.HighlightTarget = HighlightTarget
	
	local Dead = self.Health:CreateFontString(nil, "OVERLAY")
	Dead:Point("BOTTOMRIGHT",self.Health,"BOTTOMRIGHT",-1,0)
	Dead:SetFont(C["Medias"].Font, 11)
	self:Tag(Dead, "[enhdead]")
	self.Dead = Dead
	
	if C["UnitFrames"].showsymbols == true then
		local RaidIcon = health:CreateTexture(nil, "OVERLAY")
		RaidIcon:Height(16)
		RaidIcon:Width(16)
		RaidIcon:SetPoint("CENTER", self, "TOP",0,-1)
		RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\raidicons.blp") -- thx hankthetank for texture
		RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
		self.RaidIcon = RaidIcon
	end
	
	local ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
	ReadyCheck:Height(12)
	ReadyCheck:Width(12)
	ReadyCheck:SetPoint("CENTER",self.Health,"TOP") 	
	self.ReadyCheck = ReadyCheck
	
	if C.Raid.ShowRessurection then
		local Resurrect = CreateFrame("Frame", nil, self.Health)
		Resurrect:SetFrameLevel(self.Health:GetFrameLevel() + 1)
		Resurrect:Size(15)
		Resurrect:SetPoint("BOTTOMLEFT")
		self.Resurrect = Resurrect

		local ResurrectIcon = Resurrect:CreateTexture(nil, "OVERLAY")
		ResurrectIcon:SetAllPoints()
		ResurrectIcon:SetDrawLayer("OVERLAY", 7)
		self.ResurrectIcon = ResurrectIcon
	end
	
	local range = {insideAlpha = 1, outsideAlpha = C["Raid"].RangeAlpha}
	range.Override = function(self,status)
			if status == 'outside' or status == 'offline' then 
				self:SetAlpha(self.Range.outsideAlpha)
			elseif status == 'inside' then
				self:SetAlpha(self.Range.insideAlpha)
			end
	end
	
	self.Range = range
	

	health.Smooth = true
	
	local gw = self.Health:GetWidth()
	local gh = self.Health:GetHeight()
	local mhpb = CreateFrame("StatusBar", nil, self.Health)
	--if C["UnitFrames"].gridhealthvertical then
		mhpb:SetOrientation("VERTICAL")
		mhpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
		mhpb:Width(66)
		mhpb:Height(28)	
	--else
	--	mhpb:SetPoint("TOPLEFT", self.Health:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
	--	mhpb:SetPoint("BOTTOMLEFT", self.Health:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
	--	mhpb:Width(66)
	--end				
	mhpb:SetStatusBarTexture(normTex)
	mhpb:SetStatusBarColor(0, 0.5, 0.15, 1)

	local ohpb = CreateFrame("StatusBar", nil, self.Health)
	--if C["UnitFrames"].gridhealthvertical then
		ohpb:SetOrientation("VERTICAL")
		ohpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
		ohpb:Width(66)
		ohpb:Height(28)
	--else
	--	ohpb:SetPoint("TOPLEFT", self.Health:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
	--	ohpb:SetPoint("BOTTOMLEFT", self.Health:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
	--	ohpb:Width(66)
	--end
	ohpb:SetStatusBarTexture(normTex)
	ohpb:SetStatusBarColor(0, 0.5, 0, 1)
	
	local absb = CreateFrame("StatusBar", nil, self.Health)
	--if C["UnitFrames"].gridhealthvertical then
		absb:SetOrientation("VERTICAL")
		absb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
		absb:Width(66)
		absb:Height(28)				
	--else
	--	absb:SetPoint("TOPLEFT", self.Health:GetStatusBarTexture(), "TOPRIGHT", 0, 0)
	--	absb:SetPoint("BOTTOMLEFT", self.Health:GetStatusBarTexture(), "BOTTOMRIGHT", 0, 0)
	--	absb:SetWidth(66)
	--end
	absb:SetStatusBarTexture(normTex)
	absb:SetStatusBarColor(0.5, 0.5, 0, 1)

	self.HealPrediction = {
		myBar = mhpb,
		otherBar = ohpb,
		absorbBar = absb,
		maxOverflow = 1,
	}

	self.Name:SetParent(absb)

	local vb = CreateFrame("StatusBar", nil, self.Health)
	vb:SetOrientation("VERTICAL")
	vb:SetPoint("TOP")
	vb:Width(66)
	vb:SetHeight(self.Health:GetHeight())
	vb:SetStatusBarTexture(normTex)
	vb:SetStatusBarColor(.6,.5,.5)
	vb:SetReverseFill(1)

	self.VelhariBar = vb
	
	local auras = CreateFrame("Frame", nil, self)
	auras:Point("TOPLEFT", self.Health, 2, -2)
	auras:Point("BOTTOMRIGHT", self.Health, -2, 2)
	auras.presentAlpha = 1
	auras.missingAlpha = 0
	auras.icons = {}
	auras.PostCreateIcon = function(self, icon)
		
		if icon.icon and not icon.hideIcon then
			icon:SetTemplate("Default")
			icon.icon:Point("TOPLEFT", 1, -1)
			icon.icon:Point("BOTTOMRIGHT", -1, 1)
			icon.icon:SetTexCoord(.08, .92, .08, .92)
			icon.icon:SetDrawLayer("ARTWORK")
		end
		
		if (icon.cd) then
			icon.cd:SetReverse()
		end
		
		if icon.overlay then
			icon.overlay:SetTexture()
		end
	end
	
	auras:SetFrameLevel(self.Health:GetFrameLevel()+2)

	if (not C["Raid"].AuraWatchTimers) then
		auras.hideCooldown = true
	end

	local buffs = {}
	
	-- Classbuffs { spell ID, position [, {r,g,b,a}][, anyUnit],stackColors,timers,hideCooldown,hideCount -- 1 bis 8
	-- OBSOLETE: forceOCC,hideIcon,textPoint,textJustH } -- 9 bis 12
	-- For oUF_AuraWatch
	-- stackColors = sorted table, entries are color, at i stacks extraTex is colored stackColors[i]
	-- timers is anb array of entries of the form {time, color}, if time left of the buff is < time, color is applied to extraTex; evaluated left to right
	-- don't use both stackColors and timers, behavior undefined ;)
	-- hideCooldown hides the cooldown sweep animation
	-- hideCount hides the Count made by ouf_aurawatch
	-- forceOCC forces the cooldown count on the cooldown sweep animation
	-- hideIcon hides the icon, the extra texture and the cooldown sweep (only makes sense if used with forceOCC = true)
	-- textPoint,textJust configure the SetPoint and the SetJustifyH for the cooldown text inside the icon
	
	S["UnitFrames"].RaidBuffsTracking["DRUID"] = {
		{774, {"TOPLEFT",-1,1}, {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true,true}, -- Rejuvenation
		{155777, {"TOPLEFT",7,1}, {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true,true}, -- Germination
		--{33763, {"TOPLEFT",1,0}, {0.4, 0.8, 0.2,0},false,{{1,0,0},{1,1,0},{0.4,0.8,0.2}},nil,false,true,true,true,{"TOPLEFT",-1,2},"LEFT"}, -- Lifebloom
		--{33763, {"TOP",0,0}, {0.4, 0.8, 0.2,0},false,nil,nil,true,true,true,true,{"CENTER",0,0},"CENTER"}, -- Lifebloom
		{48438, {"TOPRIGHT",0,1}, {0, 1, 1},false,nil,nil,false}, -- Wild Growth
		{8936, {"TOPLEFT",-1,-7}, {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true,true}, -- Regrowth
		--{18562,{"TOPLEFT",-1,1},{1,1,1},true,nil,nil,true}, -- swiftmend -- SPECIAL DON'T CHANGE THIS (commenting out is ok)
	}
	
	-- S["UnitFrames"].RaidBuffsTracking["PALADIN"] = {
			-- {53563, "TOPLEFT", {0.7, 0.3, 0.7}},	 -- Beacon of Light
			-- {1044, "BOTTOMRIGHT", {0.89, 0.45, 0}, true},	-- Hand of Freedom
			-- {1038, "BOTTOMRIGHT", {0.93, 0.75, 0}, true},	-- Hand of Salvation
			-- {114163, "TOP", {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true}, -- Eternal flame
		-- }
	
	S["UnitFrames"].RaidBuffsTracking["ALL"] = {
		{48707,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Anti-Magic Shell
		{50461,{"TOPRIGHT",2,2},{1,1,1,0},true},-- Anti-Magic Zone
		--{49222,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Bone Shield
		{48792,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Icebound Fortitude
		{55233,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Vampiric Blood
		{22812,{"TOPRIGHT",2,2},{2,2,1,0},true},	-- Barkskin
		{102342,{"TOPRIGHT",2,2},{1,1,1,0},true},   -- IronBark
		{22842,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Frenzied Regeneration
		{61336,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Survival Instincts
		{45438,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Ice Block
		{86659,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Guardian of Ancient Kings
		{31850,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Ardent Defender
		{498,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Divine Protection
		{642,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Divine Shield
		{1022,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Hand of Protection
		{6940,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Hand of Sacrifice
		--{114039,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Hand of Purity
		{47585,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Dispersion
		{47788,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Guardian Spirit
		{33206,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Pain Suppression
		{81782,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Power Word: Barrier
		{31224,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Cloak of Shadows
		{1966,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Feint
		--{30823,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Shamanistic Rage
		{108271,{"TOPRIGHT",2,2},{1,1,1,0},true}, --Astral Shift
		{12975,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Last Stand
		{97463,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Rallying Cry
		{114030,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Vigilance
		{2565,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Shield Block
		{871,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Shield Wall
		{2565,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Shield Block
		{871,{"TOPRIGHT",2,2},{1,1,1,0},true},	-- Shield Wall
		{115203,{"TOPRIGHT",2,2},{1,1,1,0},true}, -- Fortifying Brew
		{115176,{"TOPRIGHT",2,2},{1,1,1,0},true}, -- Zen Meditation
		{116849,{"TOPRIGHT",2,2},{1,1,1,0},true}, -- Lebenskokon
	}
	
	-- some special auras to track that should not get the size of RaidBuffsTracking["ALL"]... otherwise the same
	S["UnitFrames"].RaidBuffsTracking["SPECIAL"] = {
		{144330,{"BOTTOMRIGHT",0,1}, {205/255,133/255,0},true,nil,{{10,{224/255,102/255,1}},{5,{122/255,55/255,139/255,1}}},true,true}, -- Iron prison (Korkron shaman)	
	}
	
	if (S["UnitFrames"].RaidBuffsTracking["SPECIAL"]) then
		for key, value in pairs(S["UnitFrames"].RaidBuffsTracking["SPECIAL"]) do
			tinsert(buffs, value)
		end
	end

	if (S["UnitFrames"].RaidBuffsTracking["ALL"]) then
		for key, value in pairs(S["UnitFrames"].RaidBuffsTracking["ALL"]) do
			tinsert(buffs, value)
		end
	end

	if (S["UnitFrames"].RaidBuffsTracking[S.MyClass]) then
		for key, value in pairs(S["UnitFrames"].RaidBuffsTracking[S.MyClass]) do
			tinsert(buffs, value)
		end
	end

	-- "Cornerbuffs"
	if (buffs) then
		for key, spell in pairs(buffs) do
			local icon = CreateFrame("Frame", nil, auras)
			
			icon.spellID = spell[1]
			icon.anyUnit = spell[4]
			
			icon.stackColors = spell[5]
			icon.timers = spell[6]
			icon.hideCooldown = spell[7]
			icon.hideCount = spell[8]
			icon.onlyShowPresent = true -- could be defined on a per-icon-basis, but not neccessary just yet
			
			icon:Width(6)
			icon:Height(6)
			
			if icon.hideIcon then
				icon:Width(6)
				icon:Height(6)
			end

			local myspell = nil
		
			for _,myspell in pairs(S["UnitFrames"].RaidBuffsTracking["ALL"]) do
				if icon.spellID == myspell[1] then
					icon:Width(15)
					icon:Height(15)
					icon:SetFrameStrata("MEDIUM")
					icon:SetFrameLevel(self.Health:GetFrameLevel()+4)
				end
			end
		
			if type(spell[2]) == "string" then
				icon:Point(spell[2], 0, 0)
			elseif type(spell[2]) == "table" then
				icon:Point(unpack(spell[2]))
			end

			local tex = icon:CreateTexture(nil, "OVERLAY")
			tex:SetAllPoints(icon)
			tex:SetTexture(C.Medias.Blank)
			if (spell[3]) then
				tex:SetVertexColor(unpack(spell[3]))
			else
				tex:SetVertexColor(0.8, 0.8, 0.8)
			end
			
			icon.extraTex = tex
			icon.extraTexColor = spell[3]

			if not icon.hideCount then
				local count = icon:CreateFontString(nil, "OVERLAY")
				count:SetFont(font2, 8, "THINOUTLINE")
				if type(spell[2]) == "string" then
					count:SetPoint("CENTER", unpack(S["UnitFrames"].RaidBuffsTrackingPosition[spell[2]]))
				elseif type(spell[2]) == "table" then
					count:SetPoint("CENTER", unpack(S["UnitFrames"].RaidBuffsTrackingPosition[spell[2][1]]))
				end
				icon.count = count
			end		
			auras.icons[spell[1]] = icon
		end
		
		--reju should overwrite sm	
		if auras.icons[774] and auras.icons[18562] then
			auras.icons[774]:SetFrameLevel(auras.icons[18562]:GetFrameLevel()+1)
		end
	end
	
	self.NotAuraWatch = auras

	-- depending on S.swiftmend_shown we may sometimes need to reload the
	-- mode
	S. swiftmend_shown = false
	if auras.icons[18562] then
		S.swiftmend_shown = true
	end

	S.reload_checks["swiftmend"] = function(event)
		if event ~= "ACTIVE_TALENT_GROUP_CHANGED" and event ~= "PLAYER_TALENT_UPDATE" then
			return false
		elseif S.MyClass ~= "DRUID" then
			return false
		end

		local _,_,_,hasRg,_ = GetTalentInfo(7,3,GetActiveSpecGroup())
		local isResto = (GetSpecialization() == 4)

		local need_swiftmend = isResto and not hasRg

		if S.swiftmend_shown and not need_swiftmend then
			return true
		elseif not S.swiftmend_shown and need_swiftmend then
			return true
		end

		return false
	end
	
	--Text Auras
	S["UnitFrames"].TextAuras = {}
	S["UnitFrames"].TextAuras["DRUID"] ={ 
		{33763,{"TOP",self.Health,0,-1},8}, --Lifebloom
	}
	
	local textbuffs = {}
	
	if (S["UnitFrames"].TextAuras[S.MyClass]) then
		for key, value in pairs(S["UnitFrames"].TextAuras[S.MyClass]) do
			tinsert(textbuffs, value)
		end
	end
	
	local ta = {}
	ta.texts = {}
	for _, spell in ipairs(textbuffs) do
		local text = self.HealPrediction.absorbBar:CreateFontString(nil, "OVERLAY")
		text.spellID = spell[1]
		-- set the dimensions and positions
		text:SetFont("Fonts\\FRIZQT__.TTF", spell[3])--, "THINOUTLINE")
		text:Point(unpack(spell[2]))
		ta.texts[text.spellID] = text
	end
	
	ta.PostResetText = function(watch, text, remain, duration, expires)
		if remain < 3 then --C["Cooldowns"].expiringDuration then
			text:SetTextColor(1,0,0)
		elseif remain <= 0.3 * duration then
			text:SetTextColor(1,1,0)
		else
			text:SetTextColor(0,1,0)
		end
	end
	
	self.TextAuras = ta

	
	-- Raid Debuffs (big middle icon)
	local RaidDebuffs = CreateFrame("Frame", nil, self)
	RaidDebuffs:Height(15)
	RaidDebuffs:Width(15)
	RaidDebuffs:Point("BOTTOMLEFT",auras, -2,-2)
	RaidDebuffs:SetFrameStrata(health:GetFrameStrata())
	RaidDebuffs:SetFrameLevel(health:GetFrameLevel() + 2)
	
	RaidDebuffs:SetTemplate("Default")
	
	RaidDebuffs.icon = RaidDebuffs:CreateTexture(nil, "OVERLAY")
	RaidDebuffs.icon:SetTexCoord(.1,.9,.1,.9)
	RaidDebuffs.icon:Point("TOPLEFT", 2, -2)
	RaidDebuffs.icon:Point("BOTTOMRIGHT", -2, 2)

	RaidDebuffs.cd = CreateFrame("Cooldown", nil, RaidDebuffs,"CooldownFrameTemplate")
	RaidDebuffs.cd:Point("TOPLEFT", 2, -2)
	RaidDebuffs.cd:Point("BOTTOMRIGHT", -2, 2)
	RaidDebuffs.cd.noOCC = true -- remove this line if you want cooldown number on it
	
	RaidDebuffs.count = RaidDebuffs:CreateFontString(nil, "OVERLAY")
	RaidDebuffs.count:SetFont(font2, 9, "THINOUTLINE")
	RaidDebuffs.count:SetPoint("BOTTOMRIGHT", RaidDebuffs, "BOTTOMRIGHT", 0, 2)
	RaidDebuffs.count:SetTextColor(1, .9, 0)
	
	RaidDebuffs.ShowDispelableDebuff = true
	RaidDebuffs.FilterDispellableDebuff = true
	RaidDebuffs.MatchBySpellName = true
	RaidDebuffs.SetDebuffTypeColor = RaidDebuffs.SetBackdropBorderColor
	
	local function SpellName(id)
		local name = select(1, GetSpellInfo(id))
		return name	
	end
		
	RaidDebuffs.Debuffs = {
		--Kargath Bladefist
		[SpellName(159113)] = 1, --Impale
		[SpellName(158986)] = 1, --Berserker Rush  
		
		--The Butcher
		[SpellName(156151)] = 1, --The Tenderizer 
		[SpellName(156147)] = 1, --The cleaver 
		[SpellName(156152)] = 1, --Gushing Wounds
		
		--Tectus
		[SpellName(162346)] = 1, --Crystalline Barrage(Fixate)   
		[SpellName(162370)] = 1, --Crystalline Barrage(Voidzone)
		
		--Brackenspore
		[SpellName(163241)] = 1, --Rot
		[SpellName(160179)] = 1, --Mind Fungus
		
		--Mar'gok
		[SpellName(158605)] = 1, --Mark of Chaos
		[SpellName(164176)] = 1, --Markof Chaos: Displacement
		[SpellName(164178)] = 1, --Mark of Chaos: Fortification
		[SpellName(164191)] = 1, --Mark of Chaos: Replication
		[SpellName(158619)] = 1, --Fetter
		[SpellName(158553)] = 1, --Crush Armor
		[SpellName(157763)] = 1, --Fixate
		[SpellName(156225)] = 1, --Branded
		[SpellName(164004)] = 1, --Branded: Displacement 
		[SpellName(164005)] = 1, --Branded: Fortification 
		[SpellName(164006)] = 1, --Branded: Replication
		[SpellName(159200)] = 1, --Destructive Resonance
		[SpellName(165102)] = 1, --Infinite Darkness

		--------------------------------------------
		--Blackrock Foundry
		-------------------------------------------
		--Blackhand
		[SpellName(156096)] = 1, --MARKEDFORDEATH
		[SpellName(175020)] = 1, --IMPALED
		[SpellName(156047)] = 1, --SLAGGED
		[SpellName(156401)] = 1, --MOLTENSLAG
		[SpellName(156404)] = 1, --BURNED
		[SpellName(158054)] = 1, --SHATTERINGSMASH 158054 155992 159142
		[SpellName(156888)] = 1, --OVERHEATED
		[SpellName(157000)] = 1, --ATTACHSLAGBOMBS
		[SpellName(156772)] = 1, --Incendiary Shot

		--Beastlord Darmac
		[SpellName(155365)] = 1, --PINNEDDOWN
		[SpellName(155061)] = 1, --RENDANDTEAR
		[SpellName(155030)] = 1, --SEAREDFLESH
		[SpellName(155236)] = 1, --CRUSHARMOR
		[SpellName(159044)] = 1, --EPICENTRE
		[SpellName(162276)] = 1, --UNSTEADY Mythic
		[SpellName(155657)] = 1, --FLAMEINFUSION
		[SpellName(155399)] = 2, --Conflagration

		--Flamebender Ka'graz
		[SpellName(155318)] = 1, --LAVASLASH
		[SpellName(155277)] = 1, --BLAZINGRADIANCE
		[SpellName(154952)] = 1, --FIXATE
		[SpellName(155074)] = 1, --CHARRINGBREATH
		[SpellName(163284)] = 1, --RISINGFLAME
		[SpellName(162293)] = 1, --EMPOWEREDARMAMENT

		--Operator Thogar 
		[SpellName(155921)] = 1, --ENKINDLE
		[SpellName(165195)] = 1, --PROTOTYPEPULSEGRENADE
		[SpellName(155701)] = 1, --SERRATEDSLASH
		[SpellName(156310)] = 1, --LAVASHOCK
		[SpellName(164380)] = 1, --BURNING

		--The Blast Furnace
		[SpellName(155240)] = 1, --TEMPERED
		[SpellName(155242)] = 1, --HEAT
		[SpellName(176133)] = 1, --BOMB
		[SpellName(156934)] = 1, --RUPTURE
		[SpellName(175104)] = 1, --MELTARMOR
		[SpellName(176121)] = 1, --VOLATILEFIRE
		[SpellName(158702)] = 1, --FIXATE
		[SpellName(155225)] = 1, --MELT

		--Hans'gar and Franzok 
		[SpellName(157139)] = 1, --SHATTEREDVERTEBRAE
		[SpellName(161570)] = 1, --SEARINGPLATES
		[SpellName(157853)] = 1, --AFTERSHOCK

		--Gruul
		[SpellName(155080)] = 1, --INFERNOSLICE
		[SpellName(143962)] = 1, --INFERNOSTRIKE 
		[SpellName(155078)] = 1, --OVERWHELMINGBLOWS
		[SpellName(36240)] = 1, --CAVEIN
		[SpellName(165300)] = 1, --FLARE Mythic

		--Kromog
		[SpellName(157060)] = 1, --RUNEOFGRASPINGEARTH
		[SpellName(156766)] = 1, --WARPEDARMOR
		[SpellName(161839)] = 1, --RUNEOFCRUSHINGEARTH

		--Oregorger
		[SpellName(156309)] = 1, --ACIDTORRENT
		[SpellName(156203)] = 1, --RETCHEDBLACKROCK
		--[SpellName(EXPLOSIVESHARD)] = 1,
		[SpellName(173471)] = 1, --ACIDMAW

		--The Iron Maidens
		[SpellName(164271)] = 1, --PENETRATINGSHOT
		[SpellName(158315)] = 1, --DARKHUNT
		[SpellName(156601)] = 1, --SANGUINESTRIKES
		[SpellName(170395)] = 1, --SORKASPREY
		[SpellName(170405)] = 1, --MARAKSBLOODCALLING
		[SpellName(158692)] = 1, --DEADLYTHROW
		[SpellName(158702)] = 1, --FIXATE
		[SpellName(158686)] = 1, --EXPOSEARMOR
		[SpellName(158683)] = 1, --CORRUPTEDBLOOD
		
		
		--HELLFIRE CITADEL
		--Iron Reaver
		[SpellName(182001)]=1,--Unstable Orb
		
		--Kormrok
		[SpellName(181306)]=1,--Explosive Burst
		[SpellName(181321)]=1,--Fel Touch
		
		--Hellfire High Council
		[SpellName(184450)]=1,--Mark of the Necromancer
		[SpellName(184358)]=1,--Fel Rage
		[SpellName(184355)]=1,--Bloodboil
		
		--Kilrogg Deadeye
		[SpellName(180372)]=1,--Heart Seeker
		--[SpellName(182159)]=1,--Fel Corruption
		
		--Gorefiend
		[SpellName(179864)]=1,--Shadow of Death
		[SpellName(179978)]=1,--Touch of Doom
		[SpellName(179909)]=1,--Shared Fate
		
		--
		--Shadow-Lord Iskar
		[SpellName(179202)]=1,--Eye of Anzu
		--[SpellName(182173)]=1,--Fel Chakram
		--
		--Iskar only phase
		[SpellName(182323)]=2,--Phantasmal Wounds
		[SpellName(185747)]=3,--Fel Incineration
		[SpellName(181956)]=4,--Phantasmal Winds
		--
		--Add Phase
		[SpellName(185510)]=3,--Dark Bindings (Mythic)
		[SpellName(181753)]=4,--Fel Bomb
		--[SpellName(179219)]=3,--Phantasmal Fel Bomb
		--
		
		--Socrethar the Eternal
		[SpellName(182038)]=1,--Shattered Defenses
		[SpellName(184239)]=1,--Shadow Word: Agony
		[SpellName(188666)]=1,--Eternal Hunger
		[SpellName(189541)]=1,--Overwhelming Power

		--Fel Lord Zakuun
		[SpellName(181508)]=1,--Seed of Destruction
		[SpellName(179620)]=1,--Fel Crystal
		[SpellName(179711)]=1,--Befouled
		[SpellName(179407)]=1,--Disembodied
		
		--Xhul'horac
		[SpellName(186490)]=1,--Chains of Fel
		[SpellName(186546)]=1,--Black Hole
		[SpellName(186407)]=1,--Fel Surge
		[SpellName(186333)]=1,--Void Surge

		--Tyrant Velhari
		[SpellName(180166)]=1,--Touch of Harm
		[SpellName(180128)]=1,--Edict of Condemnation

		--Mannoroth
		[SpellName(181099)]=1,--Mark of Doom
		[SpellName(181597)]=1,--Mannoroth's Gaze
		[SpellName(182112)]=1,--Shadow Force
		[SpellName(186362)]=1,--Wrath of Guldan
		
		--Archimonde
		[SpellName(185590)]=1,--Desecrate
		[SpellName(183864)]=1,--Shadow Blast
		[SpellName(189897)]=1,--Doomfire
		--[SpellName(184265)]=1,--Wrought Chaos
		--[SpellName(185014)]=1,--Focused Chaos
		[SpellName(184931)]=1,--Shackled Torment

	}

	-- S.ReverseTimer = {

	-- }
	
	--ORD:RegisterDebuffs(S["UnitFrames"].DebuffIDs)
	self.RaidDebuffs = RaidDebuffs

	return self
end

local point = "LEFT"
local columnAnchorPoint = "TOP"
local pa1, pa2, px, py = "TOPLEFT", "BOTTOMLEFT", 0, -3

-- if C.UnitFrames.gridvertical then
	-- point = "TOP"
	-- columnAnchorPoint = "LEFT"
	-- pa1, pa2, px, py = "TOPLEFT", "TOPRIGHT", 3, 0
-- end

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
	"initial-width", S.Scale(66),
	"initial-height", S.Scale(28),
	"showParty", true,
	"showRaid", true,
	"showPlayer", true,
	"showSolo", true,
	"xoffset", S.Scale(3),
	"yOffset", S.Scale(-3),
	"point", point,
	"groupFilter", "1,2,3,4,5,6,7,8",
	"groupingOrder", "1,2,3,4,5,6,7,8",
	"groupBy", "GROUP",
	"maxColumns", 8,
	"unitsPerColumn", 5,
	"columnSpacing", S.Scale(3),
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
	"columnSpacing", S.Scale(3),
	"columnAnchorPoint", columnAnchorPoint,
	"yOffset", S.Scale(-3),
	"xOffset", S.Scale(3),
	"initial-width", S.Scale(66),
	"initial-height", S.Scale(28),
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
	SanUIRaid:ClearAllPoints()
	SanUIRaid:SetPoint("CENTER",UIParent,0,-195)

	local pet = oUF:SpawnHeader(GetPetFrameAttributes())
	pet:Point(pa1, raid, pa2, px, py)
	
	hooksecurefunc(S.Panels,"Enable",function()
		raid:SetParent(S["Panels"].PetBattleHider)
		pet:SetParent(S["Panels"].PetBattleHider)
	end)
	
	-- Max number of group according to Instance max players
	local ten = "1,2"
	local twentyfive = "1,2,3,4,5"
	local forty = "1,2,3,4,5,6,7,8"
	local twenty = "1,2,3,4"

	local MaxGroup = CreateFrame("Frame", "SanUIRaidMaxGroup")
	MaxGroup:RegisterEvent("PLAYER_ENTERING_WORLD")
	MaxGroup:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	MaxGroup:SetScript("OnEvent", function(self, event)
		if InCombatLockdown() then
		print("registering regen_enabled")
			MaxGroup:RegisterEvent("PLAYER_REGEN_ENABLED")
			return
		end
		
		if event == "PLAYER_REGEN_ENABLED" then
		print("unregistering regen_enabled")
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
			if C.UnitFrames.showraidpets then
				SanUIRaidPets:SetAttribute("groupFilter", "1,2,3,4,5,6,7,8")
			end
		end
	end)
end)
