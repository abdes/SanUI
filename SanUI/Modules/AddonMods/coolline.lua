local S,C = unpack(SanUI)

local Scale = Tukui[1].Toolkit.Functions.Scale

-- executed  PLAYER_ENTERING_WORLD in Misc.lua
--Putting it above the middle action bar
--Note the visible part is CoolLine.background, and it's anchored via
--SetPoint("TOPRIGHT",S.Scale(-2),S.Scale(2)), so we need to adjust
--Set coolline height via savedvar, updatelook updates it and the icons
function S.modCoolLine(event)

	local db

	CoolLineDB = CoolLineDB or { }
	if CoolLineDB.perchar then
		db = CoolLineCharDB
	else
		db = CoolLineDB
	end

	db.h = C["ActionBars"].NormalButtonSize
	db.w = C["ActionBars"].NormalButtonSize * 24 + C["ActionBars"].ButtonSpacing * 24
	db.inactivealpha = 1
	db.bordercolor.a = 0
	db.bgcolor.a = 0
	
	if not CoolLine.Backdrop then
		CoolLine:CreateBackdrop()
	end
	
	if S["ActionBars"].Bars.Bar1 then
		hooksecurefunc(CoolLine, "updatelook", function()
			CoolLine:ClearAllPoints()
			CoolLine:SetPoint("BOTTOMLEFT",S["ActionBars"].Bars.Bar1,"TOPLEFT",Scale(1),Scale(3))
			CoolLine:SetPoint("BOTTOMRIGHT",S["ActionBars"].Bars.Bar1,"TOPRIGHT",-Scale(1),Scale(3))
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
		TukuiStanceBar:SetPoint("BOTTOMLEFT",CoolLine.Backdrop,"TOPLEFT",0,Scale(2.5))
		return 1
	else
		print("No TukuiStanceBar or no CoolLine.Backdrop, can't place it!")
		return 0
	end
end

S.AddOnCommands["placestancebar"] = S.placeStanceBar
