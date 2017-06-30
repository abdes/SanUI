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
	
	S["UnitFrames"].RaidBuffsTracking["PRIEST"] = {
		{41635, "BOTTOMRIGHT", {0.2, 0.7, 0.2}},     -- Prayer of Mending
		{139, "BOTTOMLEFT", {0.4, 0.7, 0.2}},        -- Renew
		{17, "TOPLEFT", {1, 1, 1}, false, nil, nil, false},        -- Power Word: Shield
		{194384, "TOPLEFT", {0.4, 0.8, 0.2}, true, nil, {{6,{1,1,0}},{3,{1,0,0}}}, true},     -- Atonement
	}
	
	-- S["UnitFrames"].RaidBuffsTracking["PALADIN"] = {
			-- {53563, "TOPLEFT", {0.7, 0.3, 0.7}},	 -- Beacon of Light
			-- {1044, "BOTTOMRIGHT", {0.89, 0.45, 0}, true},	-- Hand of Freedom
			-- {1038, "BOTTOMRIGHT", {0.93, 0.75, 0}, true},	-- Hand of Salvation
			-- {114163, "TOP", {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true}, -- Eternal flame
		-- }
	
	S["UnitFrames"].RaidBuffsTracking["ALL"] = {
		--Mage
		{45438 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ice Block
		--{115610, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Temporal Shield
	--Death Knight
		{48797 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Anti-Magic Shell
		{48792 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Icebound Fortitude
		{87256 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dancing Rune Weapon
		{55233 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Vampiric Blood
		{50461 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Anti-Magic Zone
		{194679, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Rune Tap
	--Priest
		{33206 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Pain Suppression
		{47788 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guardian Spirit
		{81782 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Power Word: Barrier
		{47585 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dispersion
	--Warlock
		{104773, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Unending Resolve
		--{110913, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dark Bargain
		{108359, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dark Regeneration
	--Druid
		{22812 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Barkskin
		{102342, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ironbark
		{61336 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Survival Instincts
	--Hunter
		{19263 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Deterrence
		{53480 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Roar of Sacrifice (Cunning)
	--Rogue
		{1966  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Feint
		{31224 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Cloak of Shadows
		{74001 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Combat Readiness
		{5277  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Evasion
		{45182 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Cheating Death
	--Shaman
		{98007 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Spirit Link Totem
	--Paladin
		{1022  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Hand of Protection
		{6940  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Hand of Sacrifice
		{31821 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Devotion Aura
		{498   , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Divine Protection
		{642   , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Divine Shield
		{86659 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guardian of the Ancient Kings (Prot)
		{31850 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ardent Defender
	--Warrior
		{118038, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Die by the Sword
		{97463 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Rallying Cry
		{12975 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Last Stand
		{871   , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Shield Wall
		{122973, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Safeguard
		{228920, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ravager
	--Monk
		{120954, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Fortifying Brew
		{122783, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Diffuse Magic
		{122278, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dampen Harm
		{116849, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Life Cocoon
	--Racial
		{20594 , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Stoneform
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
			
			icon.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers
			
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
		
		--power word shield should overwrite atonement
		if auras.icons[194384] and auras.icons[17] then
			auras.icons[17]:SetFrameLevel(auras.icons[194384]:GetFrameLevel()+1)
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

		-- Position and size
	local RaidIcon = self.Health:CreateTexture(nil, 'OVERLAY')
	RaidIcon:SetSize(14, 14)
	RaidIcon:SetPoint('TOP', self,12,5)

	-- Register it with oUF
	self.RaidIcon = RaidIcon
	
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
	RaidDebuffs.cd.noCooldownCount = true -- needed for tullaCC to not show cooldown numbers
	
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
				[SpellName(209858)] = 1, -- Necrotic Mythic+
				[SpellName(228796)] = 6, -- Ignite Soul (Nightbane)
				[SpellName(80051)] = 1, -- Grievous Wound Mythic+
 
	-- Legion
		-- The Nighthold
			-- Skorpyron
				[SpellName(204766)] = 1, -- Energy Surge
				[SpellName(214718)] = 1, -- Acidic Fragments
				[SpellName(211801)] = 1, -- Volatile Fragments
				[SpellName(204284)] = 1, -- Broken Shard (Protection)
				[SpellName(204275)] = 1, -- Arcanoslash (Tank)
				[SpellName(211659)] = 1, -- Arcane Tether (Tank debuff)
				[SpellName(204483)] = 1, -- Focused Blast (Stun)

			-- Chronomatic Anomaly
				[SpellName(206607)] = 1, -- Chronometric Particles (Tank stack debuff)
				[SpellName(207051)] = 5, 
				[SpellName(207052)] = 5, 
				[SpellName(206608)] = 5,
				[SpellName(206609)] = 5, -- Time Release (Heal buff/debuff)
				[SpellName(206610)] = 5,
				[SpellName(219964)] = 5, -- green
				[SpellName(219965)] = 5, -- yellow
				[SpellName(219966)] = 5, -- red
				[SpellName(205653)] = 1, -- Passage of Time
				[SpellName(206617)] = 1, -- Time Bomb
				[SpellName(207871)] = 1, -- Vortex (Mythic)
				[SpellName(212099)] = 1, -- Temporal Charge

			-- Trilliax
				[SpellName(206488)] = 1, -- Arcane Seepage
				[SpellName(206641)] = 1, -- Arcane Spear (Tank)
				--[SpellName(206798)] = 1, -- Toxic Slice
				[SpellName(214672)] = 1, -- Annihilation
				--[SpellName(214573)] = 1, -- Stuffed
				[SpellName(214583)] = 1, -- Sterilize
				[SpellName(208910)] = 1, -- Arcing Bonds
				[SpellName(206838)] = 1, -- Succulent Feast

			-- Spellblade Aluriel
				[SpellName(212492)] = 1, -- Annihilate (Tank)
				[SpellName(212494)] = 1, -- Annihilated (Main Tank debuff)
				[SpellName(212587)] = 1, -- Mark of Frost
				[SpellName(212531)] = 1, -- Mark of Frost (marked)
				[SpellName(212530)] = 1, -- Replicate: Mark of Frost
				[SpellName(212647)] = 1, -- Frostbitten
				[SpellName(212736)] = 1, -- Pool of Frost
				[SpellName(213085)] = 1, -- Frozen Tempest
				[SpellName(213621)] = 1, -- Entombed in Ice
				[SpellName(213148)] = 1, -- Searing Brand Chosen
				[SpellName(213181)] = 1, -- Searing Brand Stunned
				[SpellName(213166)] = 1, -- Searing Brand
				[SpellName(213278)] = 1, -- Burning Ground
				[SpellName(213504)] = 1, -- Arcane Fog

			-- Tichondrius
				[SpellName(206480)] = 1, -- Carrion Plague
				[SpellName(215988)] = 1, -- Carrion Nightmare
				[SpellName(208230)] = 1, -- Feast of Blood
				--[SpellName(212794)] = 1, -- Brand of Argus
				[SpellName(216685)] = 1, -- Flames of Argus
				--[SpellName(206311)] = 1, -- Illusionary Night
				--[SpellName(206466)] = 1, -- Essence of Night
				[SpellName(216024)] = 1, -- Volatile Wound
				[SpellName(216027)] = 1, -- Nether Zone
				[SpellName(216039)] = 1, -- Fel Storm
				[SpellName(216726)] = 1, -- Ring of Shadows
				[SpellName(216040)] = 1, -- Burning Soul

			-- Krosus
				[SpellName(206677)] = 1, -- Searing Brand
				[SpellName(205344)] = 1, -- Orb of Destruction

			-- High Botanist Tel'arn
				[SpellName(218503)] = 1, -- Recursive Strikes (Tank)
				[SpellName(219235)] = 1, -- Toxic Spores
				[SpellName(218809)] = 1, -- Call of Night
				[SpellName(218342)] = 1, -- Parasitic Fixate
				[SpellName(218304)] = 1, -- Parasitic Fetter
				[SpellName(218780)] = 1, -- Plasma Explosion

			-- Star Augur Etraeus
				[SpellName(205984)] = 1, -- Gravitaional Pull
				[SpellName(214167)] = 1, -- Gravitaional Pull
				[SpellName(214335)] = 1, -- Gravitaional Pull
				[SpellName(206936)] = 1, -- Icy Ejection
				[SpellName(206388)] = 1, -- Felburst
				[SpellName(206585)] = 1, -- Absolute Zero
				[SpellName(206398)] = 1, -- Felflame
				--[SpellName(206589)] = 1, -- Chilled
				[SpellName(205649)] = 1, -- Fel Ejection
				[SpellName(206965)] = 1, -- Voidburst
				[SpellName(206464)] = 1, -- Coronal Ejection
				[SpellName(207143)] = 1, -- Void Ejection
				[SpellName(206603)] = 1, -- Frozen Solid
				[SpellName(207720)] = 1, -- Witness the Void
				[SpellName(216697)] = 1, -- Frigid Pulse

			-- Grand Magistrix Elisande
				--[SpellName(209166)] = 1, -- Fast Time
				--[SpellName(209165)] = 1, -- Slow Time
				[SpellName(211887)] = 1, -- Ablated
				[SpellName(209615)] = 1, -- Ablation
				[SpellName(209244)] = 1, -- Delphuric Beam
				[SpellName(209598)] = 1, -- Conflexive Burst
				[SpellName(209433)] = 1, -- Spanning Singularity
				[SpellName(209973)] = 1, -- Ablating Explosion
				[SpellName(209549)] = 1, -- Lingering Burn
				[SpellName(211261)] = 1, -- Permaliative Torment
				[SpellName(208659)] = 1, -- Arcanetic Ring

			-- Gul'dan
				--[SpellName(210339)] = 1, -- Time Dilation
				[SpellName(180079)] = 1, -- Felfire Munitions
				[SpellName(206875)] = 1, -- Fel Obelisk (Tank)
				[SpellName(206840)] = 1, -- Gaze of Vethriz
				[SpellName(206896)] = 1, -- Torn Soul
				[SpellName(206221)] = 1, -- Empowered Bonds of Fel
				[SpellName(208802)] = 1, -- Soul Corrosion
				[SpellName(212686)] = 1, -- Flames of Sargeras
				[SpellName(209270)] = 1, -- Eye of Gul'dan
				[SpellName(211152)] = 1, -- Empowered Eye of Gul'dan
				[SpellName(206847)] = 1, -- Parasitic Wound (Mythic)
				[SpellName(206458)] = 1, -- Sheared Soul (Mythic)
				[SpellName(206506)] = 1, -- Severed Soul (Mythic)
				[SpellName(221408)] = 1, -- Bulwark of Azzinoth (Mythic)
				[SpellName(221337)] = 1, -- Chaos Seed (Mythic)
				
		-- Trials of Valor
				[SpellName(228250)] = 1, -- Shadow Lick (Guarm)
				[SpellName(228226)] = 1, -- Flame Lick (Guarm)
				[SpellName(227514)] = 1, -- Flashin Fangs (Guarm)
				[SpellName(228744)] = 1, -- Flaming Volatile Foam (Guarm)
				[SpellName(228810)] = 1, -- Briney Volatile Foam (Guarm)
				[SpellName(228818)] = 1, -- Shadowy Volatile Foam (Guarm)
				[SpellName(193367)] = 1, -- Fetid Rot (Helya)
				[SpellName(202476)] = 1, -- Rabid (Helya)
				[SpellName(232450)] = 1, -- Corrupted Axion (Helya)
		-- The Emerald Nightmare
			-- Nythendra
				--[SpellName(204504)] = 1, -- Infested
				[SpellName(205043)] = 5, -- Infested mind
				[SpellName(203096)] = 1, -- Rot
				[SpellName(204463)] = 1, -- Volatile Rot
				[SpellName(203045)] = 1, -- Infested Ground
				[SpellName(203646)] = 1, -- Burst of Corruption

			-- Elerethe Renferal
				[SpellName(210228)] = 1, -- Dripping Fangs
				[SpellName(215288)] = 1, -- Web of Pain
				[SpellName(215460)] = 1, -- Necrotic Venom
				[SpellName(213124)] = 1, -- Venomous Pool
				[SpellName(210850)] = 1, -- Twisting Shadows
				[SpellName(215489)] = 1, -- Venomous Pool

			-- Il'gynoth, Heart of the Corruption
				[SpellName(213162)] = 1, -- Nightmare Blast
				[SpellName(212681)] = 1, -- Cleansed Ground
				[SpellName(210315)] = 1, -- Nightmare Brambles
				[SpellName(211507)] = 1, -- Nightmare Javelin
				[SpellName(211471)] = 1, -- Scorned Touch
				[SpellName(208697)] = 1, -- Mind Flay
				[SpellName(215143)] = 1, -- Cursed Blood

			-- Ursoc
				--[SpellName(198108)] = 1, -- Momentum
				[SpellName(197943)] = 1, -- Overwhelm
				[SpellName(204859)] = 1, -- Rend Flesh
				--[SpellName(205611)] = 1, -- Miasma
				[SpellName(198006)] = 1, -- Focused Gaze
				[SpellName(197980)] = 1, -- Nightmarish Cacophony

			-- Dragons of Nightmare
				--[SpellName(203102)] = 1, -- Mark of Ysondre
				--[SpellName(203121)] = 1, -- Mark of Taerar
				--[SpellName(203125)] = 1, -- Mark of Emeriss
				--[SpellName(203124)] = 1, -- Mark of Lethon
				--[SpellName(204731)] = 1, -- Wasting Dread
				[SpellName(203110)] = 5, -- Slumbering Nightmare
				[SpellName(207681)] = 5, -- Nightmare Bloom
				[SpellName(205341)] = 6, -- Sleeping Fog
				[SpellName(203770)] = 8, -- Defiled Vines
				[SpellName(203787)] = 5, -- Volatile Infection
				[SpellName(204044)] = -1, -- Shadow Burst

			-- Cenarius
				--[SpellName(210279)] = 1, -- Creeping Nightmares
				[SpellName(213162)] = 1, -- Nightmare Blast
				[SpellName(210315)] = 1, -- Nightmare Brambles
				[SpellName(212681)] = 1, -- Cleansed Ground
				[SpellName(211507)] = 1, -- Nightmare Javelin
				[SpellName(211471)] = 1, -- Scorned Touch
				[SpellName(211612)] = 1, -- Replenishing Roots
				[SpellName(216516)] = 1, -- Ancient Dream

			-- Xavius
				[SpellName(206005)] = 1, -- Dream Simulacrum
				[SpellName(206651)] = 1, -- Darkening Soul
				[SpellName(209158)] = 1, -- Blackening Soul
				[SpellName(211802)] = 1, -- Nightmare Blades
				[SpellName(206109)] = 1, -- Awakening to the Nightmare
				[SpellName(209034)] = 1, -- Bonds of Terror
				[SpellName(210451)] = 1, -- Bonds of Terror
				[SpellName(208431)] = 1, -- Corruption: Descent into Madness
				[SpellName(207409)] = 1, -- Madness
				[SpellName(211634)] = 1, -- The Infinite Dark
				[SpellName(208385)] = 1, -- Tainted Discharge
				
			-- Tomb of Sargeras
			-- Goroth
				[SpellName(233279)] = 1, -- Shattering Star
				[SpellName(230345)] = 1, -- Crashing Comet
				[SpellName(231363)] = 1, -- Burning Armor

			-- Demonic Inquisition
				[SpellName(233430)] = 1, -- Ubearable Torment
				[SpellName(233983)] = 1, -- Echoing Anguish

			-- Harjatan
				[SpellName(231770)] = 1, -- Drenched
				[SpellName(231998)] = 1, -- Jagged Abrasion

			-- Sisters of the Moon
				[SpellName(236603)] = 1, -- Rapid Shot
				--SpellName(234996)] = 1, -- Umbra Suffusion
				--[SpellName(234995)] = 1, -- Lunar Suffusion
				[SpellName(236519)] = 1, -- Moon Burn
				[SpellName(236697)] = 1, -- Deathly Screech
				[SpellName(236550)] = 1, -- Lunar Fire
				[SpellName(233263)] = 1, -- Embrace of the eclipse

			-- Mistress Sassz'ine
				[SpellName(230959)] = 1, -- Concealing Murk
				[SpellName(232722)] = 1, -- Slicing Tornado
				[SpellName(232913)] = 1, -- Befouling Ink
				--[SpellName(234621)] = 1, -- Devouring Maw
				[SpellName(230201)] = 1, -- Burden of Pain

			-- The Desolate Host
				[SpellName(236072)] = 1, -- Wailing Souls
				[SpellName(236449)] = 1, -- Soulbind
				[SpellName(236515)] = 1, -- Shattering Scream
				[SpellName(235989)] = 1, -- Tormented Cries

			-- Maiden of Vigilance
				[SpellName(235117)] = 1, -- Unstable Soul
				[SpellName(235534)] = 1, -- Creator's Grace
				[SpellName(235538)] = 1, -- Demon's Vigor
				[SpellName(234891)] = 1, -- Wrath of the Creators
				[SpellName(235569)] = 1, -- Hammer of Creation
				[SpellName(235573)] = 1, -- Hammer of Obliteration

			-- Kil'jaeden
				[SpellName(238999)] = 1, -- Darkness of a Thousand Souls
				[SpellName(239155)] = 1, -- Gravity Squeeze
				[SpellName(234295)] = 1, -- Armageddon Rain
				[SpellName(240908)] = 1, -- Armageddon Blast
				[SpellName(239932)] = 1, -- Felclaws
				[SpellName(240911)] = 1, -- Armageddon Hail
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
			filter = forty
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
