-- originally by kameelyan@wowinterface
-- heavily modified for SanUI by Shimmer of EU-Mal'Ganis

local S,C = unpack(SanUI)
local _, ns = ...
local oUF = TukuiUnitFrameFramework

ns._Objects = {}
ns._Headers = {}

local BAR_TEXTURE = S.GetTexture(C["UnitFrames"].HealthTexture)
local TEXT_FONT = C["Medias"].Font

local fontcolor = {1, 1, 1, 1}
local hpBarColor = {.1,.1,.1, 1}
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

local function CreateUnitFrame(self, unit)
	local BarWidth = 150
	local BarHeight = 20

	self:SetSize(BarWidth, BarHeight)

	local hpBar = CreateFrame("StatusBar",nil, self)
	hpBar:SetPoint("TOPLEFT", self, "TOPLEFT", 1, -1)
	hpBar:SetSize(BarWidth - 2, BarHeight - 2)
	hpBar:SetStatusBarTexture(BAR_TEXTURE)
	hpBar:GetStatusBarTexture():SetHorizTile(true)
	hpBar:SetStatusBarColor(0.3,0.3,0.3,1)	
	hpBar:SetFrameStrata("MEDIUM")
	hpBar.frequentUpdates = true
	hpBar.colorHealth = false
	
	self.Health = hpBar
	
	local hpBarBG = CreateFrame("Frame",nil,hpBar)
	hpBarBG:Point("TOPLEFT",hpBar,"TOPLEFT",-2,2)
	hpBarBG:Point("BOTTOMRIGHT",hpBar,"BOTTOMRIGHT",2,-2)
	hpBarBG:SetTemplate()
	hpBarBG:SetBackdropColor(0,0,0,1)
	hpBarBG:SetFrameStrata("MEDIUM")
	hpBarBG:SetFrameLevel(hpBar:GetFrameLevel()-1)
	
	self.Health.bg = hpBarBG
	
	local hpText = hpBar:CreateFontString(nil, "Overlay")
	hpText:SetFont(TEXT_FONT, fontSize)
	hpText:SetShadowOffset(.8,-.8)
	hpText:SetTextColor(unpack(fontcolor))
	hpText:SetJustifyH("RIGHT")
	hpText:SetPoint("RIGHT", hpBar, "RIGHT", -2, 0)
	self.hpText = hpText
	
	self:Tag(hpText,"[BossBars:health]%")
	
	local PowerBar = CreateFrame("StatusBar", nil, self)
	PowerBar:SetFrameLevel(self.Health:GetFrameLevel())
	PowerBar:SetSize(98, 13)
	PowerBar:SetStatusBarTexture(BAR_TEXTURE)
	PowerBar:GetStatusBarTexture():SetHorizTile(false)
	PowerBar:SetFrameStrata(hpBar:GetFrameStrata())
	PowerBar:SetFrameLevel(hpBar:GetFrameLevel()+2)
	PowerBar:SetStatusBarColor(0.3,0.3,0.3,1)
	PowerBar:SetPoint("CENTER", self.Health, "BOTTOM", 0, -6)
	
	PowerBar.frequentUpdates = true
	PowerBar.colorPower = false
	self.Power = PowerBar
	
	local powerBarBG = CreateFrame("Frame",nil,PowerBar)
	powerBarBG:Point("TOPLEFT",PowerBar,"TOPLEFT",-2,2)
	powerBarBG:Point("BOTTOMRIGHT",PowerBar,"BOTTOMRIGHT",2,-2)
	powerBarBG:SetTemplate()
	powerBarBG:SetBackdropColor(0,0,0,1)
	powerBarBG:SetFrameStrata(PowerBar:GetFrameStrata())
	powerBarBG:SetFrameLevel(PowerBar:GetFrameLevel()-1)
	
	self.Power.bg = powerBarBG
	
	local powerText = PowerBar:CreateFontString(nil, "Overlay")
	powerText:SetFont(TEXT_FONT, fontSize-1)
	powerText:SetShadowOffset(.8,-.8)
	powerText:SetTextColor(unpack(fontcolor))
	powerText:SetJustifyH("RIGHT")
	powerText:SetPoint("RIGHT", PowerBar, "RIGHT", -4, 0)
	
	self:Tag(powerText, "[BossBars:ppDetailed]")

	local Name = hpBar:CreateFontString(nil, "Overlay")
	Name:SetFont(TEXT_FONT, fontSize)
	Name:SetShadowOffset(0,-1)
	Name:SetTextColor(unpack(fontcolor))
	Name:SetJustifyH("LEFT")
	Name:SetPoint("LEFT", hpBar, "LEFT", 2, 0)
	Name:SetSize(BarWidth-50, BarHeight - 2)
	
	self:Tag(Name, "[name]")
	
	local castbar = CreateFrame('StatusBar', nil, self)
	castbar:SetFrameStrata("HIGH")
	castbar:Point("TOP",self.Power,"BOTTOM",0,2)
	castbar:SetWidth(BarWidth - 2 )
	castbar:SetHeight(BarHeight - 2)
	castbar:SetStatusBarTexture(BAR_TEXTURE)	
	castbar:SetFrameStrata(self.Health:GetFrameStrata())
	castbar:SetFrameLevel(self.Health:GetFrameLevel())
	castbar:GetStatusBarTexture():SetHorizTile(true)
	castbar:SetStatusBarColor(29/255, 63/255, 72/255, 1)
	castbar.PostCastStart = S.CheckCast
	castbar.PostChannelStart = S.CheckChannel
	
	self.Castbar = castbar
	
	local castBarBG = CreateFrame("Frame",nil,self.Castbar)
	castBarBG:Point("TOPLEFT",self.Castbar,"TOPLEFT",-2,2)
	castBarBG:Point("BOTTOMRIGHT",self.Castbar,"BOTTOMRIGHT",2,-2)
	castBarBG:SetTemplate()
	castBarBG:SetBackdropColor(0,0,0,1)
	castBarBG:SetFrameStrata(self.Castbar:GetFrameStrata())
	castBarBG:SetFrameLevel(self.Castbar:GetFrameLevel()-1)
	
	self.Castbar.bg = castBarBG
	
	local castbarText = self.Castbar:CreateFontString(nil, 'OVERLAY')
	castbarText:SetPoint('LEFT', self.Castbar, 4, 0)
	castbarText:SetSize((BarWidth-2)* (2/3), BarHeight - 2)
	castbarText:SetFont(TEXT_FONT, fontSize)
	castbarText:SetJustifyH("LEFT")
	castbarText:SetShadowOffset(.8,-.8)
	castbarText:SetTextColor(unpack(fontcolor))
	
	self.Castbar.Text = castbarText

	local castbarTime = self.Castbar:CreateFontString(nil, 'OVERLAY')
	castbarTime:SetPoint('RIGHT', self.Castbar, -4, 0)
	castbarTime:SetSize((BarWidth-2.1) * (1/3), BarHeight - 2.1)
	castbarTime:SetFont(TEXT_FONT, fontSize)
	castbarTime:SetShadowOffset(.8,-.8)
	castbarTime:SetTextColor(unpack(fontcolor))
	castbarTime:SetJustifyH("RIGHT")
	self.Castbar.CustomTimeText = function(_, t)
		self.Castbar.Time:SetText(("%.1f/%.1f"):format(self.Castbar.castIsChanneled and t or self.Castbar.max - t, self.Castbar.max))
	end

	self.Castbar.Time = castbarTime
	
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
	AltPowerBar:SetStatusBarColor(0.3,0.3,0.3,1)
	AltPowerBar:SetAllPoints(PowerBar)
	
	self.AltPowerBar = AltPowerBar
	
	local altBarBG = CreateFrame("Frame",nil,AltPowerBar)
	altBarBG:Point("TOPLEFT",AltPowerBar,"TOPLEFT",-2,2)
	altBarBG:Point("BOTTOMRIGHT",AltPowerBar,"BOTTOMRIGHT",2,-1)
	altBarBG:SetTemplate()
	altBarBG:SetFrameStrata(AltPowerBar:GetFrameStrata())
	altBarBG:SetFrameLevel(AltPowerBar:GetFrameLevel()-1)
	
	self.AltPowerBar.bg = altBarBG
	
	local pbText = AltPowerBar:CreateFontString(nil, "Overlay")
	pbText:SetFont(TEXT_FONT, fontSize-1)
	pbText:SetShadowOffset(.8,-.8)
	pbText:SetTextColor(unpack(fontcolor))
	pbText:SetJustifyH("RIGHT")
	pbText:SetPoint("RIGHT", AltPowerBar, "RIGHT", -4, 0)
	self:Tag(pbText, "[BossBars:altpower]")
	
	self.AltPowerBar.Text = pbText

	local RaidIcon = self.Health:CreateTexture(nil, "OVERLAY")
	RaidIcon:Height(16)
	RaidIcon:Width(16)
	RaidIcon:SetPoint("CENTER", self, "TOP",0,-1)
	RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\raidicons.blp")
	RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
	
	self.RaidIcon = RaidIcon
	
	local range = {insideAlpha = 1, outsideAlpha = C["Raid"].RangeAlpha}
	
	self.Range = range

	-- highlight
	local glowBorder = {edgeFile = C["Medias"].Blank, edgeSize = S.Scale(1)}
	local HighlightTarget = CreateFrame("Frame", nil, self)
	HighlightTarget:SetAllPoints(self.Health.bg)
	HighlightTarget:SetBackdrop(glowBorder)
	HighlightTarget:SetFrameLevel(self:GetFrameLevel() + 1)
	HighlightTarget:SetBackdropBorderColor(0.6,0.6,0.6,1)
	
	self:RegisterEvent("PLAYER_TARGET_CHANGED", function(self,event,unit)
			if UnitIsUnit("target", self.unit) then
				self.HighlightTarget:SetBackdropBorderColor(1,1,1)
			else
				self.HighlightTarget:SetBackdropBorderColor(0.6,0.6,0.6)
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
	
	hpBar.frequentUpdates = true
	hpBar.colorHealth = false
	self.Health = hpBar
	
	local Name = hpBar:CreateFontString(nil, "Overlay")
	Name:SetFont(TEXT_FONT, 13)
	Name:SetShadowOffset(.8,-.8)
	Name:SetTextColor(unpack(fontcolor))
	Name:SetJustifyH("LEFT")
	Name:SetPoint("CENTER", hpBar, "BOTTOM", 0, 2)
	
	self:Tag(Name, "[name]")	
end

------------------------------------------------------------------------------

oUF:RegisterStyle("oUF_BossBars", CreateUnitFrame)

oUF:SetActiveStyle("oUF_BossBars")

local boss1 = oUF:Spawn("boss1", "oUF_Boss1")
boss1:SetPoint("TOPRIGHT",UIParent,"TOP",-5,-5)

local boss2 = oUF:Spawn("boss2", "oUF_Boss2")
boss2:SetPoint("LEFT", oUF_Boss1, "RIGHT", 20, 0)

local boss3 = oUF:Spawn("boss3", "oUF_Boss3")
boss3:SetPoint("RIGHT", oUF_Boss1, "LEFT",-20,0)

local boss4 = oUF:Spawn("boss4", "oUF_Boss4")
boss4:SetPoint("LEFT", oUF_Boss2, "RIGHT", 20,0)