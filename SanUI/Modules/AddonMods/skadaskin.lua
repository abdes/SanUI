local S, C = unpack(SanUI) -- Import Functions/Constants, Config, Locales

if not Skada then return end

local Skada = Skada
local barSpacing = S.Scale(1, 1)
local borderWidth = S.Scale(2, 2)

local barmod = Skada.displays["bar"]

-- Used to strip unecessary options from the in-game config
local function StripOptions(options)
	options.baroptions.args.barspacing = nil
	options.titleoptions.args.texture = nil
	options.titleoptions.args.bordertexture = nil
	options.titleoptions.args.thickness = nil
	options.titleoptions.args.margin = nil
	options.titleoptions.args.color = nil
	options.windowoptions = nil
	options.baroptions.args.barfont = nil
	options.titleoptions.args.font = nil
end

local barmod = Skada.displays["bar"]
barmod.AddDisplayOptions_ = barmod.AddDisplayOptions
barmod.AddDisplayOptions = function(self, win, options)
	self:AddDisplayOptions_(win, options)
	StripOptions(options)
end

for k, options in pairs(Skada.options.args.windows.args) do
	if options.type == "group" then
		StripOptions(options.args)
	end
end

local titleBG = {
	bgFile = S.GetTexture(C["UnitFrames"].HealthTexture),
	tile = false,
	tileSize = 0
}

barmod.ApplySettings_ = barmod.ApplySettings
barmod.ApplySettings = function(self, win)
	barmod.ApplySettings_(self, win)

	local skada = win.bargroup

	if win.db.enabletitle then
		skada.button:SetBackdrop(titleBG)
	end

	skada:SetTexture(S.GetTexture(C["UnitFrames"].HealthTexture))
	skada:SetSpacing(barSpacing)
	skada:SetFont(S.GetFont(C["UnitFrames"].AltFont), 12) --C["general"].fontscale)
	skada:SetFrameLevel(5)
	
	local titlefont = CreateFont("TitleFont"..win.db.name)
	titlefont:SetFont(S.GetFont(C["UnitFrames"].AltFont),12) --, C["general"].fontscale)
	win.bargroup.button:SetNormalFontObject(titlefont)
	--win.bargroup.button:SetHeight(18)

	local color = win.db.title.color
	win.bargroup.button:SetBackdropColor(1,1,1,0) --SetBackdropColor(unpack(C["media"].bordercolor))

	skada:SetBackdrop(nil)
	if not skada.Backdrop then
		skada:CreateBackdrop('Default')
	end
	
	skada.Backdrop:SetBackdropColor(1,1,1,0)
	skada.Backdrop:SetBackdropBorderColor(0.5,0.5,0.5,1)
	
	skada.Backdrop:ClearAllPoints()
	if win.db.enabletitle then
		skada.Backdrop:Point('TOPLEFT', win.bargroup.button, 'TOPLEFT', -2, 2)
	else
		skada.Backdrop:Point('TOPLEFT', win.bargroup, 'TOPLEFT', -2, 2)
	end
	skada.Backdrop:Point('BOTTOMRIGHT', win.bargroup, 'BOTTOMRIGHT', 2, -2)
	
	if SkadaBarWindowSkada then
		SkadaBarWindowSkada:ClearAllPoints()
		SkadaBarWindowSkada:Point("BOTTOMRIGHT",TukuiRightDataTextBox,"TOPRIGHT",-2,4)
		SkadaBarWindowSkada:Point("BOTTOMLEFT",TukuiRightDataTextBox,"TOPLEFT",2,4)
	end
	
end

local windows = {}
-- end

-- Update pre-existing displays
for _, window in ipairs(Skada:GetWindows()) do
	window:UpdateDisplay()
end

GameTooltip:HookScript("OnUpdate", function(self, ...)
    if not TukuiTooltipAnchor then return end
	
	if (SkadaBarWindowSkada and SkadaBarWindowSkada:IsShown()) then
		TukuiTooltipAnchor:ClearAllPoints()
		TukuiTooltipAnchor:Point("BOTTOMRIGHT", SkadaBarWindowSkada, "TOPRIGHT", 2, -10)  
	else
		TukuiTooltipAnchor:ClearAllPoints()
		TukuiTooltipAnchor:SetPoint("BOTTOMRIGHT", TukuiRightDataTextBox)
	end
end)