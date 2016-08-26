local S,C = unpack(SanUI)

S.hookActionBar1 = function() end

S.switchActionButtons = function(profile)

	-- this is neede b/c we hook this function below, might be called in
	-- combat
	if InCombatLockdown() then return end

	local button

	if profile == "SanBear" then
		for i = 1, 12 do
			button = _G["ActionButton"..i]
			button:ClearAllPoints()
			if i == 1 then
				button:Point("CENTER",UIParent,-89,-185)
			elseif i == 7 then
				button:Point("TOPLEFT",ActionButton2,"BOTTOMLEFT",0,-7)
			elseif i == 8 then
				button:SetPoint("BOTTOMLEFT", 8*C["ActionBars"].NormalButtonSize + 2*C["ActionBars"].ButtonSpacing, C["ActionBars"].ButtonSpacing)
			else
				local previous = _G["ActionButton"..i-1]
				button:SetPoint("LEFT", previous, "RIGHT", C["ActionBars"].ButtonSpacing, 0)
			end
		end
		
	elseif profile == "SahneUnholy" then
		for i = 1, 12 do
			button = _G["ActionButton"..i]
			button:ClearAllPoints()
			if i == 1 then
				button:Point("CENTER",UIParent,-89,-185)
			elseif i == 7 then
				button:Point("TOPLEFT",ActionButton2,"BOTTOMLEFT",0,-7)
			elseif i == 9 then
				button:SetPoint("BOTTOMLEFT", 9*C["ActionBars"].NormalButtonSize + 2*C["ActionBars"].ButtonSpacing, C["ActionBars"].ButtonSpacing)	
			else
				local previous = _G["ActionButton"..i-1]
				button:SetPoint("LEFT", previous, "RIGHT", C["ActionBars"].ButtonSpacing, 0)
			end
		end

	else
		for i = 1, 12 do
			button = _G["ActionButton"..i]
			button:ClearAllPoints()
			if i == 1 then
				button:SetPoint("BOTTOMLEFT", S["Panels"].ActionBar1, C["ActionBars"].ButtonSpacing, C["ActionBars"].ButtonSpacing)
			else
				local previous = _G["ActionButton"..i-1]
				button:SetPoint("LEFT", previous, "RIGHT", C["ActionBars"].ButtonSpacing, 0)
			end
		end
	end	
	
	S.hookActionBar1 = function()
		S.switchActionButtons(profile)
	end

end

-- Tukui rearranges the buttons on each PLAYER_ENTERING_WORLD
-- so we get the function and hook this switch function
hooksecurefunc(S["ActionBars"],"Enable",function()
	if not S["Panels"].ActionBar1 then
		print("No ActionBar1! Can't hook OnEvent!")
	else
		S["Panels"].ActionBar1:HookScript("OnEvent",function(self, event, unit, ...)
			--if event == "PLAYER_ENTERING_WORLD" then
				S.hookActionBar1()
			--end
		end)
	end
end)
