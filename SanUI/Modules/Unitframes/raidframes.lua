-- File originally written by Tukz of Tukui (see general SanUI credits). Lots of changes
-- by me, so never bug Tukz about any problem with this, please.

local S,C,L = unpack(SanUI) 
local oUF = TukuiUnitFrameFramework

local font2 = C["Medias"].UnitFrameFont
local font1 = C["Medias"].Font
local normTex = C["Medias"].Blank
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

oUF.Tags.Events['getnamecolor'] = 'UNIT_POWER_UPDATE'
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
	range.PostUpdate = function(self, object, inRange, checkedRange, connected)
		if not connected then 
			object:SetAlpha(self.outsideAlpha)
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

	self.HealthPrediction = {
		myBar = mhpb,
		otherBar = ohpb,
		absorbBar = absb,
		maxOverflow = 1,
	}

	self.Name:SetParent(absb)
	
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
	
	--[[
	S["UnitFrames"].RaidBuffsTracking["PRIEST"] = {
		{41635, "BOTTOMRIGHT", {0.2, 0.7, 0.2}},     -- Prayer of Mending
		{139, "BOTTOMLEFT", {0.4, 0.7, 0.2}},        -- Renew
		{17, "TOPLEFT", {1, 1, 1}, false, nil, nil, false},        -- Power Word: Shield
		{194384, "TOPLEFT", {0.4, 0.8, 0.2}, false, nil, {{6,{1,1,0}},{3,{1,0,0}}}, true},     -- Atonement
	}
	
	S["UnitFrames"].RaidBuffsTracking["PALADIN"] = {
			{53563, "TOPLEFT", {0.7, 0.3, 0.7}},	 -- Beacon of Light
			{156910, "TOPLEFT", {0.7, 0.3, 0.7}},	 -- Beacon of Faith
			--{1044, "BOTTOMRIGHT", {0.89, 0.45, 0}, true},	-- Hand of Freedom
			--{1038, "BOTTOMRIGHT", {0.93, 0.75, 0}, true},	-- Hand of Salvation
			--{114163, "TOP", {0.4, 0.8, 0.2},false,nil,{{6,{1,1,0}},{3,{1,0,0}}},true}, -- Eternal flame
			{25771, "TOP", {0.6, 0.4, 0.2}, true, nil, nil, true}
		}
		]]
	
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
		{1022  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Blessing of Protection
		{6940  , {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Blessing of Sacrifice
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
		--{144330,{"BOTTOMRIGHT",0,1}, {205/255,133/255,0},true,nil,{{10,{224/255,102/255,1}},{5,{122/255,55/255,139/255,1}}},true,true}, -- Iron prison (Korkron shaman)	
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
		local text = self.HealthPrediction.absorbBar:CreateFontString(nil, "OVERLAY")
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
	--BFA Dungeons
		--Freehold
		[SpellName(258323)] = 1, -- Infected Wound
		[SpellName(257775)] = 1, -- Plague Step
		[SpellName(257908)] = 1, -- Oiled Blade
		[SpellName(257436)] = 1, -- Poisoning Strike
		[SpellName(274389)] = 1, -- Rat Traps
		[SpellName(274555)] = 1, -- Scabrous Bites
		[SpellName(258875)] = 1, -- Blackout Barrel
		[SpellName(256363)] = 1, -- Ripper Punch
		
		--Shrine of the Storm
		[SpellName(264560)] = 1, -- Choking Brine
		[SpellName(268233)] = 1, -- Electrifying Shock
		[SpellName(268322)] = 1, -- Touch of the Drowned
		[SpellName(268896)] = 1, -- Mind Rend
		[SpellName(268104)] = 1, -- Explosive Void
		[SpellName(267034)] = 1, -- Whispers of Power
		[SpellName(276268)] = 1, -- Heaving Blow
		[SpellName(264166)] = 1, -- Undertow
		[SpellName(264526)] = 1, -- Grasp of the Depths
		[SpellName(274633)] = 1, -- Sundering Blow
		[SpellName(268214)] = 1, -- Carving Flesh
		[SpellName(267818)] = 1, -- Slicing Blast
		[SpellName(268309)] = 1, -- Unending Darkness
		[SpellName(268317)] = 1, -- Rip Mind
		[SpellName(268391)] = 1, -- Mental Assault
		[SpellName(274720)] = 1, -- Abyssal Strike

		--Siege of Boralus
		[SpellName(257168)] = 1, -- Cursed Slash
		[SpellName(272588)] = 1, -- Rotting Wounds
		[SpellName(272571)] = 1, -- Choking Waters
		[SpellName(274991)] = 1, -- Putrid Waters
		[SpellName(275835)] = 1, -- Stinging Venom Coating
		[SpellName(273930)] = 1, -- Hindering Cut
		[SpellName(257292)] = 1, -- Heavy Slash
		[SpellName(261428)] = 1, -- Hangman's Noose
		[SpellName(256897)] = 1, -- Clamping Jaws
		[SpellName(272874)] = 1, -- Trample
		[SpellName(273470)] = 1, -- Gut Shot
		[SpellName(272834)] = 1, -- Viscous Slobber
		[SpellName(257169)] = 1, -- Terrifying Roar
		[SpellName(272713)] = 1, -- Crushing Slam
		
		-- Tol Dagor
		[SpellName(258128)] = 1, -- Debilitating Shout
		[SpellName(265889)] = 1, -- Torch Strike
		[SpellName(257791)] = 1, -- Howling Fear
		[SpellName(258864)] = 1, -- Suppression Fire
		[SpellName(257028)] = 1, -- Fuselighter
		[SpellName(258917)] = 1, -- Righteous Flames
		[SpellName(257777)] = 1, -- Crippling Shiv
		[SpellName(258079)] = 1, -- Massive Chomp
		[SpellName(258058)] = 1, -- Squeeze
		[SpellName(260016)] = 1, -- Itchy Bite
		[SpellName(257119)] = 1, -- Sand Trap
		[SpellName(260067)] = 1, -- Vicious Mauling
		[SpellName(258313)] = 1, -- Handcuff
		[SpellName(259711)] = 1, -- Lockdown
		[SpellName(256198)] = 1, -- Azerite Rounds: Incendiary
		[SpellName(256101)] = 1, -- Explosive Burst
		[SpellName(256044)] = 1, -- Deadeye
		[SpellName(256474)] = 1, -- Heartstopper Venom
		
		--Waycrest Manor
		[SpellName(260703)] = 1, -- Unstable Runic Mark
		[SpellName(263905)] = 1, -- Marking Cleave
		[SpellName(265880)] = 1, -- Dread Mark
		[SpellName(265882)] = 1, -- Lingering Dread
		[SpellName(264105)] = 1, -- Runic Mark
		[SpellName(264050)] = 1, -- Infected Thorn
		[SpellName(261440)] = 1, -- Virulent Pathogen
		[SpellName(263891)] = 1, -- Grasping Thorns
		[SpellName(264378)] = 1, -- Fragment Soul
		[SpellName(266035)] = 1, -- Bone Splinter
		[SpellName(266036)] = 1, -- Drain Essence
		[SpellName(260907)] = 1, -- Soul Manipulation
		[SpellName(260741)] = 1, -- Jagged Nettles
		[SpellName(264556)] = 1, -- Tearing Strike
		[SpellName(265760)] = 1, -- Thorned Barrage
		[SpellName(260551)] = 1, -- Soul Thorns
		[SpellName(263943)] = 1, -- Etch
		[SpellName(265881)] = 1, -- Decaying Touch
		[SpellName(261438)] = 1, -- Wasting Strike
		[SpellName(268202)] = 1, -- Death Lens
		
		-- Atal'Dazar
		[SpellName(252781)] = 1, -- Unstable Hex
		[SpellName(250096)] = 1, -- Wracking Pain
		[SpellName(250371)] = 1, -- Lingering Nausea
		[SpellName(253562)] = 1, -- Wildfire
		[SpellName(255582)] = 1, -- Molten Gold
		[SpellName(255041)] = 1, -- Terrifying Screech
		[SpellName(255371)] = 1, -- Terrifying Visage
		[SpellName(252687)] = 1, -- Venomfang Strike
		[SpellName(254959)] = 1, -- Soulburn
		[SpellName(255814)] = 1, -- Rending Maul
		[SpellName(255421)] = 1, -- Devour
		[SpellName(255434)] = 1, -- Serrated Teeth
		[SpellName(256577)] = 1, -- Soulfeast
		
		--King's Rest
		[SpellName(270492)] = 1, -- Hex
		[SpellName(267763)] = 1, -- Wretched Discharge
		[SpellName(276031)] = 1, -- Pit of Despair
		[SpellName(265773)] = 1, -- Spit Gold
		[SpellName(270920)] = 1, -- Seduction
		[SpellName(270865)] = 1, -- Hidden Blade
		[SpellName(271564)] = 1, -- Embalming Fluid
		[SpellName(270507)] = 1, -- Poison Barrage
		[SpellName(267273)] = 1, -- Poison Nova
		[SpellName(270003)] = 1, -- Suppression Slam
		[SpellName(270084)] = 1, -- Axe Barrage
		[SpellName(267618)] = 1, -- Drain Fluids
		[SpellName(267626)] = 1, -- Dessication
		[SpellName(270487)] = 1, -- Severing Blade
		[SpellName(266238)] = 1, -- Shattered Defenses
		[SpellName(266231)] = 1, -- Severing Axe
		[SpellName(266191)] = 1, -- Whirling Axes
		[SpellName(272388)] = 1, -- Shadow Barrage
		[SpellName(271640)] = 1, -- Dark Revelation
		[SpellName(268796)] = 1, -- Impaling Spear
		
		--Motherlode
		[SpellName(263074)] = 1, -- Festering Bite
		[SpellName(280605)] = 1, -- Brain Freeze
		[SpellName(257337)] = 1, -- Shocking Claw
		[SpellName(270882)] = 1, -- Blazing Azerite
		[SpellName(268797)] = 1, -- Transmute: Enemy to Goo
		[SpellName(259856)] = 1, -- Chemical Burn
		[SpellName(269302)] = 1, -- Toxic Blades
		[SpellName(280604)] = 1, -- Iced Spritzer
		[SpellName(257371)] = 1, -- Tear Gas
		[SpellName(257544)] = 1, -- Jagged Cut
		[SpellName(268846)] = 1, -- Echo Blade
		[SpellName(262794)] = 1, -- Energy Lash
		[SpellName(262513)] = 1, -- Azerite Heartseeker
		[SpellName(260829)] = 1, -- Homing Missle (travelling)
		[SpellName(260838)] = 1, -- Homing Missle (exploded)
		[SpellName(263637)] = 1, -- Clothesline
		
		--Temple of Sethraliss
		[SpellName(269686)] = 1, -- Plague
		[SpellName(268013)] = 1, -- Flame Shock
		[SpellName(268008)] = 1, -- Snake Charm
		[SpellName(273563)] = 1, -- Neurotoxin
		[SpellName(272657)] = 1, -- Noxious Breath
		[SpellName(267027)] = 1, -- Cytotoxin
		[SpellName(272699)] = 1, -- Venomous Spit
		[SpellName(263371)] = 1, -- Conduction
		[SpellName(272655)] = 1, -- Scouring Sand
		[SpellName(263914)] = 1, -- Blinding Sand
		[SpellName(263958)] = 1, -- A Knot of Snakes
		[SpellName(266923)] = 1, -- Galvanize
		[SpellName(268007)] = 1, -- Heart Attack
		
		--Underrot
		[SpellName(265468)] = 1, -- Withering Curse
		[SpellName(278961)] = 1, -- Decaying Mind
		[SpellName(259714)] = 1, -- Decaying Spores
		[SpellName(272180)] = 1, -- Death Bolt
		[SpellName(272609)] = 1, -- Maddening Gaze
		[SpellName(269301)] = 1, -- Putrid Blood
		[SpellName(265533)] = 1, -- Blood Maw
		[SpellName(265019)] = 1, -- Savage Cleave
		[SpellName(265377)] = 1, -- Hooked Snare
		[SpellName(265625)] = 1, -- Dark Omen
		[SpellName(260685)] = 1, -- Taint of G'huun
		[SpellName(266107)] = 1, -- Thirst for Blood
		[SpellName(260455)] = 1, -- Serrated Fangs
		
		------------------------
		-- Dungeons (Mythic+) --
		------------------------
		
		[SpellName(200227)] = 1, -- Tangled Web
		[SpellName(209858)] = 1, -- Necrotic
		[SpellName(226512)] = 1, -- Sanguine
		[SpellName(240559)] = 1, -- Grievous
		[SpellName(240443)] = 1, -- Bursting
		[SpellName(196376)] = 1, -- Grievous Tear

	-- Uldir
		-- MOTHER
		[SpellName(268277)] = 1, -- Purifying Flame
		[SpellName(268253)] = 1, -- Surgical Beam
		[SpellName(268095)] = 1, -- Cleansing Purge
		[SpellName(267787)] = 1, -- Sundering Scalpel
		[SpellName(268198)] = 1, -- Clinging Corruption
		[SpellName(267821)] = 1, -- Defense Grid

		-- Vectis
		[SpellName(265127)] = 1, -- Lingering Infection
		[SpellName(265178)] = 1, -- Mutagenic Pathogen
		[SpellName(265206)] = 1, -- Immunosuppression
		[SpellName(265212)] = 1, -- Gestate
		[SpellName(265129)] = 1, -- Omega Vector
		[SpellName(267160)] = 1, -- Omega Vector
		[SpellName(267161)] = 1, -- Omega Vector
		[SpellName(267162)] = 1, -- Omega Vector
		[SpellName(267163)] = 1, -- Omega Vector
		[SpellName(267164)] = 1, -- Omega Vector

		-- Mythrax
		--[SpellName(272146)] = 1, -- Annihilation
		[SpellName(272536)] = 1, -- Imminent Ruin
		[SpellName(274693)] = 1, -- Essence Shear
		[SpellName(272407)] = 1, -- Oblivion Sphere

		-- Fetid Devourer
		[SpellName(262313)] = 1, -- Malodorous Miasma
		[SpellName(262292)] = 1, -- Rotting Regurgitation
		[SpellName(262314)] = 1, -- Deadly Disease

		-- Taloc
		[SpellName(270290)] = 1, -- Blood Storm
		[SpellName(275270)] = 1, -- Fixate
		[SpellName(271224)] = 1, -- Plasma Discharge
		[SpellName(271225)] = 1, -- Plasma Discharge

		-- Zul
		[SpellName(273365)] = 1, -- Dark Revelation
		[SpellName(273434)] = 1, -- Pit of Despair
		[SpellName(274195)] = 1, -- Corrupted Blood
		[SpellName(272018)] = 1, -- Absorbed in Darkness

		-- Zek'voz, Herald of N'zoth
		[SpellName(265237)] = 1, -- Shatter
		[SpellName(265264)] = 1, -- Void Lash
		[SpellName(265360)] = 1, -- Roiling Deceit
		[SpellName(265662)] = 1, -- Corruptor's Pact
		[SpellName(265646)] = 1, -- Will of the Corruptor

		-- G'huun
		[SpellName(263436)] = 1, -- Imperfect Physiology
		[SpellName(263227)] = 1, -- Putrid Blood
		[SpellName(263372)] = 1, -- Power Matrix
		[SpellName(272506)] = 1, -- Explosive Corruption
		[SpellName(267409)] = 1, -- Dark Bargain
		[SpellName(267430)] = 1, -- Torment
		[SpellName(263235)] = 1, -- Blood Feast
		[SpellName(270287)] = 1, -- Blighted Ground
	
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
	raid:SetParent(S["Panels"].PetBattleHider)
	raid:ClearAllPoints()
	raid:SetPoint("CENTER",UIParent,0,-195)

	local pet = oUF:SpawnHeader(GetPetFrameAttributes())
	pet:SetParent(S["Panels"].PetBattleHider)
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
