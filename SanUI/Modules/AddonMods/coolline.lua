local addonName, addon = ...
local S,C = unpack(addon)

local Scale = S.Toolkit.Functions.Scale
local spacing = C["ActionBars"].ButtonSpacing

-- executed  PLAYER_ENTERING_WORLD in Misc.lua
--Putting it above the middle action bar
function S.modCoolLine(event)

	local db

	CoolLineDB = CoolLineDB or { }
	if CoolLineDB.perchar then
		db = CoolLineCharDB
	else
		db = CoolLineDB
	end

	
	if not CoolLine.Backdrop then
		CoolLine:CreateBackdrop()
	end
	
	db.h = C["ActionBars"].NormalButtonSize
	db.w = 12*C["ActionBars"].NormalButtonSize - 2 * Scale(2) + 11 * spacing
	db.inactivealpha = 1
	db.bordercolor.a = 0
	db.bgcolor.a = 0
	
	if S["ActionBars"].Bars.Bar1 then
		hooksecurefunc(CoolLine, "updatelook", function()
			local NumForms = GetNumShapeshiftForms()
			CoolLine:ClearAllPoints()
			if TukuiStanceBar and NumForms > 0 then 
				CoolLine:SetPoint("BOTTOMLEFT",TukuiStanceBar,"BOTTOMRIGHT",spacing,spacing)
				CoolLine:SetPoint("TOPLEFT",TukuiStanceBar,"TOPRIGHT",spacing,-spacing)
			else
				CoolLine:SetPoint("TOPRIGHT",TukuiActionBar3,"TOPLEFT",-spacing,-spacing)
			end
			CoolLine:SetPoint("BOTTOMRIGHT",TukuiActionBar3,"BOTTOMLEFT",-spacing,spacing)
			S.placeStanceBar()
		end)
	end

	CoolLine.updatelook()	
	
	if not SanUIdb.stanceBarHasBeenPlaced then
		if S.placeStanceBar() == 1 then
			SanUIdb.stanceBarHasBeenPlaced = true
		end
	end
	
	CoolLine:SetParent(Tukui_PetBattleFrameHider)

end

function S.placeStanceBar()
	if TukuiStanceBar then
		TukuiStanceBar:ClearAllPoints()
		TukuiStanceBar:SetPoint("BOTTOMLEFT",TukuiActionBar1,"TOPLEFT",0,Scale(2))
		return 1
	else
		print("No TukuiStanceBar or no CoolLine.Backdrop, can't place it!")
		return 0
	end
end

S.AddOnCommands["placestancebar"] = S.placeStanceBar
