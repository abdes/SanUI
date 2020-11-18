local addonName, addon = ...
local S,C = unpack(addon)

local Scale = S.Toolkit.Functions.Scale

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

	db.h = C["ActionBars"].NormalButtonSize
	db.w = C["ActionBars"].NormalButtonSize * 24 + C["ActionBars"].ButtonSpacing * 25
	db.inactivealpha = 1
	db.bordercolor.a = 0
	db.bgcolor.a = 0
	
	if not CoolLine.Backdrop then
		CoolLine:CreateBackdrop()
	end
	
	if S["ActionBars"].Bars.Bar1 then
		hooksecurefunc(CoolLine, "updatelook", function()
			CoolLine:ClearAllPoints()
			CoolLine:SetPoint("BOTTOMLEFT",S["ActionBars"].Bars.Bar1,"TOPLEFT",0,Scale(3))
			CoolLine:SetPoint("BOTTOMRIGHT",S["ActionBars"].Bars.Bar1,"TOPRIGHT",0,Scale(3))
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
	if TukuiStanceBar and CoolLine.Backdrop then
		TukuiStanceBar:ClearAllPoints()
		TukuiStanceBar:SetPoint("BOTTOMLEFT",CoolLine.Backdrop,"TOPLEFT",0,Scale(3))
		return 1
	else
		print("No TukuiStanceBar or no CoolLine.Backdrop, can't place it!")
		return 0
	end
end

S.AddOnCommands["placestancebar"] = S.placeStanceBar
