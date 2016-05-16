--[[ 
		Taken from Tukui, adjusted for usage in SanUI
--]]

local S,C = unpack(SanUI)
local panel_height = ((S.Scale(5)*4) + (S.Scale(22)*4))
local r,g,b = C["General"].BackdropColor

S.CreateUtilities = function(self, event, addon)

	if not Minimap then
		print("No Minimap, can't create Raid Utilities!")
		return
	end

	--Create main frame
	local TukuiRaidUtility = CreateFrame("Frame", "TukuiRaidUtility", Minimap)
	TukuiRaidUtility:SetTemplate()
	TukuiRaidUtility:Size(Minimap:GetWidth(), panel_height)
	TukuiRaidUtility:Point("TOPLEFT", Minimap, "TOPRIGHT", 2, 0)
	TukuiRaidUtility:Hide()
	TukuiRaidUtility:SetFrameLevel(10)
	TukuiRaidUtility:SetFrameStrata("Medium")

	--Check if We are Raid Leader or Raid Officer
	local function CheckRaidStatus()
		local inInstance, instanceType = IsInInstance()
		if (UnitIsGroupAssistant("player") or UnitIsGroupLeader("player")) and not (inInstance and (instanceType == "pvp" or instanceType == "arena")) then
			return true
		else
			return false
		end
	end

	--Change border when mouse is inside the button
	local function ButtonEnter(self)
		local color = RAID_CLASS_COLORS[S.MyClass]
		self:SetBackdropBorderColor(color.r, color.g, color.b)
	end

	--Change border back to normal when mouse leaves button
	local function ButtonLeave(self)
		self:SetBackdropBorderColor(unpack(C["Medias"].BorderColor))
	end

	-- Function to create buttons in this module
	local function CreateButton(name, parent, template, width, height, point, relativeto, point2, xOfs, yOfs, text, texture)
		local b = CreateFrame("Button", name, parent, template)
		b:Width(width)
		b:Height(height)
		b:Point(point, relativeto, point2, xOfs, yOfs)
		b:HookScript("OnEnter", ButtonEnter)
		b:HookScript("OnLeave", ButtonLeave)
		b:EnableMouse(true)
		b:SetTemplate("Default")
		if text then
			local t = b:CreateFontString(nil,"OVERLAY",b)
			t:SetFont(C["Medias"].Font,12)
			t:Point("CENTER",b,"CENTER")
			t:SetJustifyH("CENTER")
			t:SetText(text)
			b:SetFontString(t)
			b.text = t
		elseif texture then
			local t = b:CreateTexture(nil,"OVERLAY",nil)
			t:SetTexture(normTex)
			t:SetPoint("TOPLEFT", b, "TOPLEFT", S.Mult, -S.Mult)
			t:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", -S.Mult, S.Mult)
		end
	end

	--Show Button
	CreateButton("TukuiRaidUtilityShowButton", Minimap, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", 10, 10, "BOTTOMLEFT", Minimap, "BOTTOMRIGHT", 3, 27, "", nil)
	TukuiRaidUtilityShowButton.text:SetText("r")
	TukuiRaidUtilityShowButton.text:SetPoint("CENTER")
	TukuiRaidUtilityShowButton.text:SetFont(C["Medias"].Font,10)
	TukuiRaidUtilityShowButton.text:SetJustifyV("MIDDLE")
	TukuiRaidUtilityShowButton:SetFrameRef("TukuiRaidUtility", TukuiRaidUtility)
	TukuiRaidUtilityShowButton:SetAttribute("_onclick", [=[self:Hide(); self:GetFrameRef("TukuiRaidUtility"):Show();]=])
	TukuiRaidUtilityShowButton:SetScript("OnMouseUp", function(self) TukuiRaidUtility.toggled = true end)
	TukuiRaidUtilityShowButton:Hide()

	--Close Button
	CreateButton("TukuiRaidUtilityCloseButton", TukuiRaidUtility, "UIMenuButtonStretchTemplate, SecureHandlerClickTemplate", Minimap:GetWidth(), 21, "TOP", TukuiRaidUtility, "BOTTOM", 0, -2, CLOSE, nil)
	TukuiRaidUtilityCloseButton:SetFrameRef("TukuiRaidUtilityShowButton", TukuiRaidUtilityShowButton)
	TukuiRaidUtilityCloseButton:SetAttribute("_onclick", [=[self:GetParent():Hide(); self:GetFrameRef("TukuiRaidUtilityShowButton"):Show();]=])
	TukuiRaidUtilityCloseButton:SetScript("OnMouseUp", function(self) TukuiRaidUtility.toggled = false end)

	--Disband Raid button
	CreateButton("TukuiRaidUtilityDisbandRaidButton", TukuiRaidUtility, "UIMenuButtonStretchTemplate", TukuiRaidUtility:GetWidth() * 0.95, S.Scale(21), "TOP", TukuiRaidUtility, "TOP", 0, S.Scale(-5), "Disband Group", nil)
	TukuiRaidUtilityDisbandRaidButton:SetScript("OnMouseUp", function(self)
		if CheckRaidStatus() then
			S.ShowPopup("TUKUIDISBAND_RAID")
		end
	end)

	--Role Check button
	CreateButton("TukuiRaidUtilityRoleCheckButton", TukuiRaidUtility, "UIMenuButtonStretchTemplate", TukuiRaidUtility:GetWidth() * 0.95, S.Scale(21), "TOP", TukuiRaidUtilityDisbandRaidButton, "BOTTOM", 0, S.Scale(-5), ROLE_POLL, nil)
	TukuiRaidUtilityRoleCheckButton:SetScript("OnMouseUp", function(self)
		if CheckRaidStatus() then
			if InCombatLockdown() then
				print(ERR_NOT_IN_COMBAT)
			else
				InitiateRolePoll()
			end
		end
	end)

	--MainTank Button
	CreateButton("TukuiRaidUtilityMainTankButton", TukuiRaidUtility, "SecureActionButtonTemplate, UIMenuButtonStretchTemplate", (TukuiRaidUtilityDisbandRaidButton:GetWidth() / 2) - S.Scale(2), S.Scale(21), "TOPLEFT", TukuiRaidUtilityRoleCheckButton, "BOTTOMLEFT", 0, S.Scale(-5), MAINTANK, nil)
	TukuiRaidUtilityMainTankButton:SetAttribute("type", "maintank")
	TukuiRaidUtilityMainTankButton:SetAttribute("unit", "target")
	TukuiRaidUtilityMainTankButton:SetAttribute("action", "set")

	--MainAssist Button
	CreateButton("TukuiRaidUtilityMainAssistButton", TukuiRaidUtility, "SecureActionButtonTemplate, UIMenuButtonStretchTemplate", (TukuiRaidUtilityDisbandRaidButton:GetWidth() / 2) - S.Scale(2), S.Scale(21), "TOPRIGHT", TukuiRaidUtilityRoleCheckButton, "BOTTOMRIGHT", 0, S.Scale(-5), MAINASSIST, nil)
	TukuiRaidUtilityMainAssistButton.text:SetWidth((TukuiRaidUtilityDisbandRaidButton:GetWidth() / 2) - S.Scale(4))
	TukuiRaidUtilityMainAssistButton:SetAttribute("type", "mainassist")
	TukuiRaidUtilityMainAssistButton:SetAttribute("unit", "target")
	TukuiRaidUtilityMainAssistButton:SetAttribute("action", "set")

	--Ready Check button
	CreateButton("TukuiRaidUtilityReadyCheckButton", TukuiRaidUtility, "UIMenuButtonStretchTemplate", TukuiRaidUtilityRoleCheckButton:GetWidth() * 0.75, S.Scale(21), "TOPLEFT", TukuiRaidUtilityMainTankButton, "BOTTOMLEFT", 0, S.Scale(-5), READY_CHECK, nil)
	TukuiRaidUtilityReadyCheckButton:SetScript("OnMouseUp", function(self)
		if CheckRaidStatus() then
			DoReadyCheck()
		end
	end)

	--Reposition/Resize and Reuse the World Marker Button
	CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:ClearAllPoints()
	CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:SetPoint("TOPRIGHT", TukuiRaidUtilityMainAssistButton, "BOTTOMRIGHT", 0, S.Scale(-5))
	CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:SetParent(TukuiRaidUtility)
	CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:SetHeight(S.Scale(21))
	CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton:SetWidth(TukuiRaidUtilityRoleCheckButton:GetWidth() * 0.22)

	--Put other stuff back
	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheck:ClearAllPoints()
	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheck:SetPoint("BOTTOMLEFT", CompactRaidFrameManagerDisplayFrameLockedModeToggle, "TOPLEFT", 0, 1)
	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheck:SetPoint("BOTTOMRIGHT", CompactRaidFrameManagerDisplayFrameHiddenModeToggle, "TOPRIGHT", 0, 1)

	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateRolePoll:ClearAllPoints()
	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateRolePoll:SetPoint("BOTTOMLEFT", CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheck, "TOPLEFT", 0, 1)
	CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateRolePoll:SetPoint("BOTTOMRIGHT", CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheck, "TOPRIGHT", 0, 1)

	--Reskin Stuff
	do
		local buttons = {
			--"CompactRaidFrameManagerDisplayFrameLeaderOptionsRaidWorldMarkerButton",
			--"TukuiRaidUtilityDisbandRaidButton",
			--"TukuiRaidUtilityMainTankButton",
			--"TukuiRaidUtilityMainAssistButton",
			--"TukuiRaidUtilityRoleCheckButton",
			--"TukuiRaidUtilityReadyCheckButton",
		--	"TukuiRaidUtilityShowButton",
			--"TukuiRaidUtilityCloseButton"
		}
		for i, button in pairs(buttons) do
					if not _G[button.."Left"] then print(button.."Left") end
			if not _G[button.."Middle"] then print(button.."Middle") end
			if not _G[button.."Right"] then print(button.."Right") end
		end

		for i, button in pairs(buttons) do
			local f = _G[button]
			_G[button.."Left"]:SetAlpha(0)
			_G[button.."Middle"]:SetAlpha(0)
			_G[button.."Right"]:SetAlpha(0)
			f:SetHighlightTexture("")
			f:SetDisabledTexture("")
			f:HookScript("OnEnter", ButtonEnter)
			f:HookScript("OnLeave", ButtonLeave)
			f:SetTemplate("Default", true)
		end
	end

	local function ToggleRaidUtil(self, event)
	
		if InCombatLockdown() then
			self:RegisterEvent("PLAYER_REGEN_ENABLED")
			return
		end

		if CheckRaidStatus() then
			if not TukuiRaidUtility.toggled then TukuiRaidUtilityShowButton:Show() end
		else
			TukuiRaidUtilityShowButton:Hide()
			if TukuiRaidUtility:IsShown() then TukuiRaidUtility:Hide() end
		end

		if event == "PLAYER_REGEN_ENABLED" then
			self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		end
		
		if UnitInRaid("player") then
			TukuiRaidUtilityMainTankButton:Enable()
			TukuiRaidUtilityMainAssistButton:Enable()
		else
			TukuiRaidUtilityMainTankButton:Disable()
			TukuiRaidUtilityMainAssistButton:Disable()			
		end
	end
	

	--Automatically show/hide the frame if we have RaidLeader or RaidOfficer
	local LeadershipCheck = CreateFrame("Frame")
	LeadershipCheck:RegisterEvent("GROUP_ROSTER_UPDATE")
	LeadershipCheck:SetScript("OnEvent", ToggleRaidUtil)
end