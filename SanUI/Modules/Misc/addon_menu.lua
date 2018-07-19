-- Originally by safturento@tukui.org
-- modified for SanUI by Shimmer@EU-Mal'Ganis

-----Button Order-----
--Change the numbers below to change the
--order of the buttons to your liking.
--To disabled a button, set it to 0.
local S,C = unpack(SanUI)
local SanUIButtonOrder = {Grid=1, DBM=2, Altoholic=3}

if S["profiles"][S.MyName]["AddonMenu"] then
	SanUIButtonOrder = S["profiles"][S.MyName]["AddonMenu"]
	local btns = 0
	for _ in pairs(SanUIButtonOrder) do
		btns = btns + 1
	end
	if #S["profiles"][S.MyName]["modes"] >1 then
		for i = 1,#S["profiles"][S.MyName]["modes"] do
			local name = S["profiles"][S.MyName]["modes"][i]
			SanUIButtonOrder[name] = btns+i
		end
	end
end

-----How Many Buttons?-----
local Btns = 0

for _ in pairs(SanUIButtonOrder) do
	Btns = Btns +1
end
-- Toggles if the Open/Close button is hidden on mouseout
HideMenuButton = false

-- Set to the offset of the menu if you have data texts under your minimap
local Offset = 19

--	Sets height of buttons
local BtnHeight = 20

-- Sets side of minimap that menu anchors to
-- DON'T CHANGE
local AnchorSide = true

-- Set this to true if you want it to hide your loot frame when skada is shown
HideChat = false

-- Set font
--local font = C["media"].uffont --local font = S["media"].uffont
local font = C["Medias"].Font
local fontsize = 12

-------------------------------------------------------------------
-- CREATING NEW MODULES -------------------------------------------
-------------------------------------------------------------------
--[[
-- The first step to create a new module is to give it an Order above. 

-- Then use and modify the basic code below to work with the addon:
-- First things first, rename all instances of "AddonButton" with whatever you want to name your button.
-- Once that's done, follow the steps commented out below:

-----Addon Toggle Button-----
if AddonOrder > 0 then
	local AddonButton = CreateFrame("Frame", "AddonButton", Menu)
	CreateButton(AddonButton, AddonOrder) --Replace this with the names of your Button followed by your Order

	if not IsAddOnLoaded("Addon") then 
		AddonButton.title:SetTextColor(0.6, 0.6, 0.6)
		AddonButton.title:SetText("Addon Disabled") ------ Replace this with the text you want to show when the addon is disabled
	else
		if AddonWindow:IsShown() then	------------------ Replace AddonWindow with the name of the frame you wish to toggle
			AddonButton.title:SetText("Hide Addon") ------ Replace "Hide Addon" with the text to want to be shown when the addon is shown
		else
			AddonButton.title:SetText("Show Addon")	------ Replace "Show Addon" with the text to want to be shown when the addon is hidden
		end
		
		AddonButton:SetScript("OnEnter", function()
			AddonButton.title:SetTextColor(1, 1, 0.5)
		end)
		AddonButton:SetScript("OnLeave", function()
			AddonButton.title:SetTextColor(1, 1, 1)
		end)
		AddonButton:SetScript("OnMouseDown", function()
			if AddonWindow:IsShown() then	-------------- replace AddonWindow with the name of the frame you wish to toggle
				AddonButton.title:SetText("Show Skada")	-- Replace "Hide Addon" with the text to want to be shown when the addon is shown
				ToggleFrame(FrameToToggle) --type /frame to find this name. If it says WorldFrame, type /framestack and mouseover to see a list of frames under your mouse.
			else
				AddonButton.title:SetText("Hide Skada")	-- Replace "Show Addon" with the text to want to be shown when the addon is hidden
				ToggleFrame(FrameToToggle)	--type /frame to find this name. If it says WorldFrame, type /framestack and mouseover to see a list of frames under your mouse.
			end
		end)
	end
end
]]--


-------------------------------------------------------------------
-- CREATE MENU ----------------------------------------------------
-------------------------------------------------------------------
-- Open/Close Button
local MenuOpen = CreateFrame("Frame", "MenuOpen", UIParent)
if AnchorSide == true then
	MenuOpen:Size(10)
	MenuOpen:Point("BOTTOMLEFT", Minimap, "BOTTOMRIGHT", 3, 0)
	MenuOpen:SetTemplate()
else
	MenuOpen:Size(Minimap:GetWidth()+4 ,14)
	MenuOpen:Point("BOTTOM", Minimap, "TOP", 0, 5 + Offset)
	MenuOpen:SetTemplate()
end

local Text = MenuOpen:CreateFontString(nil, "OVERLAY")
Text:SetFont(C.Medias.Font, 10)
Text:SetText("a")
Text:SetJustifyH("CENTER")
Text:SetJustifyV("MIDDLE")
Text:Point("CENTER",MenuOpen)
Text:Show()

MenuOpen.text = Text

MenuOpen:EnableMouse(true)
MenuOpen:SetFrameStrata("MEDIUM")

-- Menu Background
local Menu = CreateFrame("Frame", "MinimapMenu", UIParent)
if AnchorSide == true then
	--Menu:CreatePanel("", MenuOpen:GetWidth(),(Btns*(BtnHeight+1))+3, "TOP", Minimap, "BOTTOM",0, -5 - Offset)
	Menu:Size(Minimap:GetWidth(),(Btns*(BtnHeight+1))+3)
	Menu:Point("TOPLEFT", Minimap, "TOPRIGHT", 14,0)
	Menu:SetTemplate()
else
	--Menu:CreatePanel("", MenuOpen:GetWidth(),(Btns*(BtnHeight+1))+3, "BOTTOM", Minimap, "TOP",0, 5 + Offset)
	Menu:Size(MenuOpen:GetWidth(),(Btns*(BtnHeight+1))+3)
	Menu:Point("BOTTOM", Minimap, "TOP",0, 5 + Offset)
	Menu:SetTemplate()
end
Menu:Hide()
Menu:SetFrameStrata("HIGH") --BACKGROUND")
Menu:EnableMouse(true)

hooksecurefunc(S.Panels,"Enable",function()
	MenuOpen:SetParent(S["Panels"].PetBattleHider)
	Menu:SetParent(S["Panels"].PetBattleHider)
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
MenuOpen:SetScript("OnEnter", ButtonEnter)
MenuOpen:SetScript("OnLeave", ButtonLeave)

local function MenuMouseDown()
	if Menu:IsShown() then
		MenuOpen:SetFrameStrata("MEDIUM")
		Menu:Hide()
		MenuOpen:Size(10)
		MenuOpen:ClearAllPoints()
		MenuOpen:Point("BOTTOMLEFT", Minimap, "BOTTOMRIGHT", 3, 0)
		Text:SetFont(C.Medias.Font, 10)
		MenuOpen.text:SetText("a")
		MenuOpen:Show()
	else
		MenuOpen:SetFrameStrata("HIGH")
		Menu:Show()
		MenuOpen:Size(Minimap:GetWidth(),BtnHeight)
		MenuOpen:ClearAllPoints()
		MenuOpen:SetPoint("TOP", Menu, "BOTTOM", 0, -3)
		Text:SetFont(C.Medias.Font, fontsize)
		MenuOpen.text:SetText(CLOSE)
	end
end

-- Create Open/Close Scripts
MenuOpen:SetScript("OnMouseDown", MenuMouseDown)

-------------------------------------------------------------------
-- MODULES --------------------------------------------------------
-------------------------------------------------------------------
-- Create Button Function
local function CreateButton(f, o) --(Frame,ButtonOrderName)
	if AnchorSide == true then
		--f:CreatePanel("", Menu:GetWidth()-4, BtnHeight, "BOTTOM", Menu, "TOP", 0, -o*(BtnHeight+1)-1)
		f:Size(Menu:GetWidth()-4, BtnHeight)
		f:Point("BOTTOM", Menu, "TOP", 0, -o*(BtnHeight+1)-1)
		f:SetTemplate()
		
		f:SetFrameStrata("DIALOG")
		
		f.title = f:CreateFontString()
		f.title:SetPoint("CENTER", f, "CENTER", 0, 1)
		f.title:SetFont(font, fontsize, "OUTLINE") --14
		f.title:SetTextColor(1, 1, 1)

		f:EnableMouse(true)
	else
		--f:CreatePanel("", Menu:GetWidth()-4, BtnHeight, "TOP", Menu, "BOTTOM", 0, o*(BtnHeight+1)+1)
		f:Size(Menu:GetWidth()-4, BtnHeight)
		f:Point("TOP", Menu, "BOTTOM", 0, o*(BtnHeight+1)+1)
		f:SetTemplate()
		f:SetFrameStrata("DIALOG")
		
		f.title = f:CreateFontString()
		f.title:SetPoint("CENTER", f, "CENTER", 0, 1)
		f.title:SetFont(font, fontsize, "OUTLINE") --14
		f.title:SetTextColor(1, 1, 1)

		f:EnableMouse(true)
	end
	
	f:SetScript("OnEnter", ButtonEnter)
	f:SetScript("OnLeave", ButtonLeave)
	
end

-----World State Button-----
if SanUIButtonOrder["WorldFrame"] then
	local WSButton = CreateFrame("Frame", "WorldStateToggle", Menu)
	CreateButton(WSButton, SanUIButtonOrder["WorldFrame"])
	
	if WorldStateAlwaysUpFrame and WorldStateAlwaysUpFrame:IsShown() then
		WSButton.title:SetText("Hide World Frame")
	else
		WSButton.title:SetText("Show World Frame")
	end
	
	WSButton:SetScript("OnMouseDown", function()
		if WorldStateAlwaysUpFrame and WorldStateAlwaysUpFrame:IsShown() then
			WorldStateAlwaysUpFrame:Hide()
			WSButton.title:SetText("Show World Frame")
		else
			if WorldStateAlwaysUpFrame then 
				WorldStateAlwaysUpFrame:Show()
			end
			WSButton.title:SetText("Hide World Frame")
		end
	end)
	
end

-----Profile Button-----
if #S["profiles"][S.myname]["modes"] >1 then
	for i = 1,#S["profiles"][S.myname]["modes"] do
		local profile = S["profiles"][S.myname]["modes"][i]
		local Button = CreateFrame("Frame",profile.."ToggleButton",Menu)
		CreateButton(Button,SanUIButtonOrder[profile])
		
		Button.title:SetText(profile)
		
		Button:SetScript("OnMouseDown", function()
			S.switch2Mode(profile)
			MenuMouseDown()
		end)
		
	end
end

-----DBM Toggle Button----
if SanUIButtonOrder["DBM"] then
	local DBMButton = CreateFrame("Frame", "DBMToggle", Menu)
	CreateButton(DBMButton, SanUIButtonOrder["DBM"])

	if not IsAddOnLoaded("DBM-Core") then 
		DBMButton.title:SetTextColor(0.6, 0.6, 0.6)
		DBMButton.title:SetText("DBM Disabled")
	else
		DBMButton.title:SetText("DBM")
		
		DBMButton:SetScript("OnMouseDown", function()
				SlashCmdList.DEADLYBOSSMODS('')
				MenuMouseDown()
		end)
	end
end

-----Altoholic Button -------
if SanUIButtonOrder["Altoholic"] then
	local AltoholicButton = CreateFrame("Frame", "AltoholicToggle", Menu)
	CreateButton(AltoholicButton, SanUIButtonOrder["Altoholic"])

	if not IsAddOnLoaded("Altoholic") then 
		AltoholicButton.title:SetTextColor(0.6, 0.6, 0.6)
		AltoholicButton.title:SetText("Altoholic Disabled")
	else
		AltoholicButton.title:SetText("Altoholic")
		
		AltoholicButton:SetScript("OnMouseDown", function()
				Altoholic:ToggleUI()
				MenuMouseDown()
		end)
	end
end