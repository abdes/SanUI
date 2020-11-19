-- originally by kameelyan@wowinterface
-- heavily modified for SanUI by Tavore of EU-Kargath

local addonName, addon = ...
local S,C = unpack(addon)
local oUF = addon.oUF

local Scale = S.Toolkit.Functions.Scale
local ALTERNATE_POWER_INDEX = ALTERNATE_POWER_INDEX

local BAR_TEXTURE = C["Medias"].Blank
local TEXT_FONT = C["Medias"].Font
local fontcolor = {0.9, 0.9, 0.9, 1}
local fontSize = 12
local bordercolor = {0.3, 0.3, 0.3, 1}
local barcolor = { 0.1, 0.1, 0.1, 1}
local barbgcolor = { 29/255, 63/255, 72/255, 1 }

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

oUF.Tags.Events['BossBars:altpower'] = 'UNIT_POWER_UPDATE'
oUF.Tags.Methods['BossBars:altpower'] = function(unit)
	local cur = UnitPower(unit, ALTERNATE_POWER_INDEX)
	local max = UnitPowerMax(unit, ALTERNATE_POWER_INDEX)
	if(max > 0 and not UnitIsDeadOrGhost(unit)) then
		return ("%s/%s"):format(valShort(cur),valShort(max))
	end
end

oUF.Tags.Events['BossBars:health'] = "UNIT_HEALTH UNIT_MAXHEALTH"
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

	local health = CreateFrame("StatusBar",nil, self)
	health:SetPoint("TOPLEFT", self, "TOPLEFT", S.scale1, -S.scale1)
	health:SetSize(BarWidth - 2, BarHeight - 2)
	health:SetStatusBarTexture(BAR_TEXTURE)
	health:SetStatusBarColor(unpack(barcolor))	
	health:SetFrameStrata("MEDIUM")
	health.colorHealth = false
	health.colorDisconnected = false
	health.colorClass = false
	health.colorTapping = false
	health.colorClassNPC = false
	health.colorClassPet = false
	health.colorReaction = false
	health.colorSmooth = false
	health.colorHealth = false
	health.Smooth = true
	self.Health = health
	
	self:CreateBackdrop()
	self.Backdrop:SetBackdropColor(unpack(barbgcolor))
	
	-- highlight
	local glowBorder = {edgeFile = C["Medias"].Blank, edgeSize = S.scale1}
	local HighlightTarget = CreateFrame("Frame", nil, self, "BackdropTemplate")
	HighlightTarget:SetAllPoints()
	HighlightTarget:SetBackdrop(glowBorder)
	HighlightTarget:SetFrameLevel(self:GetFrameLevel() + 1)
	HighlightTarget:SetBackdropBorderColor(unpack(C.General.BorderColor))
	
	self:RegisterEvent("PLAYER_TARGET_CHANGED", function(self,event,unit)
			if UnitIsUnit("target", self.unit) then
				self.HighlightTarget:SetBackdropBorderColor(1,1,1)
			else
				self.HighlightTarget:SetBackdropBorderColor(unpack(bordercolor))
			end
		end, true)
		
	self.HighlightTarget = HighlightTarget
	
	local Name = health:CreateFontString(nil, "Overlay")
	Name:SetFont(TEXT_FONT, fontSize)
	Name:SetShadowOffset(0,-1)
	Name:SetTextColor(unpack(fontcolor))
	Name:SetJustifyH("LEFT")
	Name:SetPoint("LEFT", health, "LEFT", 2, 0)
	Name:SetSize(BarWidth-50, BarHeight - 2)
	self.name = Name
	self:Tag(Name, "[name]")
	
	local hpText = health:CreateFontString(nil, "Overlay")
	hpText:SetFont(TEXT_FONT, fontSize)
	hpText:SetShadowOffset(.8,-.8)
	hpText:SetTextColor(unpack(fontcolor))
	hpText:SetJustifyH("RIGHT")
	hpText:SetPoint("RIGHT", health, "RIGHT", -2, 0)
	self.hpText = hpText	
	self:Tag(hpText,"[BossBars:health]%")
	
	local power = CreateFrame("StatusBar", nil, self)
	power:SetFrameLevel(self.Health:GetFrameLevel())
	power:SetSize(98, 13)
	power:SetStatusBarTexture(BAR_TEXTURE)
	power:SetFrameStrata(health:GetFrameStrata())
	power:SetFrameLevel(health:GetFrameLevel()+2)
	power:SetStatusBarColor(unpack(barcolor))
	power:SetPoint("CENTER", self.Health, "BOTTOM", 0, -S.scale6)
	power:CreateBackdrop()
	power.Backdrop:SetBackdropColor(unpack(barbgcolor))
	power.Backdrop:ClearAllPoints()
	power.Backdrop:SetPoint("TOPLEFT", power, -S.scale1, S.scale1)
	power.Backdrop:SetPoint("BOTTOMRIGHT", power,  S.scale1, -S.scale1)
	power.colorPower = false
	self.Power = power
	
	local powerText = power:CreateFontString(nil, "Overlay")
	powerText:SetFont(TEXT_FONT, fontSize-1)
	powerText:SetShadowOffset(.8,-.8)
	powerText:SetTextColor(unpack(fontcolor))
	powerText:SetPoint("RIGHT", power, "RIGHT", -S.scale4, -S.scale1)
	powerText:SetJustifyH("RIGHT")
	powerText:SetJustifyV("MIDDLE")	
	
	self:Tag(powerText, "[BossBars:ppDetailed]")

	local castbar = CreateFrame('StatusBar', nil, self)
	castbar:SetFrameStrata("HIGH")
	castbar:SetPoint("TOP",self.Power,"BOTTOM",0,S.scale2)
	castbar:SetWidth(BarWidth - 2 )
	castbar:SetHeight(BarHeight - 2)
	castbar:SetStatusBarTexture(BAR_TEXTURE)	
	castbar:SetFrameStrata(self.Health:GetFrameStrata())
	castbar:SetFrameLevel(self.Health:GetFrameLevel())
	castbar:SetStatusBarColor(unpack(barcolor))
	castbar:CreateBackdrop()
	castbar.Backdrop:SetBackdropColor(unpack(barbgcolor))
	castbar.Backdrop:SetPoint("TOPLEFT", castbar, -S.scale1, S.scale1)
	castbar.Backdrop:SetPoint("BOTTOMRIGHT", castbar,  S.scale1, -S.scale1)
	
	self.Castbar = castbar
	
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
    Spark:SetPoint("CENTER", self.Castbar:GetStatusBarTexture(), "RIGHT", 0, 0)
	
	self.Castbar.Spark = Spark
	
	-- alt power bar
	local Altpower = CreateFrame("StatusBar", nil, self)
	Altpower:SetFrameLevel(power:GetFrameLevel() + 2)
	Altpower:SetSize(98, 13)
	Altpower:SetStatusBarTexture(BAR_TEXTURE)
	Altpower:SetFrameStrata(power:GetFrameStrata())
	Altpower:SetFrameLevel(power:GetFrameLevel()+2)
	Altpower:SetStatusBarColor(unpack(barcolor))
	Altpower:SetAllPoints(power)
	Altpower:CreateBackdrop()
	Altpower.Backdrop:SetBackdropColor(unpack(barbgcolor))
	Altpower.Backdrop:ClearAllPoints()
	Altpower.Backdrop:SetPoint("TOPLEFT", Altpower, -S.scale1, S.scale1)
	Altpower.Backdrop:SetPoint("BOTTOMRIGHT", Altpower,  S.scale1, -S.scale1)
	self.Altpower = Altpower
	self.Altpower.PostUpdate = function(self, unit, cur, min, max)
		if max == 0 then
			self:Hide()
		else
			self:Show()
		end
	end
	
	local pbText = Altpower:CreateFontString(nil, "Overlay")
	pbText:SetFont(TEXT_FONT, fontSize-1)
	pbText:SetShadowOffset(.8,-.8)
	pbText:SetTextColor(unpack(fontcolor))
	pbText:SetJustifyH("RIGHT")
	pbText:SetPoint("RIGHT", Altpower, "RIGHT", -4, 0)
	self:Tag(pbText, "[BossBars:altpower]")
	self.Altpower.Text = pbText
	
	self.Altpower:Hide()

	local RaidIcon = self.Health:CreateTexture(nil, "OVERLAY")
	RaidIcon:SetHeight(Scale(16))
	RaidIcon:SetWidth(Scale(16))
	RaidIcon:SetPoint("CENTER", self, "TOP",0,-S.scale1)
	RaidIcon:SetTexture("Interface\\AddOns\\Tukui\\medias\\textures\\Others\\RaidIcons.blp")
	RaidIcon.SetTexture = S.dummy -- idk why but RaidIcon:GetTexture() is returning nil in oUF, resetting icons to default ... stop it!
	self.RaidTargetIndicator = RaidIcon
	
	local range = {insideAlpha = 1, outsideAlpha = C["Raid"].RangeAlpha}
	self.Range = range

	
--[=[
	local auras = CreateFrame("Frame", nil, self)
	auras:SetPoint("RIGHT", self.Health,-Scale(33), 0)
	auras:SetSize(16, BarHeight - 4) --2 auras, size 6, dist 4
	Name:SetPoint("RIGHT",auras,"LEFT")
	auras.presentAlpha = 1
	auras.missingAlpha = 0
	auras.icons = {}
	
	auras.PostCreateIcon = function(self, icon)
		if icon.icon and not icon.hideIcon then
			icon:CreateBackdrop()
			icon.icon:SetPoint("TOPLEFT", S.scale1, -S.scale1)
			icon.icon:SetPoint("BOTTOMRIGHT", -S.scale1, S.scale1)
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
	auras:SetFrameStrata(self.Health:GetFrameStrata())
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
			
			icon:SetWidth(S.scale6)
			icon:SetHeight(S.scale6)

			if type(spell[2]) == "string" then
				icon:SetPoint(spell[2], 0, 0)
			elseif type(spell[2]) == "table" then
				icon:SetPoint(unpack(spell[2]))
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
			icon:Hide()
		end
		
	end
	
	self.NotAuraWatch = auras
	]=]
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
