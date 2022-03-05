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
	
	CoolLine.panel = CreateFrame("Frame", "PPP", CoolLine)
	CoolLine.panel:CreateBackdrop()
	CoolLine:SetFrameLevel(CoolLine.panel:GetFrameLevel()+2)
	CoolLine.Backdrop:SetFrameLevel(CoolLine.panel:GetFrameLevel()+1)
	
	db.h = C["ActionBars"].NormalButtonSize
	db.w = 14*C["ActionBars"].NormalButtonSize - 2 * Scale(2) + 9 * spacing
	db.inactivealpha = 1
	db.bordercolor.a = 0
	db.bgcolor.a = 0
	
	if S["ActionBars"].Bars.Bar1 then
		hooksecurefunc(CoolLine, "updatelook", function()
			CoolLine.panel:ClearAllPoints()
			CoolLine.panel:SetPoint("BOTTOMLEFT",TukuiStanceBar,"BOTTOMRIGHT",Scale(2),0)
			CoolLine.panel:SetPoint("TOPLEFT",TukuiStanceBar,"TOPRIGHT",Scale(2),0)
			CoolLine.panel:SetPoint("BOTTOMRIGHT",TukuiActionBar3,"BOTTOMLEFT",-Scale(2),0)
			CoolLine:ClearAllPoints()
			CoolLine:SetPoint("BOTTOMLEFT",CoolLine.panel,"BOTTOMLEFT",spacing,spacing)
			CoolLine:SetPoint("BOTTOMRIGHT",CoolLine.panel,"BOTTOMRIGHT",-spacing,spacing)
			CoolLine:SetPoint("TOPLEFT",CoolLine.panel,"TOPLEFT",spacing,-spacing)
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
