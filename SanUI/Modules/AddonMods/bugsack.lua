if not IsAddOnLoaded("BugSack") then return end

local S,C = unpack(SanUI)
local Scale = S.Toolkit.Functions.Scale

local button  = CreateFrame("Frame", nil, UIParent)
button:SetSize(Scale(10), Scale(10))
button:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMRIGHT", Scale(3), Scale(14))
button:CreateBackdrop()
button:SetFrameStrata("MEDIUM")
button:SetParent(Tukui_PetBattleFrameHider)


local Text = button:CreateFontString(nil, "OVERLAY")
Text:SetFont(C.Medias.Font, 10)
Text:SetText("b")
Text:SetJustifyH("CENTER")
Text:SetJustifyV("MIDDLE")
Text:SetPoint("CENTER",button,Scale(1),-Scale(1))
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

button:SkinButton()