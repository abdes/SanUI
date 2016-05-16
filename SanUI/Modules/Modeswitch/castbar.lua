local S = unpack(SanUI)

S.switchCastbar = function(profile)

	if profile == "SanChicken" then
		oUF_player.Castbar:ClearAllPoints()
		--oUF_player.Castbar.button:ClearAllPoints()
		oUF_player.Castbar:SetPoint("CENTER",UIParent,"CENTER",0,-270)
		--oUF_player.Castbar.button:SetPoint("BOTTOM",oUF_player.Castbar,"TOP",0,20)
	elseif profile == "Manyak" then
		oUF_player.Castbar:ClearAllPoints()
		oUF_player.Castbar.button:ClearAllPoints()
		oUF_player.Castbar:SetPoint("CENTER",UIParent,"CENTER",0,-188)
		oUF_player.Castbar:SetWidth(300)
		oUF_player.Castbar.button:SetHeight(16)
		oUF_player.Castbar.button:SetWidth(16)
		oUF_player.Castbar.button:SetPoint("RIGHT",oUF_player.Castbar,"LEFT",-3,0)
		-- GCD
		oUF_player.GCD:SetPoint("TOPLEFT", oUF_player, "BOTTOMLEFT", S.Scale(2), S.Scale(-2))
	elseif profile == "Pally" then
		oUF_player.Castbar:ClearAllPoints()
		oUF_player.Castbar.button:ClearAllPoints()
		oUF_player.Castbar:SetPoint("TOPRIGHT", oUF_player, "BOTTOMRIGHT", -S.Scale(4), S.Scale(-25))
		oUF_player.Castbar.button:SetPoint("TOPRIGHT",oUF_player.Castbar.bg,"TOPLEFT",-S.Scale(2),0)
	elseif profile == "DK" then
		oUF_player.Castbar:ClearAllPoints()
		oUF_player.Castbar.button:ClearAllPoints()
		oUF_player.Castbar:SetPoint("TOPLEFT", oUF_player, "BOTTOMLEFT", S.Scale(20), S.Scale(-20))
		oUF_player.Castbar.button:SetPoint("RIGHT",oUF_player.Castbar,"LEFT",-S.Scale(4),0)
	else
		oUF_player.Castbar:ClearAllPoints()
		oUF_player.Castbar.button:ClearAllPoints()
		oUF_player.Castbar:SetPoint("TOPLEFT", oUF_player, "BOTTOMLEFT", S.Scale(2), S.Scale(-2))
		oUF_player.Castbar.button:SetPoint("TOPRIGHT",oUF_player.Castbar.bg,"TOPLEFT",-S.Scale(2),0)
	end
	
	oUF_player.Castbar.Text:SetWidth(oUF_player.Castbar:GetWidth()*0.68)
	oUF_player.Castbar.Text:SetHeight(oUF_player.Castbar:GetHeight()*0.9)
end