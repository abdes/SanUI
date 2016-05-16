local S, C = unpack(SanUI)


S.switchPowerbar = function(profile)

	local Power = oUF_player.Power
	
	if not Power then
		print("No Power bar on oUF_player found!")
		return
	end

	if profile == "SanBear" or profile == "SahneUnholy" then
		Power.PostUpdate = function(self,unit, min, max)
			local quotient = min/max
			if quotient >= .6  and quotient < .9 then
				Power:SetStatusBarColor(1,.49,.04)
			elseif quotient >= .9 then
				Power:SetStatusBarColor(0.5,1,0)
			else
				Power:SetStatusBarColor(0.69, 0.31, 0.31)
			end
		end
	elseif profile == "SanCat" then
		Power.PostUpdate = function(self,unit, min, max)
			local quotient = min/max
			if quotient >= .3  and quotient < .9 then
				Power:SetStatusBarColor(1,.49,.04)
			elseif quotient >= .9 then
				Power:SetStatusBarColor(0.5,1,0)
			else
				Power:SetStatusBarColor(0.69, 0.31, 0.31)
			end
		end
	else
		Power.PostUpdate = nil
	end
	
	if profile == "SanCat" then
		Power:ClearAllPoints()
		Power:SetPoint("CENTER",UIParent,"CENTER",0,-188)
		Power:SetHeight(15)
		Power:SetWidth(288)
		Power:Show()
	elseif profile == "SanBear" then
		Power:ClearAllPoints()
		--why are those offsets necessary? look at Bar1.lua from Tukui, this should be without offsets
		Power:SetPoint("BOTTOMLEFT",S["Panels"].ActionBar1,C["ActionBars"].ButtonSpacing+1, C["ActionBars"].ButtonSpacing+2)
		Power:SetPoint("RIGHT",ActionButton8,"LEFT",-C["ActionBars"].ButtonSpacing-1,0)
		Power:Height(C["ActionBars"].NormalButtonSize-3)
		Power:Show()
	elseif profile == "SahneUnholy" then
		Power:ClearAllPoints()
		--why are those offsets necessary? look at Bar1.lua from Tukui, this should be without offsets
		Power:SetPoint("BOTTOMLEFT",S["Panels"].ActionBar1,C["ActionBars"].ButtonSpacing+1, C["ActionBars"].ButtonSpacing+2)
		Power:SetPoint("RIGHT",ActionButton9,"LEFT",-C["ActionBars"].ButtonSpacing-1,0)
		Power:SetHeight(C["ActionBars"].NormalButtonSize-4)
		Power:Show()
	elseif profile == "Rogue" then
		Power:ClearAllPoints()
		Power:SetPoint("CENTER",UIParent,"CENTER",0,-190)
		Power:Show()
		Power:SetWidth(288)
	elseif profile == "Manyak" then
		Power:ClearAllPoints()
		Power:SetPoint("TOP",oUF_player.Castbar,"BOTTOM",0,-4)
		Power:SetHeight(10)
		Power:SetWidth(300)
		Power:Show()
	elseif profile == "Hidden" then
		Power:Hide()
	end

end
