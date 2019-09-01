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
	self:RegisterEvent("PLAYER_TARGET_CHANGED", updateThreat, true)
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
	
	local RaidIcon = health:CreateTexture(nil, "OVERLAY")
	RaidIcon:Height(16)
	RaidIcon:Width(16)
	RaidIcon:SetPoint("CENTER", self, "TOP",-12,-1)
	RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\Others\\RaidIcons.blp")
	RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
	self.RaidTargetIndicator  = RaidIcon
	RaidIcon:Hide() -- not sure if necessary, seems so from MOTHER's rooms

	local ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
	ReadyCheck:Height(12)
	ReadyCheck:Width(12)
	ReadyCheck:SetPoint("CENTER",self.Health,"TOP") 	
	self.ReadyCheckIndicator = ReadyCheck
	
	local Resurrect = CreateFrame("Frame", nil, self.Health)
	Resurrect:SetFrameLevel(self.Health:GetFrameLevel() + 1)
	Resurrect:Size(15)
	Resurrect:SetPoint("BOTTOMLEFT")
	self.ResurrectIndicator = Resurrect

	local ResurrectIcon = Resurrect:CreateTexture(nil, "OVERLAY")
	ResurrectIcon:SetAllPoints()
	ResurrectIcon:SetDrawLayer("OVERLAY", 7)
	self.ResurrectIcon = ResurrectIcon
	
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
	mhpb:SetOrientation("VERTICAL")
	mhpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	mhpb:Width(66)
	mhpb:Height(28)				
	mhpb:SetStatusBarTexture(normTex)
	mhpb:SetStatusBarColor(0, 0.5, 0.15, 1)

	local ohpb = CreateFrame("StatusBar", nil, self.Health)
	ohpb:SetOrientation("VERTICAL")
	ohpb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	ohpb:Width(66)
	ohpb:Height(28)
	ohpb:SetStatusBarTexture(normTex)
	ohpb:SetStatusBarColor(0, 0.5, 0, 1)
	
	local absb = CreateFrame("StatusBar", nil, self.Health)
	absb:SetOrientation("VERTICAL")
	absb:SetPoint("BOTTOM", self.Health:GetStatusBarTexture(), "TOP", 0, 0)
	absb:Width(66)
	absb:Height(28)				
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
	--Death Knight
		{48707, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Anti-Magic Shell
		{81256, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Dancing Rune Weapon
		{55233, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Vampiric Blood
		--{193320, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Umbilicus Eternus
		{219809, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Tombstone
		{48792, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Icebound Fortitude
		{207319, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Corpse Shield
		{194844, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- BoneStorm
		{145629, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Anti-Magic Zone
		--{194679, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Rune Tap
	--Demon Hunter
		{207811, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Nether Bond (DH)
		{207810, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Nether Bond (Target)
		{187827, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Metamorphosis
		--{227225, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Soul Barrier
		--{209426, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Darkness
		{196555, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Netherwalk
		{212800, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Blur
		--{188499, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Blade Dance
		{203819, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Demon Spikes
	-- Druid
		{102342, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ironbark
		{61336, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Survival Instincts
		{210655, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Protection of Ashamane
		{22812, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Barkskin
		{234081, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Celestial Guardian
		{202043, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Protector of the Pack (it's this one or the other)
		{201940, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Protector of the Pack
		{201939, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Protector of the Pack (Allies)
	--Hunter
		{186265, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Aspect of the Turtle
		--{53480, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Roar of Sacrifice
		--{202748, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Survival Tactics
	--Mage
		{45438, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Ice Block
		{113862, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Greater Invisibility
		{198111, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Temporal Shield
		--{198065, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Prismatic Cloak
		--{11426, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Ice Barrier
	--Monk
		{122783, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Diffuse Magic
		{122278, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dampen Harm
		{125174, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Touch of Karma
		{201318, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Fortifying Elixir
		--{201325, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Zen Moment
		{202248, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guided Meditation
		{120954, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Fortifying Brew
		{116849, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Life Cocoon
		--{202162, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guard
		--{215479, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ironskin Brew
	--Paladin
		{642, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}   , -- Divine Shield
		{498, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}   , -- Divine Protection
		{205191, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Eye for an Eye
		--{184662, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Shield of Vengeance
		{1022, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}  , -- Blessing of Protection
		{6940, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}  , -- Blessing of Sacrifice
		{204018, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Blessing of Spellwarding
		{199507, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Spreading The Word: Protection
		--{216857, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guarded by the Light
		{228049, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guardian of the Forgotten Queen
		{31850, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Ardent Defender
		{86659, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Guardian of Ancien Kings
		{212641, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Guardian of Ancien Kings (Glyph of the Queen)
		--{209388, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Bulwark of Order
		{204335, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Aegis of Light
		--{152262, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Seraphim
		--{132403, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Shield of the Righteous
	--Priest
		{81782, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Power Word: Barrier
		{47585, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Dispersion
		--{19236, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Desperate Prayer
		--{213602, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Greater Fade
		{27827, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Spirit of Redemption
		{197268, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ray of Hope
		{47788, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Guardian Spirit
		{33206, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Pain Suppression
	--Rogue
		{5277, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}  , -- Evasion
		{31224, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Cloak of Shadows
		--{1966, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}  , -- Feint
		{199754, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Riposte
		--{45182, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Cheating Death
		--{199027, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Veil of Midnight
	--Shaman
		--{204293, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Spirit Link
		--{204288, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Earth Shield
		{210918, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ethereal Form
		--{207654, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Servant of the Queen
		{108271, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Astral Shift
		--{98007, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Spirit Link Totem
		--{207498, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ancestral Protection
	--Warlock
		{108416, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Dark Pact
		{104773, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Unending Resolve
		--{221715, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Essence Drain
		--{212295, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Nether Ward
	--Warrior
		{118038, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Die by the Sword
		{184364, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Enraged Regeneration
		--{209484, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Tactical Advance
		--{97463, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Commanding Shout
		--{213915, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Mass Spell Reflection
		--{199038, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Leave No Man Behind
		--{223658, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Safeguard
		--{147833, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Intervene
		--{198760, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Intercept
		--{12975, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Last Stand
		{871, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}   , -- Shield Wall
		--{23920, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true} , -- Spell Reflection
		--{216890, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Spell Reflection (PvPT)
		--{227744, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ravager
		--{203524, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Neltharion's Fury
		--{190456, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Ignore Pain
		--{132404, {"TOPRIGHT", 2, 2}, {1, 1, 1, 0}, true}, -- Shield Block
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
		--if auras.icons[774] and auras.icons[18562] then
		--	auras.icons[774]:SetFrameLevel(auras.icons[18562]:GetFrameLevel()+1)
		--end
		
		--power word shield should overwrite atonement
		if auras.icons[194384] and auras.icons[17] then
			auras.icons[17]:SetFrameLevel(auras.icons[194384]:GetFrameLevel()+1)
		end
	end
	
	self.NotAuraWatch = auras

	local ShadowTouched = CreateFrame("Frame", nil, auras)	
	ShadowTouched:Width(15)
	ShadowTouched:Height(15)
	ShadowTouched:SetFrameStrata("MEDIUM")
	ShadowTouched:SetFrameLevel(self.Health:GetFrameLevel()+5) -- one more than the def buffs
	ShadowTouched:Point("TOPRIGHT", 2, 2)
	
	self.ShadowTouched = ShadowTouched
		
		
	--[[ depending on S.swiftmend_shown we may sometimes need to reload the
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
	--]]
	
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

	
	local function SpellName(id)
		local name = select(1, GetSpellInfo(id))
		return name	
	end
	
	local function Defaults(priorityOverride)
		return {["enable"] = true, ["priority"] = priorityOverride or 0, ["stackThreshold"] = 0}
	end
		
	RaidDebuffs.Debuffs = {
	--BFA Dungeons
		--Freehold
		[258323] = Defaults(), -- Infected Wound
		[257775] = Defaults(), -- Plague Step
		[257908] = Defaults(), -- Oiled Blade
		[257436] = Defaults(), -- Poisoning Strike
		[274389] = Defaults(), -- Rat Traps
		[274555] = Defaults(), -- Scabrous Bites
		[258875] = Defaults(), -- Blackout Barrel
		[256363] = Defaults(), -- Ripper Punch
		
		--Shrine of the Storm
		[264560] = Defaults(), -- Choking Brine
		[268233] = Defaults(), -- Electrifying Shock
		[268322] = Defaults(), -- Touch of the Drowned
		[268896] = Defaults(), -- Mind Rend
		[268104] = Defaults(), -- Explosive Void
		[267034] = Defaults(), -- Whispers of Power
		[276268] = Defaults(), -- Heaving Blow
		[264166] = Defaults(), -- Undertow
		[264526] = Defaults(), -- Grasp of the Depths
		[274633] = Defaults(), -- Sundering Blow
		[268214] = Defaults(), -- Carving Flesh
		[267818] = Defaults(), -- Slicing Blast
		[268309] = Defaults(), -- Unending Darkness
		[268317] = Defaults(), -- Rip Mind
		[268391] = Defaults(), -- Mental Assault
		[274720] = Defaults(), -- Abyssal Strike

		--Siege of Boralus
		[257168] = Defaults(), -- Cursed Slash
		[272588] = Defaults(), -- Rotting Wounds
		[272571] = Defaults(), -- Choking Waters
		[274991] = Defaults(), -- Putrid Waters
		[275835] = Defaults(), -- Stinging Venom Coating
		[273930] = Defaults(), -- Hindering Cut
		[257292] = Defaults(), -- Heavy Slash
		[261428] = Defaults(), -- Hangman's Noose
		[256897] = Defaults(), -- Clamping Jaws
		[272874] = Defaults(), -- Trample
		[273470] = Defaults(), -- Gut Shot
		[272834] = Defaults(), -- Viscous Slobber
		[257169] = Defaults(), -- Terrifying Roar
		[272713] = Defaults(), -- Crushing Slam
		
		-- Tol Dagor
		[258128] = Defaults(), -- Debilitating Shout
		[265889] = Defaults(), -- Torch Strike
		[257791] = Defaults(), -- Howling Fear
		[258864] = Defaults(), -- Suppression Fire
		[257028] = Defaults(), -- Fuselighter
		[258917] = Defaults(), -- Righteous Flames
		[257777] = Defaults(), -- Crippling Shiv
		[258079] = Defaults(), -- Massive Chomp
		[258058] = Defaults(), -- Squeeze
		[260016] = Defaults(), -- Itchy Bite
		[257119] = Defaults(), -- Sand Trap
		[260067] = Defaults(), -- Vicious Mauling
		[258313] = Defaults(), -- Handcuff
		[259711] = Defaults(), -- Lockdown
		[256198] = Defaults(), -- Azerite Rounds: Incendiary
		[256101] = Defaults(), -- Explosive Burst
		[256044] = Defaults(), -- Deadeye
		[256474] = Defaults(), -- Heartstopper Venom
		
		--Waycrest Manor
		[260703] = Defaults(), -- Unstable Runic Mark
		[263905] = Defaults(), -- Marking Cleave
		[265880] = Defaults(), -- Dread Mark
		[265882] = Defaults(), -- Lingering Dread
		[264105] = Defaults(), -- Runic Mark
		[264050] = Defaults(), -- Infected Thorn
		[261440] = Defaults(), -- Virulent Pathogen
		[263891] = Defaults(), -- Grasping Thorns
		[264378] = Defaults(), -- Fragment Soul
		[266035] = Defaults(), -- Bone Splinter
		[266036] = Defaults(), -- Drain Essence
		[260907] = Defaults(), -- Soul Manipulation
		[260741] = Defaults(), -- Jagged Nettles
		[264556] = Defaults(), -- Tearing Strike
		[265760] = Defaults(), -- Thorned Barrage
		[260551] = Defaults(), -- Soul Thorns
		[263943] = Defaults(), -- Etch
		[265881] = Defaults(), -- Decaying Touch
		[261438] = Defaults(), -- Wasting Strike
		[268202] = Defaults(), -- Death Lens
		
		-- Atal'Dazar
		[252781] = Defaults(), -- Unstable Hex
		[250096] = Defaults(), -- Wracking Pain
		[250371] = Defaults(), -- Lingering Nausea
		[253562] = Defaults(), -- Wildfire
		[255582] = Defaults(), -- Molten Gold
		[255041] = Defaults(), -- Terrifying Screech
		[255371] = Defaults(), -- Terrifying Visage
		[252687] = Defaults(), -- Venomfang Strike
		[254959] = Defaults(), -- Soulburn
		[255814] = Defaults(), -- Rending Maul
		[255421] = Defaults(), -- Devour
		[255434] = Defaults(), -- Serrated Teeth
		[256577] = Defaults(), -- Soulfeast
		
		--King's Rest
		[270492] = Defaults(), -- Hex
		[267763] = Defaults(), -- Wretched Discharge
		[276031] = Defaults(), -- Pit of Despair
		[265773] = Defaults(), -- Spit Gold
		[270920] = Defaults(), -- Seduction
		[270865] = Defaults(), -- Hidden Blade
		[271564] = Defaults(), -- Embalming Fluid
		[270507] = Defaults(), -- Poison Barrage
		[267273] = Defaults(), -- Poison Nova
		[270003] = Defaults(), -- Suppression Slam
		[270084] = Defaults(), -- Axe Barrage
		[267618] = Defaults(), -- Drain Fluids
		[267626] = Defaults(), -- Dessication
		[270487] = Defaults(), -- Severing Blade
		[266238] = Defaults(), -- Shattered Defenses
		[266231] = Defaults(), -- Severing Axe
		[266191] = Defaults(), -- Whirling Axes
		[272388] = Defaults(), -- Shadow Barrage
		[271640] = Defaults(), -- Dark Revelation
		[268796] = Defaults(), -- Impaling Spear
		
		--Motherlode
		[263074] = Defaults(), -- Festering Bite
		[280605] = Defaults(), -- Brain Freeze
		[257337] = Defaults(), -- Shocking Claw
		[270882] = Defaults(), -- Blazing Azerite
		[268797] = Defaults(), -- Transmute: Enemy to Goo
		[259856] = Defaults(), -- Chemical Burn
		[269302] = Defaults(), -- Toxic Blades
		[280604] = Defaults(), -- Iced Spritzer
		[257371] = Defaults(), -- Tear Gas
		[257544] = Defaults(), -- Jagged Cut
		[268846] = Defaults(), -- Echo Blade
		[262794] = Defaults(), -- Energy Lash
		[262513] = Defaults(), -- Azerite Heartseeker
		[260829] = Defaults(), -- Homing Missle (travelling)
		[260838] = Defaults(), -- Homing Missle (exploded)
		[263637] = Defaults(), -- Clothesline
		
		--Temple of Sethraliss
		[269686] = Defaults(), -- Plague
		[268013] = Defaults(), -- Flame Shock
		[268008] = Defaults(), -- Snake Charm
		[273563] = Defaults(), -- Neurotoxin
		[272657] = Defaults(), -- Noxious Breath
		[267027] = Defaults(), -- Cytotoxin
		[272699] = Defaults(), -- Venomous Spit
		[263371] = Defaults(), -- Conduction
		[272655] = Defaults(), -- Scouring Sand
		[263914] = Defaults(), -- Blinding Sand
		[263958] = Defaults(), -- A Knot of Snakes
		[266923] = Defaults(), -- Galvanize
		[268007] = Defaults(), -- Heart Attack
		
		--Underrot
		[265468] = Defaults(), -- Withering Curse
		[278961] = Defaults(), -- Decaying Mind
		[259714] = Defaults(), -- Decaying Spores
		[272180] = Defaults(), -- Death Bolt
		[272609] = Defaults(), -- Maddening Gaze
		[269301] = Defaults(), -- Putrid Blood
		[265533] = Defaults(), -- Blood Maw
		[265019] = Defaults(), -- Savage Cleave
		[265377] = Defaults(), -- Hooked Snare
		[265625] = Defaults(), -- Dark Omen
		[260685] = Defaults(), -- Taint of G'huun
		[266107] = Defaults(), -- Thirst for Blood
		[260455] = Defaults(), -- Serrated Fangs
				
		--Operation: Mechagon
		[291928] = Defaults(), -- Giga-Zap
		[292267] = Defaults(), -- Giga-Zap
		[302274] = Defaults(), -- Fulminating Zap
		[298669] = Defaults(), -- Taze
		[295445] = Defaults(), -- Wreck
		[294929] = Defaults(), -- Blazing Chomp
		[297257] = Defaults(), -- Electrical Charge
		[294855] = Defaults(), -- Blossom Blast
		[291972] = Defaults(), -- Explosive Leap
		[285443] = Defaults(), -- "Hidden" Flame Cannon
		[291974] = Defaults(), -- Obnoxious Monologue
		[296150] = Defaults(), -- Vent Blast
		[298602] = Defaults(), -- Smoke Cloud
		[296560] = Defaults(), -- Clinging Static
		[297283] = Defaults(), -- Cave In
		[291914] = Defaults(), -- Cutting Beam
		[302384] = Defaults(), -- Static Discharge
		
		------------------------
		-- Dungeons (Mythic+) --
		------------------------
		
		[200227] = Defaults(), -- Tangled Web
		[209858] = Defaults(), -- Necrotic
		[226512] = Defaults(), -- Sanguine
		[240559] = Defaults(), -- Grievous
		[240443] = Defaults(), -- Bursting
		[196376] = Defaults(), -- Grievous Tear

	-- Uldir
		-- MOTHER
		[268277] = Defaults(), -- Purifying Flame
		[268253] = Defaults(), -- Surgical Beam
		[268095] = Defaults(), -- Cleansing Purge
		[267787] = Defaults(), -- Sundering Scalpel
		[268198] = Defaults(), -- Clinging Corruption
		[267821] = Defaults(), -- Defense Grid

		-- Vectis
		--[265127] = Defaults(), -- Lingering Infection
		[265178] = Defaults(), -- Mutagenic Pathogen
		[265206] = Defaults(), -- Immunosuppression
		[265212] = Defaults(), -- Gestate
		[265129] = Defaults(), -- Omega Vector
		[267160] = Defaults(), -- Omega Vector
		[267161] = Defaults(), -- Omega Vector
		[267162] = Defaults(), -- Omega Vector
		[267163] = Defaults(), -- Omega Vector
		[267164] = Defaults(), -- Omega Vector

		-- Mythrax
		--[272146] = Defaults(), -- Annihilation
		[272536] = Defaults(), -- Imminent Ruin
		[274693] = Defaults(), -- Essence Shear
		[272407] = Defaults(), -- Oblivion Sphere

		-- Fetid Devourer
		[262313] = Defaults(), -- Malodorous Miasma
		[262292] = Defaults(), -- Rotting Regurgitation
		[262314] = Defaults(), -- Deadly Disease

		-- Taloc
		[270290] = Defaults(), -- Blood Storm
		[275270] = Defaults(), -- Fixate
		[271224] = Defaults(), -- Plasma Discharge
		[271225] = Defaults(), -- Plasma Discharge

		-- Zul
		[273365] = Defaults(), -- Dark Revelation
		[273434] = Defaults(), -- Pit of Despair
		--[274195] = Defaults(), -- Corrupted Blood
		[272018] = Defaults(), -- Absorbed in Darkness
		[274358]= Defaults(), --Rupturing Blood

		-- Zek'voz, Herald of N'zoth
		[265237] = Defaults(), -- Shatter
		[265264] = Defaults(), -- Void Lash
		[265360] = Defaults(), -- Roiling Deceit
		[265662] = Defaults(), -- Corruptor's Pact
		[265646] = Defaults(), -- Will of the Corruptor

		-- G'huun
		--[263436] = Defaults(), -- Imperfect Physiology
		--[263227] = Defaults(), -- Putrid Blood
		--[263372] = Defaults(), -- Power Matrix
		--[272506] = Defaults(), -- Explosive Corruption
		--[267409] = Defaults(), -- Dark Bargain
		--[267430] = Defaults(), -- Torment
		--[263235] = Defaults(), -- Blood Feast
		--[270287] = Defaults(), -- Blighted Ground
		
		
		-- Siege of Zuldazar
		-- Ra'wani Kanae/Frida Ironbellows
		[283573] = Defaults(), -- Sacred Blade
		[283617] = Defaults(), -- Wave of Light
		--[283651] = Defaults(), -- Blinding Faith
		--[284595] = Defaults(), -- Penance
		--[283582] = Defaults(), -- Consecration

		-- Grong
		--[285998] = Defaults(), -- Ferocious Roar
		[283069] = Defaults(), -- Megatomic Fire
		[286373] = Defaults(), -- Chill of Death
		--[285671] = Defaults(), -- Crushed
		[285875] = Defaults(), -- Rending Bite
		--[282010] = Defaults(), -- Shaken
		[286431] = Defaults(), -- Necrotic Core
		[286433] = Defaults(), -- Necrotic Core
		[286434] = Defaults(), -- Necrotic Core

		-- Jaina
		[285253] = Defaults(), -- Ice Shard
		--[287993] = Defaults(), -- Chilling Touch
		--[287365] = Defaults(), -- Searing Pitch
		[288038] = Defaults(), -- Marked Target
		--[285254] = Defaults(), -- Avalanche
		[287626] = Defaults(), -- Grasp of Frost
		[287490] = Defaults(), -- Frozen Solid
		[287199] = Defaults(), -- Ring of Ice
		[288392] = Defaults(), -- Vengeful Seas

		-- Stormwall Blockade
		--[284369] = Defaults(), -- Sea Storm
		[284410] = Defaults(), -- Tempting Song
		[284405] = Defaults(), -- Tempting Song
		--[284121] = Defaults(), -- Thunderous Boom
		[286680] = Defaults(), -- Roiling Tides
		[285000] = Defaults(), -- Kelp-Wrapped
		[285350] = Defaults(), --Storm's Wail
		[284106] = Defaults(), -- Crackling Lightning

		-- Opulence
		[286501] = Defaults(2), -- Creeping Blaze
		--[283610] = Defaults(), -- Crush
		[289383] = Defaults(2), -- Chaotic Displacement
		--[285479] = Defaults(), -- Flame Jet
		[283063] = Defaults(2), -- Flames of Punishment
		[283507] = Defaults(2), -- Volatile Charge
		--[284556] = Defaults(), --Shadow-Touched
		--[284519] = Defaults(), --Quickened Pulse
		[287072] = Defaults(5), -- Liquid Gold
		[284470] = Defaults(5), -- Hex of Lethargy

		-- King Rastakhan
		--[284995] = Defaults(), -- Zombie Dust
		--[285349] = Defaults(), -- Plague of Fire
		[285044] = Defaults(), -- Toad Toxin
		[284831] = Defaults(), -- Scorching Detonation
		[289858] = Defaults(), -- Crushed
		--[284662] = Defaults(), -- Seal of Purification
		--[284676] = Defaults(), -- Seal of Purification
		--[285178] = Defaults(), -- Serpent's Breath
		--[285010] = Defaults(), -- Poison Toad Slime
		[284781] = Defaults(), --Grievous Axe
		[286779] = Defaults(), -- Focused Demise
		[288415] = Defaults(), -- Caress of Death

		-- Jadefire Masters
		[282037] = Defaults(), -- Rising Flames
		--[284374] = Defaults(), -- Magma Trap
		[285632] = Defaults(), -- Stalking
		[288151] = Defaults(), -- Tested
		--[284089] = Defaults(), -- Successful Defense
		[286988] = Defaults(), -- Searing Embers

		-- Mekkatorque
		[288806] = Defaults(), -- Gigavolt Blast
		[283411] = Defaults(), -- Gigavolt Blast
		--[289023] = Defaults(), -- Enormous
		[286646] = Defaults(), -- Gigavolt Charge
		--[288939] = Defaults(), -- Gigavolt Radiation
		--[284168] = Defaults(), -- Shrunk
		[286516] = Defaults(), -- Anti-Tampering Shock
		[286480] = Defaults(), -- Anti-Tampering Shock
		--[284214] = Defaults(), -- Trample
		[287167] = Defaults(), -- Discombulation

		-- Conclave of the Chosen
		[284663] = Defaults(), -- Bwonsamdi's Wrath
		--[282444] = Defaults(), -- Lacerating Claws
		--[282592] = Defaults(), -- Bleeding Wounds
		[282209] = Defaults(), -- Mark of Prey
		[285879] = Defaults(), -- Mind Wipe
		[282135] = Defaults(), -- Crawling Hex
		--[286060] = Defaults(), -- Cry of the Fallen
		[282447] = Defaults(), -- Kimbul's Wrath
		[282834] = Defaults(), -- Kimbul's Wrath
		[286811] = Defaults(), -- Akunda's Wrath
		--[286838] = Defaults(), -- Static Orb
		
		
		-- Crucible of Storms
		
		-- Cabal
		[282562] = Defaults(), -- Promises of Power
		[282432] = Defaults(), -- Crushing Doubt
		[282561] = Defaults(), -- Dark Herald
		[282540] = Defaults(), -- Agent of Demise
		
		-- Uu'nat
		[285367] = Defaults(), -- Piercing gaze of nzoth
		[285562] = Defaults(), -- Unknowable terror
		[285652] = Defaults(), -- Instiable torment		
		
	--Eternal Palace
		--Lady Ashvane
		[296693] = Defaults(), -- Waterlogged
		[296725] = Defaults(), -- Barnacle Bash
		[296942] = Defaults(), -- Arcing Azerite
		[296938] = Defaults(), -- Arcing Azerite
		[296941] = Defaults(), -- Arcing Azerite
		[296939] = Defaults(), -- Arcing Azerite
		[296943] = Defaults(), -- Arcing Azerite
		[296940] = Defaults(), -- Arcing Azerite
		[296752] = Defaults(), -- Cutting Coral
		[297333] = Defaults(2), -- Briny Bubble
		[297397] = Defaults(2), -- Briny Bubble

		--Abyssal Commander Sivara
		--[294715] = Defaults(), -- Toxic Brand
		--[294711] = Defaults(), -- Frost Mark
		[300701] = Defaults(), -- Rimefrost
		[300705] = Defaults(), -- Septic Taint
		[294847] = Defaults(), -- Unstable Mixture
		[295850] = Defaults(), -- Delirious
		[295421] = Defaults(), -- Overflowing Venom
		[295807] = Defaults(), -- Frozen
		[300883] = Defaults(), -- Inversion Sickness
		[295705] = Defaults(), -- Toxic Bolt

		--The Queen’s Court
		[301830] = Defaults(), -- Pashmar's Touch
		[296851] = Defaults(), -- Fanatical Verdict
		[297836] = Defaults(), -- Potent Spark
		[297586] = Defaults(), -- Suffering
		[304410] = Defaults(), -- Repeat Performance
		[299914] = Defaults(), -- Frenetic Charge
		[303306] = Defaults(), -- Sphere of Influence
		[300545] = Defaults(), -- Mighty Rupture

		--Radiance of Azshara
		[296566] = Defaults(), -- Tide Fist
		[296737] = Defaults(), -- Arcane Bomb
		[296746] = Defaults(), -- Arcane Bomb
		[295920] = Defaults(), -- Ancient Tempest
		[296462] = Defaults(), -- Squall Trap
		[299152] = Defaults(), -- Waterlogged

		--Orgozoa
		[298156] = Defaults(), -- Desensitizing Sting
		[298306] = Defaults(), -- Incubation Fluid

		--Blackwater Behemoth
		[269279] = Defaults(),
		[186403] = Defaults(), -- Darkest Depths?
		[298836] = Defaults(), -- Darkest Depths?
		[292127] = Defaults(), -- Darkest Depths
		[292138] = Defaults(), -- Radiant Biomass
		[292167] = Defaults(), -- Toxic Spine
		[301494] = Defaults(), -- Piercing Barb

		--Za’qul
		[295495] = Defaults(), -- Mind Tether
		[295480] = Defaults(), -- Mind Tether
		[295249] = Defaults(), -- Delirium Realm
		[303819] = Defaults(), -- Nightmare Pool
		[293509] = Defaults(), -- Manifest Nightmares
		[295327] = Defaults(), -- Shattered Psyche
		[294545] = Defaults(), -- Portal of Madness
		[298192] = Defaults(), -- Dark Beyond
		[292963] = Defaults(), -- Dread
		[300133] = Defaults(), -- Snapped

		--Queen Azshara
		[298781] = Defaults(), -- Arcane Orb
		[297907] = Defaults(), -- Cursed Heart
		[302999] = Defaults(), -- Arcane Vulnerability
		[302141] = Defaults(), -- Beckon
		[299276] = Defaults(), -- Sanction
		[303657] = Defaults(), -- Arcane Burst
		[298756] = Defaults(), -- Serrated Edge
		[301078] = Defaults(), -- Charged Spear
		[298014] = Defaults(), -- Cold Blast
		[298018] = Defaults(), -- Frozen

	
	}

	-- S.ReverseTimer = {

	-- }
	
	--ORD:RegisterDebuffs(S["UnitFrames"].DebuffIDs)
	self.RaidDebuffs = RaidDebuffs
		
	local ORD = oUF_RaidDebuffs	
	ORD.ShowDispelableDebuff = true
	ORD.FilterDispellableDebuff = true
	ORD.MatchBySpellName = true
	ORD.SetDebuffTypeColor = RaidDebuffs.SetBackdropBorderColor
	ORD:ResetDebuffData()
	ORD:RegisterDebuffs(RaidDebuffs.Debuffs)

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
	"initial-width", S.Scale(66),
	"initial-height", S.Scale(28),
	"showParty", true,
	"showRaid", true,
	"showPlayer", true,
	"showSolo", true,
	"xoffset", S.Scale(2),
	"yOffset", S.Scale(-2),
	"point", point,
	"groupFilter", "1,2,3,4,5,6,7,8",
	"groupingOrder", "1,2,3,4,5,6,7,8",
	"groupBy", "GROUP",
	"maxColumns", 8,
	"unitsPerColumn", 5,
	"columnSpacing", S.Scale(2),
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
	"columnSpacing", S.Scale(2),
	"columnAnchorPoint", columnAnchorPoint,
	"yOffset", S.Scale(-2),
	"xOffset", S.Scale(2),
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
