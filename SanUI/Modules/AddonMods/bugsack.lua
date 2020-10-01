if not IsAddOnLoaded("BugSack") then return end

local S,C = unpack(SanUI)

local button  = CreateFrame("Frame", nil, UIParent)
button:Size(10)
button:Point("BOTTOMLEFT", Minimap, "BOTTOMRIGHT", 3, 14)
button:CreateBackdrop()
button:SetFrameStrata("MEDIUM")
--button:SetParent("TukuiPetBattleHider")
hooksecurefunc(S.Panels,"Enable",function()
	button:SetParent(S["Panels"].PetBattleHider)
end)

local Text = button:CreateFontString(nil, "OVERLAY")
Text:SetFont(C.Medias.Font, 10)
Text:SetText("b")
Text:SetJustifyH("CENTER")
Text:SetJustifyV("MIDDLE")
Text:Point("CENTER",button,1,-1)
Text:Show()
button.text = Text

button:EnableMouse(true)
button:SetScript("OnMouseDown", function(self,clicked)
	if clicked == "RightButton" then
		InterfaceOptionsFrame_OpenToCategory("BugSack")
		InterfaceOptionsFrame_OpenToCategory("BugSack")
	else
		if IsAltKeyDown() then
			BugSack:Reset()
		elseif BugSackFrame and BugSackFrame:IsShown() then
			BugSack:CloseSack()
		else
			BugSack:OpenSack()
		end
	end
end)

--Change border when mouse is inside the button
local function ButtonEnter(self)
	local color = RAID_CLASS_COLORS[S.MyClass]
	self:SetBackdropBorderColor(color.r, color.g, color.b)
end

--Change border back to normal when mouse leaves button
local function ButtonLeave(self)
	self:SetBackdropBorderColor(unpack(C["Medias"].BorderColor))
end

-- Mouseover Effect
button:SetScript("OnEnter", ButtonEnter)
button:SetScript("OnLeave", ButtonLeave)