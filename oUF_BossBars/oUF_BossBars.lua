--	configuration
local S,C = unpack(SanUI)
local _, ns = ...
local oUF = TukuiUnitFrameFramework

ns._Objects = {}
ns._Headers = {}

--local BAR_TEXTURE = "Interface\\AddOns\\oUF_BossBars\\media\\normTex.tga"
local BAR_TEXTURE = S.GetTexture(C["UnitFrames"].HealthTexture)
--local TEXT_FONT = "Interface\\AddOns\\oUF_BossBars\\media\\uf_font.ttf"
local TEXT_FONT = C["Medias"].Font

local fontcolor = {1, 1, 1, 1}
--local hpBarColor = {178/255, 34/255, 34/255, 1}
local hpBarColor = {.1,.1,.1, 1}
--local ppBarColor = {165/255, 73/255, 23/255, 1}
local ppBarColor = {.5,.5,.5, 1}
local bgBarColor = {44/255, 44/255, 44/255, 1}
local ppBgColor = {29/255, 63/255, 72/255}
local fontSize = 12

local ALTERNATE_POWER_INDEX = ALTERNATE_POWER_INDEX

local function valShort(value)
	if(value >= 1e6) then
		return ("%.2f"):format(value / 1e6):gsub("%.?0+$", "") .. "m"
	elseif(value >= 1e4) then
		return ("%.1f"):format(value / 1e3):gsub("%.?0+$", "") .. "k"
	else
		return value
	end
end

-- "23.5k/40.9k"
oUF.Tags.Events["BossBars:ppDetailed"] = oUF.Tags.Events["curpp"] .. " " .. oUF.Tags.Events["maxpp"]
oUF.Tags.Methods["BossBars:ppDetailed"] = function(unit)
	local _, pType = UnitPowerType(unit)
	return ("%s/%s"):format(valShort(UnitPower(unit)), valShort(UnitPowerMax(unit)))
end

oUF.Tags.Events['BossBars:altpower'] = 'UNIT_POWER'
oUF.Tags.Methods['BossBars:altpower'] = function(unit)
	local cur = UnitPower(unit, ALTERNATE_POWER_INDEX)
	local max = UnitPowerMax(unit, ALTERNATE_POWER_INDEX)
	if(max > 0 and not UnitIsDeadOrGhost(unit)) then
		return ("%s/%s"):format(valShort(cur),valShort(max))
	end
end

oUF.Tags.Events['BossBars:health'] = "UNIT_HEALTH UNIT_MAXHEALTH UNIT_HEALTH_FREQUENT"
oUF.Tags.Methods['BossBars:health'] = function(unit)
		local m = UnitHealthMax(unit)
		if(m > 0) then
			return math.floor(UnitHealth(unit)/m*100+.5)
		end
end

------------------------------------------------------------------------------

-- generate the frames
local function CreateUnitFrame(self, unit)
	local BarWidth = 150
	local BarHeight = 20
	
	-- size the overall unit frame
	self:SetSize(BarWidth, BarHeight)

	------------------------
	-- health bar
	------------------------
	local hpBar = CreateFrame("StatusBar",nil, self)
	hpBar:SetPoint("TOPLEFT", self, "TOPLEFT", 1, -1)
	hpBar:SetSize(BarWidth - 2, BarHeight - 2)
	hpBar:SetStatusBarTexture(BAR_TEXTURE)
	hpBar:GetStatusBarTexture():SetHorizTile(true)
	--hpBar:SetStatusBarColor(unpack(hpBarColor))
	hpBar:SetStatusBarColor(0.5,0.5,0.5,1)	
	hpBar:SetFrameStrata("MEDIUM")
	
	local hpBarBG = CreateFrame("Frame",nil,hpBar)
	hpBarBG:Point("TOPLEFT",hpBar,"TOPLEFT",-2,2)
	hpBarBG:Point("BOTTOMRIGHT",hpBar,"BOTTOMRIGHT",2,-2)
	hpBarBG:SetTemplate()
	hpBarBG:SetFrameStrata("MEDIUM")
	hpBarBG:SetFrameLevel(hpBar:GetFrameLevel()-1)
	-- local hpBG = hpBar:CreateTexture(nil, "BORDER")
	-- hpBG:SetAllPoints(hpBar)
	-- hpBG:SetSize(BarWidth - 2, BarHeight - 2)
	-- hpBG:SetTexture(BAR_TEXTURE)
	-- hpBG:SetVertexColor(unpack(bgBarColor))	
	
	-- local hpBorder = hpBar:CreateTexture(nil, "BACKGROUND")
	-- hpBorder:SetPoint("TOPLEFT", hpBar, "TOPLEFT", -1, 1)
	-- hpBorder:SetSize(BarWidth, BarHeight)
	-- hpBorder:SetTexture(0, 0, 0, 1)
	
	-- > see "oUF/elements/health.lua" for health bar coloring options
	hpBar.frequentUpdates = true
	hpBar.colorHealth = false
	self.Health = hpBar
	self.Health.bg = hpBarBG
	
	------------------------
	-- power bar
	------------------------
	-- local ppBar = CreateFrame("StatusBar", nil, self)
	-- ppBar:SetPoint("BOTTOMLEFT", hpBar, "BOTTOMLEFT", 5, -5)
	-- ppBar:SetSize(BarWidth - 2, BarHeight - 2)
	-- ppBar:SetStatusBarTexture(BAR_TEXTURE)	
	-- ppBar:GetStatusBarTexture():SetHorizTile(true)
	-- ppBar:SetStatusBarColor(unpack(ppBarColor))
	-- ppBar:SetFrameStrata("LOW")
	
	-- local ppBarBG = CreateFrame("Frame",nil,ppBar)
	-- ppBarBG:Point("TOPLEFT",ppBar,"TOPLEFT",-2,2)
	-- ppBarBG:Point("BOTTOMRIGHT",ppBar,"BOTTOMRIGHT",2,-1)
	-- ppBarBG:SetTemplate()
	-- ppBarBG:SetFrameStrata("LOW")
	-- ppBarBG:SetFrameLevel(ppBar:GetFrameLevel()-1)
	
	local PowerBar = CreateFrame("StatusBar", nil, self)
	PowerBar:SetFrameLevel(self.Health:GetFrameLevel())
	PowerBar:SetSize(98, 13)
	PowerBar:SetStatusBarTexture(BAR_TEXTURE)
	PowerBar:GetStatusBarTexture():SetHorizTile(false)
	PowerBar:SetFrameStrata(hpBar:GetFrameStrata())
	PowerBar:SetFrameLevel(hpBar:GetFrameLevel()+2)
	--PowerBar:SetStatusBarColor(1, 0, 0)
	PowerBar:SetStatusBarColor(0.5,0.5,0.5,1)
	PowerBar:SetPoint("CENTER", self.Health, "BOTTOM", 0, -6)
	
	local powerBarBG = CreateFrame("Frame",nil,PowerBar)
	powerBarBG:Point("TOPLEFT",PowerBar,"TOPLEFT",-2,2)
	powerBarBG:Point("BOTTOMRIGHT",PowerBar,"BOTTOMRIGHT",2,-2)
	powerBarBG:SetTemplate()
	powerBarBG:SetFrameStrata(PowerBar:GetFrameStrata())
	powerBarBG:SetFrameLevel(PowerBar:GetFrameLevel()-1)
	
	local powerText = PowerBar:CreateFontString(nil, "Overlay")
	powerText:SetFont(TEXT_FONT, fontSize-1)
	powerText:SetShadowOffset(.8,-.8)
	powerText:SetTextColor(unpack(fontcolor))
	powerText:SetJustifyH("RIGHT")
	powerText:SetPoint("RIGHT", PowerBar, "RIGHT", -4, 0)
	
	self:Tag(powerText, "[BossBars:ppDetailed]")

	
	-- local ppBG = ppBar:CreateTexture(nil, "BORDER")
	-- ppBG:SetAllPoints(ppBar)
	-- ppBG:SetSize(BarWidth - 2, BarHeight - 2)
	-- ppBG:SetTexture(BAR_TEXTURE)
	-- ppBG:SetVertexColor(unpack(ppBgColor))
	
	-- local ppBorder = ppBar:CreateTexture(nil, "BACKGROUND")
	-- ppBorder:SetPoint("TOPLEFT", ppBar, "TOPLEFT", -1, 1)
	-- ppBorder:SetSize(BarWidth, BarHeight)
	-- ppBorder:SetTexture(0, 0, 0, 1)
	
	-- > see "oUF/elements/power.lua" for power bar coloring options
	PowerBar.frequentUpdates = true
	PowerBar.colorPower = false
	
	self.Power = PowerBar
	self.Power.bg = powerBarBG
	
	------------------------
	-- unit name text
	------------------------

	local Name = hpBar:CreateFontString(nil, "Overlay")
	Name:SetFont(TEXT_FONT, fontSize)
	Name:SetShadowOffset(0,-1)
	Name:SetTextColor(unpack(fontcolor))
	Name:SetJustifyH("LEFT")
	Name:SetPoint("LEFT", hpBar, "LEFT", 2, 0)
	Name:SetSize(BarWidth-50, BarHeight - 2)
	
	-- > see "oUF/elements/tags.lua" for provided tags
	self:Tag(Name, "[name]")
	
	------------------------
	-- unit health text
	------------------------
	local hpText = hpBar:CreateFontString(nil, "Overlay")
	hpText:SetFont(TEXT_FONT, fontSize)
	hpText:SetShadowOffset(.8,-.8)
	hpText:SetTextColor(unpack(fontcolor))
	hpText:SetJustifyH("RIGHT")
	hpText:SetPoint("RIGHT", hpBar, "RIGHT", -2, 0)
	self.hpText = hpText
	
	-- > "see oUF/elements/tags.lua" for provided tags
	--self:Tag(hpText, "[BossBars:health]%")
	self:Tag(hpText,"[BossBars:health]%")
	
	-- handle cast bar
	self.Castbar = CreateFrame('StatusBar', nil, self)
	self.Castbar:SetFrameStrata("HIGH")
	--self.Castbar:SetPoint("LEFT", self, "LEFT", 1, 0)
	self.Castbar:Point("TOP",self.Power,"BOTTOM",0,2)
	self.Castbar:SetWidth(BarWidth - 2 )
	self.Castbar:SetHeight(BarHeight - 2)
	self.Castbar:SetStatusBarTexture(BAR_TEXTURE)	
	self.Castbar:SetFrameStrata(self.Health:GetFrameStrata())
	self.Castbar:SetFrameLevel(self.Health:GetFrameLevel())
	self.Castbar:GetStatusBarTexture():SetHorizTile(true)
	self.Castbar:SetStatusBarColor(29/255, 63/255, 72/255, 1)	
	
	local castBarBG = CreateFrame("Frame",nil,self.Castbar)
	castBarBG:Point("TOPLEFT",self.Castbar,"TOPLEFT",-2,2)
	castBarBG:Point("BOTTOMRIGHT",self.Castbar,"BOTTOMRIGHT",2,-2)
	castBarBG:SetTemplate()
	castBarBG:SetFrameStrata(self.Castbar:GetFrameStrata())
	castBarBG:SetFrameLevel(self.Castbar:GetFrameLevel()-1)
	
	self.Castbar.bg = castBarBG
	
	-- cast bar background
	-- self.Castbar.bg = self.Castbar:CreateTexture(nil, "BACKGROUND")
	-- self.Castbar.bg:SetAllPoints(self.Castbar)
	-- self.Castbar.bg:SetTexture(0, 0, 0, .8)

	-- cast bar spell name text
	self.Castbar.Text = self.Castbar:CreateFontString(nil, 'OVERLAY')
	self.Castbar.Text:SetPoint('LEFT', self.Castbar, 4, 0)
	self.Castbar.Text:SetSize((BarWidth-2)* (2/3), BarHeight - 2)
	self.Castbar.Text:SetFont(TEXT_FONT, fontSize)
	self.Castbar.Text:SetJustifyH("LEFT")
	self.Castbar.Text:SetShadowOffset(.8,-.8)
	self.Castbar.Text:SetTextColor(unpack(fontcolor))

	-- cast bar spell time text
	self.Castbar.Time = self.Castbar:CreateFontString(nil, 'OVERLAY')
	self.Castbar.Time:SetPoint('RIGHT', self.Castbar, -4, 0)
	self.Castbar.Time:SetSize((BarWidth-2.1) * (1/3), BarHeight - 2.1)
	self.Castbar.Time:SetFont(TEXT_FONT, fontSize)
	self.Castbar.Time:SetShadowOffset(.8,-.8)
	self.Castbar.Time:SetTextColor(unpack(fontcolor))
	self.Castbar.Time:SetJustifyH("RIGHT")
	self.Castbar.CustomTimeText = function(_, t)
		self.Castbar.Time:SetText(("%.1f/%.1f"):format(self.Castbar.castIsChanneled and t or self.Castbar.max - t, self.Castbar.max))
	end
	
	self.Castbar.PostCastStart = S.CheckCast
	self.Castbar.PostChannelStart = S.CheckChannel
	
	local Spark = self.Castbar:CreateTexture(nil, "OVERLAY")
	Spark:SetSize(20, 20)
	Spark:SetBlendMode("ADD")
	self.Castbar.Spark = Spark
	
	-- alt power bar
	local AltPowerBar = CreateFrame("StatusBar", nil, self)
	AltPowerBar:SetFrameLevel(PowerBar:GetFrameLevel() + 2)
	AltPowerBar:SetSize(98, 13)
	AltPowerBar:SetStatusBarTexture(BAR_TEXTURE)
	AltPowerBar:GetStatusBarTexture():SetHorizTile(false)
	AltPowerBar:SetFrameStrata(PowerBar:GetFrameStrata())
	AltPowerBar:SetFrameLevel(PowerBar:GetFrameLevel()+2)
	
	AltPowerBar:SetStatusBarColor(0.5,0.5,0.5,1)
	AltPowerBar:SetAllPoints(PowerBar)
	self.AltPowerBar = AltPowerBar

	local RaidIcon = self.Health:CreateTexture(nil, "OVERLAY")
	RaidIcon:Height(16)
	RaidIcon:Width(16)
	RaidIcon:SetPoint("CENTER", self, "TOP",0,-1)
	RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\raidicons.blp") -- thx hankthetank for texture
	RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
	self.RaidIcon = RaidIcon
	
	local altBarBG = CreateFrame("Frame",nil,AltPowerBar)
	altBarBG:Point("TOPLEFT",AltPowerBar,"TOPLEFT",-2,2)
	altBarBG:Point("BOTTOMRIGHT",AltPowerBar,"BOTTOMRIGHT",2,-1)
	altBarBG:SetTemplate()
	altBarBG:SetFrameStrata(AltPowerBar:GetFrameStrata())
	altBarBG:SetFrameLevel(AltPowerBar:GetFrameLevel()-1)
	
	self.AltPowerBar.bg = altBarBG
	
	-- local bgAltPowerBar = AltPowerBar:CreateTexture(nil, "BORDER")
	-- bgAltPowerBar:SetAllPoints(AltPowerBar)
	-- bgAltPowerBar:SetTexture(BAR_TEXTURE)
	-- bgAltPowerBar:SetVertexColor(unpack(bgBarColor))
	
	-- local borderAltPowerBar = AltPowerBar:CreateTexture(nil, "BACKGROUND")
	-- borderAltPowerBar:SetPoint("TOPLEFT", AltPowerBar, "TOPLEFT", -1, 1)
	-- borderAltPowerBar:SetSize(100.1, 15.1)
	-- borderAltPowerBar:SetTexture(0, 0, 0, 1)
	
	-- alt power bar text
	local pbText = AltPowerBar:CreateFontString(nil, "Overlay")
	pbText:SetFont(TEXT_FONT, fontSize-1)
	pbText:SetShadowOffset(.8,-.8)
	pbText:SetTextColor(unpack(fontcolor))
	pbText:SetJustifyH("RIGHT")
	pbText:SetPoint("RIGHT", AltPowerBar, "RIGHT", -4, 0)
	
	self:Tag(pbText, "[BossBars:altpower]")

	--[[
	-- create buff at left of unit if they are boss units
	local buffs = CreateFrame("Frame", nil, self)
	buffs:SetHeight(26)
	buffs:SetWidth(252)
	buffs:SetPoint("RIGHT", self, "LEFT", TukuiDB.Scale(-4), 0)
	buffs.size = 26
	buffs.num = 3
	buffs.spacing = 2
	buffs.initialAnchor = 'RIGHT'
	buffs["growth-x"] = "LEFT"
	buffs.PostCreateIcon = TukuiDB.PostCreateAura
	buffs.PostUpdateIcon = TukuiDB.PostUpdateAura
	self.Buffs = buffs
	]]

	local range = {insideAlpha = 1, outsideAlpha = C["Raid"].RangeAlpha}
	self.Range = range

	-- highlight
	local glowBorder = {edgeFile = C["Medias"].Blank, edgeSize = S.Scale(1)}
	local HighlightTarget = CreateFrame("Frame", nil, self)

	HighlightTarget:SetAllPoints(self.Health.bg)
    	--HighlightTarget:Point("BOTTOMRIGHT", self, "BOTTOMRIGHT",1, -1)
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


	local auras = CreateFrame("Frame", nil, self)
	auras:Point("RIGHT", self.Health,-33, 0)
	auras:SetSize(16, BarHeight - 4) --2 auras, size 6, dist 4
	Name:SetPoint("RIGHT",auras,"LEFT")
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

	local buffs = {
		{164812,{"RIGHT",0,0},{1,1,1},false},	--Moonfire
		{93402,{"RIGHT",-10,0},{235/255,152/255,38/255},false},	--Sunfire
		{1822,{"RIGHT",0,0},{235/255,152/255,38/255},false},	--Rake
		{1079,{"RIGHT",-10,0},{1,1,1},false},	--Rip
		--{33745,{"RIGHT",0,0},{1,165/255,0},false,nil,{{3,{1,0,0}}},nil,true},	--Lacerate
	}

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

--			if not icon.hideCount then
--				local count = icon:CreateFontString(nil, "OVERLAY")
--				count:SetFont(C["Medias"].AltFont, 8, "THINOUTLINE")
--				if type(spell[2]) == "string" then
--					count:SetPoint("CENTER", unpack(S["UnitFrames"].RaidBuffsTrackingPosition[spell[2]]))
--				elseif type(spell[2]) == "table" then
--					count:SetPoint("CENTER", unpack(S["UnitFrames"].RaidBuffsTrackingPosition[spell[2][1]]))
--				end
--				icon.count = count
--			end		
			auras.icons[spell[1]] = icon
		end
		
	end
	
	self.NotAuraWatch = auras

	
end

local function CreateTargetFrame(self, unit)
	local BarWidth = 175
	local BarHeight = 11	
	
	self:SetSize(BarWidth, BarHeight)
	
	local hpBar = CreateFrame("StatusBar", nil, self)
	hpBar:SetStatusBarTexture(BAR_TEXTURE)
	hpBar:GetStatusBarTexture():SetHorizTile(true)	
	hpBar:SetStatusBarColor(unpack(hpBarColor))
	hpBar:SetSize(BarWidth - 2, BarHeight - 2)
	hpBar:SetPoint("TOPLEFT", self, "TOPLEFT", 1, -1)
	
	local hpBG = hpBar:CreateTexture(nil, "BORDER")
	hpBG:SetAllPoints(hpBar)
	hpBG:SetSize(BarWidth - 2, BarHeight - 2.1)
	hpBG:SetTexture(BAR_TEXTURE)
	hpBG:SetVertexColor(unpack(bgBarColor))

	local hpBorder = hpBar:CreateTexture(nil, "BACKGROUND")
	hpBorder:SetPoint("TOPLEFT", hpBar, "TOPLEFT", -1, 1)
	hpBorder:SetSize(BarWidth, BarHeight)
	hpBorder:SetTexture(0, 0, 0, 1)
	
	-- > see "oUF/elements/health.lua" for health bar coloring options
	hpBar.frequentUpdates = true
	hpBar.colorHealth = false
	self.Health = hpBar
	
	local Name = hpBar:CreateFontString(nil, "Overlay")
	Name:SetFont(TEXT_FONT, 13)
	Name:SetShadowOffset(.8,-.8)
	Name:SetTextColor(unpack(fontcolor))
	Name:SetJustifyH("LEFT")
	Name:SetPoint("CENTER", hpBar, "BOTTOM", 0, 2)
	
	-- > see "oUF/elements/tags.lua" for provided tags
	self:Tag(Name, "[name]")	
end

------------------------------------------------------------------------------

oUF:RegisterStyle("oUF_BossBars", CreateUnitFrame)
--oUF:RegisterStyle("oUF_BossTargets", CreateTargetFrame)

oUF:SetActiveStyle("oUF_BossBars")

local boss1 = oUF:Spawn("boss1", "oUF_Boss1")
boss1:SetPoint("TOPRIGHT",UIParent,"TOP",-5,-5)

local boss2 = oUF:Spawn("boss2", "oUF_Boss2")
boss2:SetPoint("LEFT", oUF_Boss1, "RIGHT", 20, 0)

local boss3 = oUF:Spawn("boss3", "oUF_Boss3")
boss3:SetPoint("RIGHT", oUF_Boss1, "LEFT",-20,0)

local boss4 = oUF:Spawn("boss4", "oUF_Boss4")
boss4:SetPoint("LEFT", oUF_Boss2, "RIGHT", 20,0)
--
-- local boss1 = oUF:Spawn("target", "oUF_Boss1")
-- boss1:SetPoint("TOPRIGHT",UIParent,"TOP",-5,-5)
--
-- local bosss2 = oUF:Spawn("target", "oUF_Boss2")
-- boss2:SetPoint("LEFT", oUF_Boss1, "RIGHT", 20, 0)
--
-- local bosss3 = oUF:Spawn("target", "oUF_Boss3")
-- boss3:SetPoint("RIGHT", oUF_Boss1, "LEFT",-20,0)
--
-- local bosss4 = oUF:Spawn("target", "oUF_Boss4")
-- boss4:SetPoint("LEFT", oUF_Boss2, "RIGHT", 20,0)
