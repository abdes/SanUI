local S,C = unpack(SanUI)

-- only executed for certain chars (see SanUI\Misc.lua)
function S.modDetails(event)
	local f
	
	for i =1,99 do 
		local f = _G["DetailsBaseFrame".. tostring(i)]

		if f and not f.SanUIbg then 
			local g = CreateFrame("Frame", nil,f)
			g:Point("TOPLEFT", f, "TOPLEFT",-2,2)
			g:Point("BOTTOMRIGHT", f , "BOTTOMRIGHT", 2, -2)
			g:SetTemplate()
			g:SetBackdropColor(0,0,0,0)
			
			f.SanUIbg = g
		end
	end
	
	f = _G["DetailsBaseFrame1"]
	
	GameTooltip:HookScript("OnUpdate", function(self, ...)
		if not TukuiTooltipAnchor then return end
	
		if (f and f:IsShown()) then
			TukuiTooltipAnchor:ClearAllPoints()
			TukuiTooltipAnchor:Point("BOTTOMRIGHT", f, "TOPRIGHT", 2, -10)  
		else
			TukuiTooltipAnchor:ClearAllPoints()
			TukuiTooltipAnchor:SetPoint("BOTTOMRIGHT", TukuiRightDataTextBox)
		end
	end) 
end

