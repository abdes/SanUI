local cfg = oUF_Hank_config
local oUF_Hank = {}
oUF_Hank_hooks = {}
local oUF = TukuiUnitFrameFramework

local _, ns = ...
--local oUF = oUFTukui

ns._Objects = {}
ns._Headers = {}

local TukuiDB, TukuiCF = unpack(Tukui)
local db = TukuiCF["UnitFrames"]
local font1 = TukuiCF["Medias"].Font
local font2 = TukuiCF["Medias"].UnitFrameFont
local Normal = TukuiCF["Medias"].Normal
local glowTex = TukuiCF["Medias"].Glow
local bubbleTex = TukuiCF["Medias"].Bubble

local backdrop = {
	bgFile = TukuiCF["Medias"].Blank,
	insets = {top = -TukuiDB.Mult, left = -TukuiDB.Mult, bottom = -TukuiDB.Mult, right = -TukuiDB.Mult},
}
TukuiDB.SetFontString = function(parent, fontName, fontHeight, fontStyle)
	local fs = parent:CreateFontString(nil, "OVERLAY")
	fs:SetFont(fontName, fontHeight, fontStyle)
	fs:SetJustifyH("LEFT")
	fs:SetShadowColor(0, 0, 0)
	fs:SetShadowOffset(1.25, -1.25)
	return fs
end
	
oUF_Hank.digitTexCoords = {
	["1"] = {1, 20},
	["2"] = {21, 31},
	["3"] = {53, 30},
	["4"] = {84, 33},
	["5"] = {118, 30},
	["6"] = {149, 31},
	["7"] = {181, 30},
	["8"] = {212, 31},
	["9"] = {244, 31},
	["0"] = {276, 31},
	["%"] = {308, 17},
	["X"] = {326, 31}, -- Dead
	["G"] = {358, 36}, -- Ghost
	["Off"] = {395, 23}, -- Offline
	["B"] = {419, 42}, -- Boss
	["height"] = 42,
	["texWidth"] = 512,
	["texHeight"] = 128
}
local function valShort(value)
	if(value >= 1e6) then
		return ("%.2f"):format(value / 1e6):gsub("%.?0+$", "") .. "m"
	elseif(value >= 1e4) then
		return ("%.1f"):format(value / 1e3):gsub("%.?0+$", "") .. "k"
	else
		return value
	end
end



local function UpdateEclipseText(self)
	local ep = UnitPower("player", SPELL_POWER_ECLIPSE)
	local ed = GetEclipseDirection()
	
	self.Text:SetText(ep)
	
	
	if ed =='moon' and 0 <= ep and ep <= 40 then
		self.Text:SetTextColor(1,0,0)
	elseif ed == 'sun' and -40 <= ep and ep <= 0 then
		self.Text:SetTextColor(1,0,0)
	else
		self.Text:SetTextColor(1,1,1)
	end
	
	-- if (ep == 0) then
		-- self.Text:SetText("0")
	-- elseif (ep < 0 ) then --sitzt korrekt 
		-- --self.Text:SetPoint("CENTER",self.LunarBar.icon)--,"TOPRIGHT")
		-- self.Text:SetText(ep)
	-- elseif (ep > 0) then
		-- --self.Text:SetPoint("CENTER",self.SolarBar.icon) --,"TOPLEFT")
		
	-- end
			
	if (ed == "sun") then
		self.Text2:SetText(">")
	elseif (ed == "moon") then
		self.Text2:SetText("<")
	else
		self.Text2:SetText("-")
	end
end

oUF.Tags.Events["mergedPower"] = "UNIT_POWER"
oUF.Tags.Methods["mergedPower"] = function(unit)
   if not UnitIsDeadOrGhost(unit) then
      local curAlt = UnitPower(unit, ALTERNATE_POWER_INDEX)
      local maxAlt = UnitPowerMax(unit, ALTERNATE_POWER_INDEX)
      if maxAlt > 0  then
         return ("%s/%s"):format(valShort(curAlt),valShort(maxAlt))
      else
         local cur = UnitPower(unit)
         local max = UnitPowerMax(unit)
         
		 return ("%s/%s"):format(valShort(cur),valShort(max))

      end
   end
end

oUF_Hank_hooks.ReanchorDebuffs = {
sharedStyle = function(self, unit, isSingle)

	if self.Debuffs and self.Buffs then
		local col = 0
		local row = 0
		--local gap = self.Buffs.spacing
		local sizex = self.Buffs.size + cfg.AuraSpacing
		-- local sizey = self.Buffs.size
		local cols = math.floor(self.Buffs:GetWidth() / sizex + .5)
		-- local rows = math.floor(self.Buffs:GetHeight() / sizey + .5)
		
		self.Buffs.buffsPerRow = cols	
	end

end,

PreSetPosition = function(buffs, max)
	local unit = buffs:GetParent().unit
	
	if unit == "target" then
		if buffs.visibleBuffs > 0 and buffs.buffsPerRow  and buffs.buffsPerRow  > 0 then
			-- Anchor debuff frame to bottomost buff icon, i.e the last buff row
			buffs:GetParent().Debuffs:ClearAllPoints()
			local rows = math.ceil(buffs.visibleBuffs/buffs.buffsPerRow)
			buffs:GetParent().Debuffs:SetPoint("TOPLEFT", buffs[(rows-1)*buffs.buffsPerRow + 1], "BOTTOMLEFT", 0, -cfg.AuraSpacing -2)
		else
			buffs:GetParent().Debuffs:SetPoint("TOPLEFT", buffs:GetParent(), "BOTTOMLEFT", 0, -25)
			
		end
	elseif (unit == "player" or unit == "focus") then
		if buffs.visibleBuffs > 0 then --and buffs.buffsPerRow  and buffs.buffsPerRow  > 0 then
			-- Anchor debuff frame to bottomost buff icon, i.e the last buff row
			-- buffs:GetParent().Debuffs:ClearAllPoints()
			-- local rows = math.ceil(buffs.visibleBuffs/buffs.buffsPerRow)
			-- buffs:GetParent().Debuffs:SetPoint("TOPRIGHT", buffs[(rows-1)*buffs.buffsPerRow + 1], "BOTTOMRIGHT", 0, -cfg.AuraSpacing -2)
			buffs:GetParent().Debuffs:SetPoint("TOPRIGHT", buffs, "BOTTOMRIGHT", 0, -cfg.AuraSpacing -2)
		else
			buffs:GetParent().Debuffs:SetPoint("TOPRIGHT", buffs:GetParent(), "BOTTOMRIGHT", 0, -25)
			
		end
	end
end,
}

oUF_Hank_hooks.ButtonStyleTuk = {

PostCreateIcon = function(icons, icon)
	
	if(icons.__owner.unit == "player" or icons.__owner.unit == "target" ) then
		icon:SetTemplate()
		
		icon.remaining = TukuiDB.SetFontString(icon, TukuiCF["Medias"].Font,11, "THINOUTLINE")
		icon.remaining:SetPoint("CENTER", TukuiDB.Scale(1), 0)
		
		icon.cd.noOCC = true		 	-- hide OmniCC CDs
		icon.cd.noCooldownCount = true	-- hide CDC CDs
		
		icon.cd:SetReverse()
		icon.icon:SetPoint("TOPLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
		icon.icon:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
		icon.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		icon.icon:SetDrawLayer('ARTWORK')
		
		icon.count:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(3), 0) --TukuiDB.Scale(1.5))
		icon.count:SetJustifyH("RIGHT")
		icon.count:SetFont(TukuiCF["Medias"].Font, 9, "THICKOUTLINE")
		icon.count:SetTextColor(0.84, 0.75, 0.65)
		
		icon.overlayFrame = CreateFrame("frame", nil, icon, nil)
		icon.cd:SetFrameLevel(icon:GetFrameLevel() + 1)
		icon.cd:ClearAllPoints()
		icon.cd:SetPoint("TOPLEFT", icon, "TOPLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
		icon.cd:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
		icon.overlayFrame:SetFrameLevel(icon.cd:GetFrameLevel() + 1)	   
		icon.overlay:SetParent(icon.overlayFrame)
		icon.count:SetParent(icon.overlayFrame)
		icon.remaining:SetParent(icon.overlayFrame)
	end
end,

OnEnterAura = function(self, icon)
	
	if(self.unit == "player" or self.unit == "target") then
		
		self.HighlightAura:SetTemplate()
		self.HighlightAura:SetFrameLevel(6) -- cd on icon seems to have frame level 5
		
		self.HighlightAura.icon.remaining = TukuiDB.SetFontString(icon, TukuiCF["Medias"].Font, 11, "THINOUTLINE")
		self.HighlightAura.icon.remaining:SetPoint("CENTER", TukuiDB.Scale(1), 0)
		
		self.HighlightAura.icon:SetPoint("TOPLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
		self.HighlightAura.icon:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
		self.HighlightAura.icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		self.HighlightAura.icon:SetDrawLayer('ARTWORK')
		self.HighlightAura.icon.overlayFrame = CreateFrame("frame", nil, icon, nil)
		--self.HighlightAura.overlayFrame:SetFrameLevel(icon.cd:GetFrameLevel() + 1)	   
		--self.HighlightAura.overlay:SetParent(icon.overlayFrame)
		--self.HighlightAura.count:SetParent(icon.overlayFrame)
		self.HighlightAura.icon.remaining:SetParent(icon.overlayFrame)
		self.HighlightAura.oldicon = icon
		
		icon.count:SetPoint("BOTTOMRIGHT", self.HighlightAura, TukuiDB.Scale(3), 0) --TukuiDB.Scale(1.5))
		icon.count:SetJustifyH("RIGHT")
		icon.count:SetFont(TukuiCF["Medias"].Font, 9*cfg.AuraMagnification, "THICKOUTLINE")
	end
end,

OnLeaveAura = function(self)
	if self.HighlightAura.oldicon then
		self.HighlightAura.oldicon.count:SetPoint("BOTTOMRIGHT",self.HighlightAura.oldicon, TukuiDB.Scale(3), 0) --TukuiDB.Scale(1.5))
		self.HighlightAura.oldicon.count:SetJustifyH("RIGHT")
		self.HighlightAura.oldicon.count:SetFont(TukuiCF["Medias"].Font, 9, "THICKOUTLINE")
	end
end,
}

-- oUF.Tags.Methods["classColor"] = function(unit)
	-- local color = RAID_CLASS_COLORS[select(2, UnitClass(unit))]
	-- if not color then
		-- color = {}
		-- color.r = 1
		-- color.g = 1
		-- color.b = 1
	-- end
	
	-- return ("FF%.2x%.2x%.2x"):format(color.r * 255, color.g * 255, color.b * 255)
-- end

-- oUF_Hank_hooks.ClassToT_etc = {
	-- sharedStyle = function(self, unit, isSingle)
		-- if unit == "targettarget" or unit == "focustarget" then self:Tag(name, "|c[classColor]\226\128\186  [smartName] @ [perhp]%|r")
		-- elseif unit == "targettargettarget" then self:Tag(name, "|c[classColor]\194\187 [smartName] @ [perhp]%|r") end
	-- end,
-- }

oUF_Hank_hooks.HealthColored = {
	UpdateHealth = function(self)
		if self.unit == "player" then
		
			local h, hMax
			
			if UnitHasVehicleUI("player") then
				h, hMax = UnitHealth("pet"), UnitHealthMax("pet")
			else
				h, hMax = UnitHealth(self.unit), UnitHealthMax(self.unit)
			end

			if UnitIsConnected(self.unit) and not UnitIsGhost(self.unit) and not UnitIsDead(self.unit) then
				for i = self.unit:find("boss") and 4 or 1, 4 do
					self.healthFill[5 - i]:SetVertexColor(1 - h / hMax, h / hMax, 0)
				end
			end
		end
	end,
}

oUF_Hank_hooks.PetBattleHide = {
	sharedStyle = function(self,unit,isSingle)
		hooksecurefunc(TukuiDB.Panels,"Enable",function()
			self:SetParent(TukuiDB["Panels"].PetBattleHider)
		end)
	end
}

oUF_Hank_hooks.customCastbar = {

sharedStyle = function(self, unit, isSingle)
	if (unit == "player" or unit == "target" or unit == "focus" or unit:find("boss")) then
	
		--Construct castbar
		local castbar = CreateFrame("StatusBar", self:GetName().."_Castbar", self)
		castbar:SetStatusBarTexture(Normal)
			
		if (unit == "player" or unit:find("boss")) then
			castbar:SetPoint("TOPLEFT", self, "BOTTOMLEFT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
			castbar:SetHeight(TukuiDB.Scale(15))
			castbar:SetWidth(TukuiDB.Scale(150))
		elseif (unit == "target") then
			castbar:SetHeight(TukuiDB.Scale(15))
			castbar:SetWidth(TukuiDB.Scale(150))
			castbar:SetPoint("TOPLEFT",self,"BOTTOMLEFT",10,0)
		elseif (unit == "focus") then
			castbar:SetHeight(TukuiDB.Scale(22))
			castbar:SetWidth(TukuiDB.Scale(200))
			castbar:SetPoint("TOPRIGHT",self,"BOTTOMRIGHT",-TukuiDB.Scale(22),0)
		end
			
		castbar.CustomTimeText = TukuiDB["UnitFrames"].CustomCastTimeText
		castbar.CustomDelayText = TukuiDB["UnitFrames"].CustomCastDelayText
		castbar.PostCastStart = TukuiDB["UnitFrames"].CheckCast
		castbar.PostChannelStart = TukuiDB["UnitFrames"].CheckChannel
		
		self.Castbar = castbar
		
		-- Castbar background
		if (unit == "player" or unit == "target") then
			local castBarBG = CreateFrame("Frame",nil,castbar)
			castBarBG:Point("TOPLEFT",castbar,"TOPLEFT",-2,2)
			castBarBG:Point("BOTTOMRIGHT",castbar,"BOTTOMRIGHT",2,-2)
			castBarBG:SetTemplate()
			castBarBG:SetFrameStrata(castbar:GetFrameStrata())
			castbar:SetFrameLevel(6)
			castBarBG:SetFrameLevel(5)
			self.Castbar.bg = castBarBG
		elseif (unit == "focus") then	
			local castBarBG = CreateFrame("Frame",nil,castbar)
			castBarBG:SetAllPoints(castbar)
			castBarBG:SetBackdrop({
					  bgFile = TukuiCF.Medias.Normal 
					  })
			castBarBG:SetBackdropColor(.1,.1,.1)
			castBarBG:SetFrameStrata(castbar:GetFrameStrata())
			castbar:SetFrameLevel(6)
			castBarBG:SetFrameLevel(5)	
			self.Castbar.bg = castBarBG
		end	
		
		--Castbar latency texture
		if unit == "player" and TukuiCF["UnitFrames"].cblatency == true then
			castbar.safezone = castbar:CreateTexture(nil, "ARTWORK")
			castbar.safezone:SetTexture(Normal)
			castbar.safezone:SetVertexColor(0.69, 0.31, 0.31, 0.75)
			castbar.SafeZone = castbar.safezone
		end		

		--Castbar time string
		if(unit ~= "focus") then
			castbar.time = TukuiDB.SetFontString(castbar, font2, 12)--,"OUTLINE")
		else
			castbar.time = TukuiDB.SetFontString(castbar, font2, 16)--,"OUTLINE")
		end
		castbar.time:SetPoint("RIGHT", castbar, "RIGHT", TukuiDB.Scale(-4), 0)
		castbar.time:SetTextColor(0.84, 0.75, 0.65)
		castbar.time:SetShadowOffset(0.8,-0.8) 
		castbar.time:SetJustifyH("RIGHT")
		
		self.Castbar.Time = castbar.time

		--Castbar text string
		if(unit ~= "focus") then
			castbar.Text = TukuiDB.SetFontString(castbar,font2, 12)--,"OUTLINE")
		else
			castbar.Text = TukuiDB.SetFontString(castbar,font2, 16)--,"OUTLINE")
		end
		castbar.Text:SetJustifyV("MIDDLE")
		castbar.Text:SetShadowOffset(.8,-.8)
		castbar.Text:SetPoint("LEFT", castbar, "LEFT", TukuiDB.Scale(4), 0)
		castbar.Text:SetTextColor(0.84, 0.75, 0.65)
		castbar.Text:SetWidth(castbar:GetWidth()*0.68)
		castbar.Text:SetHeight(castbar:GetHeight()*0.9)
		
		--Icon for Castbar	
		if db.CastBarIcon == true then
			castbar.button = CreateFrame("Frame", nil, castbar)
				
			if (unit == "player") then
				castbar.button:Size(28)
			elseif (unit == "target") then
				castbar.button:Size(19)
			else
				castbar.button:Size(18)
			end
			
			castbar.button:SetTemplate()

			castbar.icon = castbar.button:CreateTexture(nil, "ARTWORK")
			castbar.icon:SetPoint("TOPLEFT", castbar.button, TukuiDB.Scale(2), TukuiDB.Scale(-2))
			castbar.icon:SetPoint("BOTTOMRIGHT", castbar.button, TukuiDB.Scale(-2), TukuiDB.Scale(2))
			castbar.icon:SetTexCoord(0.08, 0.92, 0.08, .92)
			
			if unit == "player" or unit:find("boss") then
				castbar.button:SetPoint("TOPRIGHT",self.Castbar.bg,"TOPLEFT",-TukuiDB.Scale(2),0)
			elseif unit == "target" then
				castbar.button:SetPoint("LEFT",self.Castbar.bg,"RIGHT",TukuiDB.Scale(2),0)
			end					
			
			self.Castbar.Icon = castbar.icon
		end
		
		--cast bar latency on player
		if unit == "player" and db.CastBarLatency == true then
			castbar.safezone = castbar:CreateTexture(nil, "ARTWORK")
			castbar.safezone:SetTexture(Normal)
			castbar.safezone:SetVertexColor(0.69, 0.31, 0.31, 0.75)
			castbar.SafeZone = castbar.safezone
		end
		
		--castbar Spark
		local Spark = castbar:CreateTexture(nil, "OVERLAY")
		Spark:SetSize(20, 20)
		Spark:SetBlendMode("ADD")

		self.Castbar.Spark = Spark
		
		-- GCD frame for player
		if (unit == "player") then
					
				self.GCD = CreateFrame("StatusBar", self:GetName().."_GCD", self)
				self.GCD:SetHeight(TukuiDB.Scale(5))
				self.GCD:SetWidth(TukuiDB.Scale(150))
				self.GCD:SetPoint('TOPLEFT',castbar, 'BOTTOMLEFT', 0, -TukuiDB.Scale(4))
				self.GCD:SetStatusBarTexture(Normal)
				self.GCD:SetStatusBarColor(0.8,0.8,0.8)
				
				local gcdcastborder = CreateFrame("Frame", nil, self.GCD)
				gcdcastborder:Size(1)
				gcdcastborder:Point("CENTER", health, "CENTER", 0, 0)
				gcdcastborder:SetTemplate("Transparent")
				gcdcastborder:ClearAllPoints()
				gcdcastborder:SetPoint("TOPLEFT", self.GCD, -TukuiDB.Scale(2), TukuiDB.Scale(2))
				gcdcastborder:SetPoint("BOTTOMRIGHT", self.GCD, TukuiDB.Scale(2), TukuiDB.Scale(-2))
				--gcdcastborder:SetFrameStrata("BACKGROUND")
				gcdcastborder:SetFrameStrata(self.GCD:GetFrameStrata())
				gcdcastborder:SetFrameLevel(self.GCD:GetFrameLevel()-1)
				
			-- if TukuiDB.MyClass == "DRUID" then
				-- self.shrooms = self:CreateFontString(nil, "OVERLAY")
				-- self.shrooms:SetFontObject("UFFontMedium")
				-- self.shrooms:SetPoint("TOPRIGHT",self,"TOPRIGHT",0,-4)
				-- self:Tag(self.shrooms,"[shrooms]")
			-- end
				
			-- if TukuiDB.MyClass == "DRUID" then
							
				-- local eclipseBar = CreateFrame('Frame', nil, self)
				-- eclipseBar:SetPoint("TOP", UIParent, "CENTER", 0, -180)
				-- eclipseBar:SetSize(self.Castbar:GetSize())
				-- eclipseBar:SetFrameStrata("BACKGROUND")
				-- eclipseBar:SetFrameLevel(8)
				-- eclipseBar:SetTemplate()
				-- eclipseBar:SetBackdropBorderColor(0,0,0,0)
				
				-- local eclipseborder = CreateFrame("Frame", nil, eclipseBar)
				-- eclipseborder:Size(1)
				-- eclipseborder:Point("CENTER", eclipseBar, "CENTER", 0, 0)
				-- eclipseborder:SetTemplate("Transparent")
				-- eclipseborder:ClearAllPoints()
				-- eclipseborder:SetPoint("TOPLEFT", eclipseBar, -TukuiDB.Scale(2), TukuiDB.Scale(2))
				-- eclipseborder:SetPoint("BOTTOMRIGHT", eclipseBar, TukuiDB.Scale(2), TukuiDB.Scale(-2))
				-- eclipseborder:SetFrameStrata("BACKGROUND")
				
				
				-- local lunarBar = CreateFrame('StatusBar', nil, eclipseBar)
				-- lunarBar:SetPoint('LEFT', eclipseBar, 'LEFT', 0, 0)
				-- lunarBar:SetSize(eclipseBar:GetWidth(), eclipseBar:GetHeight())
				-- lunarBar:SetStatusBarTexture(Normal)
				-- lunarBar:SetStatusBarColor(.30, .52, .90)
				-- eclipseBar.LunarBar = lunarBar
				
				-- -- lunarBar.iconBackground = CreateFrame("Frame",nil,lunarBar)
				-- -- lunarBar.iconBackground:Size(25)
				-- -- lunarBar.iconBackground:Point("RIGHT",lunarBar,"LEFT",-TukuiDB.Scale(4),0)
				-- -- lunarBar.iconBackground:SetTemplate("Transparent")

				-- -- local mytex
				-- -- _,_, mytex = GetSpellInfo(77492)
				-- -- lunarBar.icon = lunarBar.iconBackground:CreateTexture()
				-- -- lunarBar.icon:SetTexture(mytex)
				-- -- lunarBar.icon:SetPoint("TOPLEFT",lunarBar.iconBackground, TukuiDB.Scale(2), TukuiDB.Scale(-2))
				-- -- lunarBar.icon:SetPoint("BOTTOMRIGHT", lunarBar.iconBackground, TukuiDB.Scale(-2), TukuiDB.Scale(2))
				-- -- lunarBar.icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)	
				
				-- local solarBar = CreateFrame('StatusBar', nil, eclipseBar)
				-- solarBar:SetPoint('LEFT', lunarBar:GetStatusBarTexture(), 'RIGHT', 0, 0)
				-- solarBar:SetSize(eclipseBar:GetWidth(), eclipseBar:GetHeight())
				-- solarBar:SetStatusBarTexture(Normal)
				-- solarBar:SetStatusBarColor(.80, .82,  .60)
				-- eclipseBar.SolarBar = solarBar
				
				-- -- solarBar.iconBackground = CreateFrame("Frame",nil,solarBar)
				-- -- solarBar.iconBackground:Size(25)
				-- -- solarBar.iconBackground:Point("LEFT",lunarBar,"RIGHT",TukuiDB.Scale(4),0)
				-- -- solarBar.iconBackground:SetTemplate("Transparent")

				-- -- _,_, mytex = GetSpellInfo(79577)
				-- -- solarBar.icon = lunarBar.iconBackground:CreateTexture()
				-- -- solarBar.icon:SetTexture(mytex)
				-- -- solarBar.icon:SetPoint("TOPLEFT",solarBar.iconBackground, TukuiDB.Scale(2), TukuiDB.Scale(-2))
				-- -- solarBar.icon:SetPoint("BOTTOMRIGHT", solarBar.iconBackground, TukuiDB.Scale(-2), TukuiDB.Scale(2))
				-- -- solarBar.icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)	

				-- local eclipseBarText = eclipseBar:CreateFontString(nil, 'OVERLAY')
				-- eclipseBarText:SetPoint('BOTTOM', eclipseBar,"TOP",0,2)
				-- eclipseBarText:SetFont(font2, 22,"OUTLINE")
				-- eclipseBar.PostUpdatePower = UpdateEclipseText
				
				-- local eclipseBarText2 = solarBar:CreateFontString(nil, 'OVERLAY')
				-- eclipseBarText2:SetPoint('CENTER', lunarBar:GetStatusBarTexture(),'RIGHT',0,0)
				-- eclipseBarText2:SetFont(font2, 18,"OUTLINE")

				-- self.EclipseBar = eclipseBar
				-- self.EclipseBar.Text = eclipseBarText
				-- self.EclipseBar.Text2 = eclipseBarText2

				-- hooksecurefunc(TukuiDB.Panels,"Enable",function()
					-- eclipseBar:SetParent(TukuiDB["Panels"].PetBattleHider)
				-- end)
								
				-- local ed = GetEclipseDirection()
				
				-- if (ed == "sun") then
					-- self.EclipseBar.Text2:SetText(">")
				-- elseif (ed == "moon") then
					-- self.EclipseBar.Text2:SetText("<")
			    -- else
					-- self.EclipseBar.Text2:SetText("-")
				-- end
			-- end	
		
		end
		
		if (unit == "focus") then
			self.Buffs:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -TukuiDB.Scale(25))
		elseif (unit == "target") then 
			self.Buffs:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 10, -TukuiDB.Scale(25))
		end
		
		-- if unit == "target" and (select(2, UnitClass("player")) == "ROGUE" or select(2, UnitClass("player")) == "DRUID") then
			-- self.CPoints[1]:ClearAllPoints()
			-- self.CPoints[1]:SetPoint("BOTTOMRIGHT", self, "BOTTOMLEFT",0,TukuiDB.Scale(5))
			
			-- for i = 2, MAX_COMBO_POINTS do
				-- self.CPoints[i]:ClearAllPoints()
				-- self.CPoints[i]:SetPoint("BOTTOM", self.CPoints[i - 1], "TOP")
			-- end
		-- end
		
		if SanUI_FocusCastbar == "PvP" then
		
			if (unit == "focus") then
				self.Castbar:SetScale(1/oUF_Hank_config.FocusFrameScale)
				self.Castbar:ClearAllPoints()
				self.Castbar:SetHeight(TukuiDB.Scale(20))
				self.Castbar:SetWidth(TukuiDB.Scale(240))
				self.Castbar:SetPoint("CENTER", UIParent, "CENTER", 0, 250)
				
				self.Castbar.bg = CreateFrame("Frame", nil, self.Castbar)
				self.Castbar.bg:SetTemplate()
				self.Castbar.bg:SetPoint("TOPLEFT", TukuiDB.Scale(-2), TukuiDB.Scale(2))
				self.Castbar.bg:SetPoint("BOTTOMRIGHT", TukuiDB.Scale(2), TukuiDB.Scale(-2))
				self.Castbar.bg:SetFrameLevel(5)
				self.Castbar.bg:CreateShadow()
				
				
				self.Castbar.button = CreateFrame("Frame", nil, self.Castbar)
				self.Castbar.button:SetHeight(TukuiDB.Scale(40))
				self.Castbar.button:SetWidth(TukuiDB.Scale(40))
				self.Castbar.button:SetPoint("CENTER", 0, TukuiDB.Scale(50))
				self.Castbar.button:SetTemplate()

				self.Castbar.Icon = self.Castbar.button:CreateTexture(nil, "ARTWORK")
				self.Castbar.Icon:SetPoint("TOPLEFT", self.Castbar.button, TukuiDB.Scale(2), TukuiDB.Scale(-2))
				self.Castbar.Icon:SetPoint("BOTTOMRIGHT", self.Castbar.button, TukuiDB.Scale(-2), TukuiDB.Scale(2))
				self.Castbar.Icon:SetTexCoord(0.08, 0.92, 0.08, .92)
					
				self.Castbar.button:CreateShadow()	
				
				self.Buffs:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -TukuiDB.Scale(0))
			end
		end
		
		
	end	
end,
}

oUF_Hank_hooks.ChangeFocus = {
sharedStyle = function(self, unit, isSingle)
	
	if (unit == "focustarget") then	
		self.name:ClearAllPoints()
		self.name:SetPoint("RIGHT")
	end


	if (unit == "focus") then	
		
		for i=1,4 do
			self.health[i]:ClearAllPoints()
		end
		
		self.health[4]:SetPoint("RIGHT")
		self.health[3]:SetPoint("RIGHT", self.health[4], "LEFT")
		self.health[2]:SetPoint("RIGHT", self.health[3], "LEFT")
		self.health[1]:SetPoint("RIGHT", self.health[2], "LEFT")
		
		self.power:ClearAllPoints()
		self.name:ClearAllPoints()
		self.RaidIcon:ClearAllPoints()
		
		self.name:SetPoint("BOTTOMRIGHT",  self.power, "TOPRIGHT")
		self.power:SetPoint("BOTTOMRIGHT", self.health[1], "BOTTOMLEFT")
		self.RaidIcon:SetPoint("RIGHT",self.name,"LEFT",-10,0)
		self.RaidIcon:SetPoint("TOP", self, "TOP", 0, -5)
		
		
		self.Buffs.initialAnchor = "RIGHT" 
		self.Buffs["growth-x"] = "LEFT"
		self.Debuffs.initialAnchor = "RIGHT"
		self.Debuffs["growth-x"] = "LEFT"
		
	end
end,

PostUpdateName = function(self)
	
	if self.unit ~= "focus" then return end
	
	if (self.name) then
		self.RaidIcon:ClearAllPoints()
		self.RaidIcon:SetPoint("TOP", self, "TOP", 0, -5)
		-- Reanchor raid icon to the largest string (either name or power)
		if self.name:GetWidth() >= self.power:GetWidth() then
			self.RaidIcon:SetPoint("RIGHT", self.name, "LEFT", -10, 0)
		else
			self.RaidIcon:SetPoint("RIGHT", self.power, "LEFT", -10, 0)
		end
	end

end,

UpdateHealth = function(self)

	if self.unit ~= "focus" then return end
	
	local h, hMax
	
	-- In vehicle
	h, hMax = UnitHealth(self.unit), UnitHealthMax(self.unit)


	local status = (not UnitIsConnected(self.unit) or nil) and "Off" or UnitIsGhost(self.unit) and "G" or UnitIsDead(self.unit) and "X"
	
	if not status then
		local hPerc = ("%d%%"):format(h / hMax * 100 + 0.5)
		local len = string.len(hPerc)
		
		for i = 1, 4 do
				if i > len then
					self.health[5 - i]:Hide()
					self.healthFill[5 - i]:Hide()
				else
					local digit = string.sub(hPerc , -i, -i)
					
					self.health[5 - i]:SetSize(oUF_Hank.digitTexCoords[digit][2], oUF_Hank.digitTexCoords["height"])
					self.health[5 - i]:SetTexCoord(oUF_Hank.digitTexCoords[digit][1] / oUF_Hank.digitTexCoords["texWidth"], (oUF_Hank.digitTexCoords[digit][1] + oUF_Hank.digitTexCoords[digit][2]) / oUF_Hank.digitTexCoords["texWidth"], 1 / oUF_Hank.digitTexCoords["texHeight"], (1 + oUF_Hank.digitTexCoords["height"]) / oUF_Hank.digitTexCoords["texHeight"])
					self.health[5 - i]:Show()
					self.healthFill[5 - i]:SetSize(oUF_Hank.digitTexCoords[digit][2], oUF_Hank.digitTexCoords["height"] * h / hMax)
					self.healthFill[5 - i]:SetTexCoord(oUF_Hank.digitTexCoords[digit][1] / oUF_Hank.digitTexCoords["texWidth"], (oUF_Hank.digitTexCoords[digit][1] + oUF_Hank.digitTexCoords[digit][2]) / oUF_Hank.digitTexCoords["texWidth"], (2 + 2 * oUF_Hank.digitTexCoords["height"] - oUF_Hank.digitTexCoords["height"] * h / hMax) / oUF_Hank.digitTexCoords["texHeight"], (2 + 2 * oUF_Hank.digitTexCoords["height"]) / oUF_Hank.digitTexCoords["texHeight"])
					self.healthFill[5 - i]:Show()
				end
			end
			
			
		
		self.power:ClearAllPoints()
		self.power:SetPoint("BOTTOMRIGHT", self.health[5-len], "BOTTOMLEFT", 0, 0)
	
	else
		
		self.power:ClearAllPoints()
		self.power:SetPoint("BOTTOMRIGHT", self.health[4], "BOTTOMLEFT", 0, 0)
		
	end
end,
}

oUF.Tags.Events["myclassicpower"] = "UNIT_MAXPOWER UNIT_POWER"
oUF.Tags.Methods["myclassicpower"] = function(unit)
	local mini = UnitPower(unit)
	local maxi = UnitPowerMax(unit)
	if(mini == 0 or maxi == 0 or not UnitIsConnected(unit) or UnitIsDead(unit) or UnitIsGhost(unit)) then return end
	color = {1,1,1}
	return ("|cFF%.2x%.2x%.2x%s /%s|r"):format(color[1] * 255, color[2] * 255, color[3] * 255, mini, maxi)
end
oUF.Tags.Events["ppDetailed"] = oUF.Tags.Events["curpp"] .. " " .. oUF.Tags.Events["maxpp"]
oUF.Tags.Methods["ppDetailed"] = function(unit)
	local _, pType = UnitPowerType(unit)
	local color = cfg.colors.power[pType] or cfg.colors.power["FUEL"]
	return ("|cFF%.2x%.2x%.2x%s/%s|r"):format(color[1] * 255, color[2] * 255, color[3] * 255, valShort(UnitPower(unit)), valShort(UnitPowerMax(unit)))
end

oUF_Hank_hooks.customPowerBar = {
	sharedStyle = function(self, unit, isSingle)
	if unit == "player" then
		--this adds a second power bar
		--and does not replace the old one (which is self.power not self.Power)
		local power = CreateFrame('StatusBar', "MyPower", self)
		power:SetWidth(248)
		power:SetHeight(15)
		power:SetPoint("BOTTOMRIGHT", self.health[4], "BOTTOMLEFT", 351, 33) ---160, -200
		power:SetStatusBarTexture(Normal)
		power:SetMinMaxValues(0,UnitPowerMax(unit))
		power.frequentUpdates = true
		
		local powerBG = power:CreateTexture(nil, 'BORDER')
        	powerBG:SetAllPoints(power)
		powerBG:SetTexture(Normal)
		powerBG:SetVertexColor(0,0,0)
		powerBG.Multiplier = 0.3
		
		local powerPanel = CreateFrame("Frame", "MyPowerPanel", power)
		powerPanel:SetTemplate()
		powerPanel:SetFrameStrata("BACKGROUND")
		powerPanel:SetPoint("TOPLEFT",TukuiDB.Scale(-2), TukuiDB.Scale(2))
		powerPanel:SetPoint("BOTTOMRIGHT",TukuiDB.Scale(2), -TukuiDB.Scale(2))
	
		local powerValue = power:CreateFontString(nil, "OVERLAY")
		powerValue:SetFont(font2,13,"OUTLINE")
		powerValue:SetPoint("RIGHT", power, "RIGHT", -4, -1)
		powerValue:SetJustifyH("CENTER")
		powerValue:SetTextColor(1, 1, 1)
		powerValue.frequentUpdates = 0.1
		self.powerValue = powerValue
		self:Tag(powerValue, '[myclassicpower]')
		power.value = powerValue
		
		power.colorDisconnected = true
		
		--if db.showsmooth == true then
			power.Smooth = true
		--end
		
		-- if db.unicolor == true then
			--power.colorTapping = true
			--power.colorClass = true
			powerBG.Multiplier = 0.1				
		-- else
			--power.colorPower = true
		--end
		
		--no idea why we need this...
		power:SetFrameLevel(powerPanel:GetFrameLevel()+1)
		
		self.Power = power
		self.Power.bg = powerBG

	end
	end,
 }
-- oUF_Hank_hooks.NoOmniCC = {
	-- PostCreateIcon = function(icons, icon)
		-- icon.cd.noOCC = true
		-- icon.cd.noCooldownCount = true
	-- end,
-- }

-- local function StyleBuffs(buttonName, index, debuff)
	-- local buff		= _G[buttonName..index]
	-- local icon		= _G[buttonName..index.."Icon"]
	-- local border	= _G[buttonName..index.."Border"]
	-- local duration	= _G[buttonName..index.."Duration"]
	-- local count 	= _G[buttonName..index.."Count"]
	-- if icon and not _G[buttonName..index.."Panel"] then
		-- icon:SetTexCoord(.08, .92, .08, .92)
		-- icon:SetPoint("TOPLEFT", buff, TukuiDB.Scale(2), TukuiDB.Scale(-2))
		-- icon:SetPoint("BOTTOMRIGHT", buff, TukuiDB.Scale(-2), TukuiDB.Scale(2))
		
		-- buff:SetHeight(TukuiDB.Scale(30))
		-- buff:SetWidth(TukuiDB.Scale(30))
				
		-- duration:ClearAllPoints()
		-- duration:SetPoint("BOTTOM", 0, TukuiDB.Scale(-13))
		-- duration:SetFont(TukuiCF["Medias"].font, 12)
		
		-- count:ClearAllPoints()
		-- count:SetPoint("TOPLEFT", TukuiDB.Scale(1), TukuiDB.Scale(-2))
		-- count:SetFont(TukuiCF["Medias"].font, 12, "OUTLINE")
		
		-- local panel = CreateFrame("Frame", buttonName..index.."Panel", buff)
		-- panel.Size(30)
		-- panel.Point("CENTER", buff, "CENTER", 0, 0)
		-- panel.SetTemplate("Transparent")
		-- panel:SetFrameLevel(buff:GetFrameLevel() - 1)
		-- panel:SetFrameStrata(buff:GetFrameStrata())
	-- end
	-- if border then border:Hide() end
-- end

-- oUF_Hank_hooks.BossFrames = {

-- sharedStyle = function(self,unit)
	-- if not self.unit:find("boss") then return end
	
	-- local health, healthFill = self.health, self.healthFill
	
	-- for i =  1, 4 do
		-- health[i] = self:CreateTexture(nil, "ARTWORK")
		-- health[i]:SetTexture("Interface\\AddOns\\oUF_Hank_v3\\textures\\digits.blp")
		-- health[i]:Hide()
		-- healthFill[i] = self:CreateTexture(nil, "OVERLAY")
		-- healthFill[i]:SetTexture("Interface\\AddOns\\oUF_Hank_v3\\textures\\digits.blp")
		-- healthFill[i]:SetVertexColor(0.6,0.6,0.6)
		-- healthFill[i]:Hide()
	-- end
		

	-- health[4]:SetPoint("RIGHT")
	-- health[3]:SetPoint("RIGHT", health[4], "LEFT")
	-- health[2]:SetPoint("RIGHT", health[3], "LEFT")
	-- health[1]:SetPoint("RIGHT", health[2], "LEFT")
		
	-- healthFill[4]:SetPoint("BOTTOM", health[4])
	-- healthFill[3]:SetPoint("BOTTOM", health[3])
	-- healthFill[2]:SetPoint("BOTTOM", health[2])
	-- healthFill[1]:SetPoint("BOTTOM", health[1])
	
	-- self.power:ClearAllPoints()
	-- self.power:SetPoint("BOTTOMRIGHT", health[1], "BOTTOMLEFT", -5, 0)
	-- self:Tag(power,"[mergedPower]")
	-- self.power:SetTextColor(0.31, 0.45, 0.63)
	
	-- self.name:ClearAllPoints()
	-- self.name:SetPoint("BOTTOMRIGHT",  self.power, "TOPRIGHT")
	-- self:Tag(name, "[name]")
	-- self.name:SetTextColor(1,1,1)
	
	-- self.Castbar:SetScale(1/0.8)
	-- self.Castbar:ClearAllPoints()
	-- self.Castbar:SetPoint("TOPRIGHT",health[4],"BOTTOMRIGHT",0,-5)

-- end,

-- UpdateHealth = function(self)
	
	-- if not self.unit:find("boss") then return end

	-- local status = (not UnitIsConnected(self.unit) or nil) and "Off" or UnitIsGhost(self.unit) and "G" or UnitIsDead(self.unit) and "X"
	
	-- if not status then
		-- local h, hMax = UnitHealth(self.unit), UnitHealthMax(self.unit)
		-- local hPerc = ("%d%%"):format(h / hMax * 100 + 0.5)
		-- local len = string.len(hPerc)
	
		-- for i = 1, 4 do
			-- if i > len then
				-- self.health[5 - i]:Hide()
				-- self.healthFill[5 - i]:Hide()
			-- else
				-- local digit = string.sub(hPerc , -i, -i)
				
				-- self.health[5 - i]:SetSize(oUF_Hank.digitTexCoords[digit][2], oUF_Hank.digitTexCoords["height"])
				-- self.health[5 - i]:SetTexCoord(oUF_Hank.digitTexCoords[digit][1] / oUF_Hank.digitTexCoords["texWidth"], (oUF_Hank.digitTexCoords[digit][1] + oUF_Hank.digitTexCoords[digit][2]) / oUF_Hank.digitTexCoords["texWidth"], 1 / oUF_Hank.digitTexCoords["texHeight"], (1 + oUF_Hank.digitTexCoords["height"]) / oUF_Hank.digitTexCoords["texHeight"])
				-- self.health[5 - i]:Show()
				-- self.healthFill[5 - i]:SetSize(oUF_Hank.digitTexCoords[digit][2], oUF_Hank.digitTexCoords["height"] * h / hMax)
				-- self.healthFill[5 - i]:SetTexCoord(oUF_Hank.digitTexCoords[digit][1] / oUF_Hank.digitTexCoords["texWidth"], (oUF_Hank.digitTexCoords[digit][1] + oUF_Hank.digitTexCoords[digit][2]) / oUF_Hank.digitTexCoords["texWidth"], (2 + 2 * oUF_Hank.digitTexCoords["height"] - oUF_Hank.digitTexCoords["height"] * h / hMax) / oUF_Hank.digitTexCoords["texHeight"], (2 + 2 * oUF_Hank.digitTexCoords["height"]) / oUF_Hank.digitTexCoords["texHeight"])
				-- self.healthFill[5 - i]:Show()
			-- end
		-- end
		
		-- self.power:SetPoint("BOTTOMRIGHT", self.health[5 - len], "BOTTOMLEFT", -5, 0)
	-- end
	
-- end,
-- }
