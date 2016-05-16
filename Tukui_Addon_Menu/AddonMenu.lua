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
	--MenuOpen:CreatePanel("", TukuiMinimap:GetWidth() ,14 ,"TOP", Minimap, "BOTTOM", 0, -5 - Offset)
	MenuOpen:Size(10)
	MenuOpen:Point("BOTTOMLEFT", Minimap, "BOTTOMRIGHT", 3, 0)
	MenuOpen:SetTemplate()
else
	--MenuOpen:CreatePanel("", TukuiMinimap:GetWidth()+4 ,14 ,"BOTTOM", Minimap, "TOP", 0, 5 + Offset)
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
	
end

-----World State Button-----
if SanUIButtonOrder["WorldFrame"] then
	--Re-anchor World State Frame
	WorldStateAlwaysUpFrame:ClearAllPoints()
	WorldStateAlwaysUpFrame:SetPoint("TOP", UIParent, "TOP", 0, -50)
	
	local WSButton = CreateFrame("Frame", "WorldStateToggle", Menu)
	CreateButton(WSButton, SanUIButtonOrder["WorldFrame"])
	
	if WorldStateAlwaysUpFrame:IsShown() then
		WSButton.title:SetText("Hide World Frame")
	else
		WSButton.title:SetText("Show World Frame")
	end
	
	WSButton:SetScript("OnMouseDown", function()
		if WorldStateAlwaysUpFrame:IsShown() then
			WorldStateAlwaysUpFrame:Hide()
			WSButton.title:SetText("Show World Frame")
		else
			WorldStateAlwaysUpFrame:Show()
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
		
		Button:SetScript("OnEnter", function()
			Button.title:SetTextColor(1, 1, 0.5)
		end)
		Button:SetScript("OnLeave", function()
			Button.title:SetTextColor(1, 1, 1)
		end)
		Button:SetScript("OnMouseDown", function()
			S.switch2Mode(profile)
			MenuMouseDown()
		end)
		
	end
end

-----Skada Toggle Button-----
if SanUIButtonOrder["Skada"] then
	local SkadaButton = CreateFrame("Frame", "SkadaToggle", Menu)
	CreateButton(SkadaButton, SanUIButtonOrder["Skada"])

	if not SkadaBarWindowSkada then 
		SkadaButton.title:SetTextColor(0.6, 0.6, 0.6)
		SkadaButton.title:SetText("Skada Disabled")
	else
		if SkadaBarWindowSkada:IsShown() then
			SkadaButton.title:SetText("Hide Damage")
			if HideChat == true then
				ChatFrame4:SetAlpha(0)
			end
		else
			SkadaButton.title:SetText("Show Damage")
			if HideChat == true then
				ChatFrame4:SetAlpha(1)
			end
		end
		
		SkadaButton:SetScript("OnEnter", function()
			SkadaButton.title:SetTextColor(1, 1, 0.5)
		end)
		SkadaButton:SetScript("OnLeave", function()
			SkadaButton.title:SetTextColor(1, 1, 1)
		end)
		SkadaButton:SetScript("OnMouseDown", function()
			if SkadaBarWindowSkada:IsShown() then
				SkadaButton.title:SetText("Show Damage")
				SkadaBarWindowSkada:Hide()
				MenuMouseDown()
			else
				SkadaButton.title:SetText("Hide Damage")
				SkadaBarWindowSkada:Show()
				MenuMouseDown()
			end
		end)
	end
end

-----Grid Toggle Button----
if SanUIButtonOrder["Grid"] then
	local GridButton = CreateFrame("Frame", "GridToggle", Menu)
	CreateButton(GridButton, SanUIButtonOrder["Grid"])

	if not IsAddOnLoaded("Grid") then 
		GridButton.title:SetTextColor(0.6, 0.6, 0.6)
		GridButton.title:SetText("Grid Disabled")
	else
		GridButton.title:SetText("Grid")
		
		GridButton:SetScript("OnEnter", function()
			GridButton.title:SetTextColor(1, 1, 0.5)
		end)
		GridButton:SetScript("OnLeave", function()
			GridButton.title:SetTextColor(1, 1, 1)
		end)
		
		GridButton:SetScript("OnMouseDown", function()
				SlashCmdList.ACECONSOLE_GRID('')
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
		
		DBMButton:SetScript("OnEnter", function()
			DBMButton.title:SetTextColor(1, 1, 0.5)
		end)
		DBMButton:SetScript("OnLeave", function()
			DBMButton.title:SetTextColor(1, 1, 1)
		end)
		
		DBMButton:SetScript("OnMouseDown", function()
				SlashCmdList.DEADLYBOSSMODS('')
				MenuMouseDown()
		end)
	end
end

-----DXE Toggle Button----
if SanUIButtonOrder["DXE"] then
	local DXEButton = CreateFrame("Frame", "DXEToggle", Menu)
	CreateButton(DXEButton, SanUIButtonOrder["DXE"])

	if not IsAddOnLoaded("DXE") then 
		DXEButton.title:SetTextColor(0.6, 0.6, 0.6)
		DXEButton.title:SetText("DXE Disabled")
	else
		DXEButton.title:SetText("DXE")
		
		DXEButton:SetScript("OnEnter", function()
			DXEButton.title:SetTextColor(1, 1, 0.5)
		end)
		DXEButton:SetScript("OnLeave", function()
			DXEButton.title:SetTextColor(1, 1, 1)
		end)
		
		DXEButton:SetScript("OnMouseDown", function()
				DXE:ToggleConfig()
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
		
		AltoholicButton:SetScript("OnEnter", function()
			AltoholicButton.title:SetTextColor(1, 1, 0.5)
		end)
		AltoholicButton:SetScript("OnLeave", function()
			AltoholicButton.title:SetTextColor(1, 1, 1)
		end)
		
		AltoholicButton:SetScript("OnMouseDown", function()
				Altoholic:ToggleUI()
				MenuMouseDown()
		end)
	end
end

-----Recount Toggle Button-----
if SanUIButtonOrder["Recount"] then
	local RecountButton = CreateFrame("Frame", "AtlasButton", Menu)
	CreateButton(RecountButton, SanUIButtonOrder["Recount"])

	if not IsAddOnLoaded("Recount") then 
		RecountButton.title:SetTextColor(0.6, 0.6, 0.6)
		RecountButton.title:SetText("Recount Disabled")	
	else
		if Recount_MainWindow:IsShown() then
			RecountButton.title:SetText("Hide Recount")
		else
			RecountButton.title:SetText("Show Recount")
		end

		RecountButton:SetScript("OnEnter", function()
			RecountButton.title:SetTextColor(1, 1, 0.5)
		end)
		RecountButton:SetScript("OnLeave", function()
			RecountButton.title:SetTextColor(1, 1, 1)
		end)
		RecountButton:SetScript("OnMouseDown", function()
			if Recount_MainWindow:IsShown() then
				RecountButton.title:SetText("Show Recount")
				SlashCmdList.ACECONSOLE_RECOUNT('toggle')
			else
				RecountButton.title:SetText("Hide Recount")
				SlashCmdList.ACECONSOLE_RECOUNT('toggle')
			end
		end)
	end
end

-----Omen Toggle Button-----
if SanUIButtonOrder["Omen"] then
	local OmenButton = CreateFrame("Frame", "OmenButton", Menu)
	CreateButton(OmenButton, SanUIButtonOrder["Omen"])
	
	if not IsAddOnLoaded("Omen") then 
		OmenButton.title:SetTextColor(0.6, 0.6, 0.6)
		OmenButton.title:SetText("Omen Disabled")	
	else
		if OmenAnchor:IsShown() then
			OmenButton.title:SetText("Show Omen")
		else
			OmenButton.title:SetText("Hide Omen")
		end

		OmenButton:SetScript("OnEnter", function()
			OmenButton.title:SetTextColor(1, 1, 0.5)
		end)
		OmenButton:SetScript("OnLeave", function()
			OmenButton.title:SetTextColor(1, 1, 1)
		end)
		OmenButton:SetScript("OnMouseDown", function()
			if OmenAnchor:IsShown() then
				OmenButton.title:SetText("Show Omen")
				SlashCmdList.ACECONSOLE_OMEN('toggle')
			else
				OmenButton.title:SetText("Hide Omen")
				SlashCmdList.ACECONSOLE_OMEN('toggle')
			end
		end)
	end
end

-----AtlasLoot Toggle button-----
if SanUIButtonOrder["AtlasLoot"] then
	local AtlasButton = CreateFrame("Frame", "AtlasToggle", Menu)
	CreateButton(AtlasButton,SanUIButtonOrder["AtlasLoot"])
	
	if not IsAddOnLoaded("AtlasLoot") then 
		AtlasButton.title:SetTextColor(0.6, 0.6, 0.6)
		AtlasButton.title:SetText("AtlasLoot Disabled")	
	else
		AtlasButton.title:SetText("Show Atlas Loot")

		AtlasButton:SetScript("OnEnter", function()
			AtlasButton.title:SetTextColor(1, 1, 0.5)
		end)
		AtlasButton:SetScript("OnLeave", function()
			AtlasButton.title:SetTextColor(1, 1, 1)
		end)
		AtlasButton:SetScript("OnMouseDown", function()
			if AtlasLootDefaultFrame:IsShown() then
				AtlasButton.title:SetText("Show Atlas Loot")
				AtlasLootDefaultFrame:Hide()
			else
				AtlasButton.title:SetText("Hide Atlas Loot")
				 AtlasLootDefaultFrame:Show()
			end
		end)
		
		AtlasLootDefaultFrame_CloseButton:SetScript("OnMouseDown", function()
			AtlasButton.title:SetText("Show Atlas Loot")
			AtlasLootDefaultFrame:Hide()
		end)	
	end
end

-----Keyring Toggle Button-----
if SanUIButtonOrder["KeyRing"] then
    local KRButton = CreateFrame("Frame", "KeyRingToggle", Menu)
    CreateButton(KRButton, SanUIButtonOrder["KeyRing"])
 
    if ContainerFrame1:IsShown() then
		KRButton.title:SetText("Hide Key Ring")
	else
		KRButton.title:SetText("Show Key Ring")
	end
 
    KRButton:SetScript("OnEnter", function()
        KRButton.title:SetTextColor(1, 1, 0.5)
    end)
    KRButton:SetScript("OnLeave", function()
           KRButton.title:SetTextColor(1, 1, 1)
        end)
    KRButton:SetScript("OnMouseDown", function()
        if ContainerFrame1:IsShown() then
            KRButton.title:SetText("Show Key Ring")
            ToggleKeyRing()
        else
            KRButton.title:SetText("Hide Key Ring")
            ToggleKeyRing()
        end
    end)
	
	ContainerFrame1CloseButton:SetScript("OnMouseDown", function()
		ToggleKeyRing()
		KRButton.title:SetText("Show Key Ring")
	end)
end
