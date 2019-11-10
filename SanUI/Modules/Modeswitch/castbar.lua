local S = unpack(SanUI)

S.switchCastbar = function(profile)

	local cb = oUF_player.Castbar
	cb.place = function(args)
		local disp_y = 0
		
		if args and args.cpoints and args.cpoints > 0 then
			disp_y = -20
		end
	
		if profile == "SanChicken" then
			cb:ClearAllPoints()
			cb:SetWidth(288)
			cb.button:ClearAllPoints()
			cb.button:Size(40)
			cb:SetPoint("CENTER",UIParent,"CENTER",0,-263)
			cb.button:SetPoint("BOTTOM",cb,"TOP",0,10)
		elseif profile == "Manyak" then
			cb:ClearAllPoints()
			cb.button:ClearAllPoints()
			cb:SetPoint("CENTER",UIParent,"CENTER",0,-188)
			cb:SetWidth(300)
			cb.button:SetHeight(16)
			cb.button:SetWidth(16)
			cb.button:SetPoint("RIGHT",cb,"LEFT",-3,0)
			-- GCD
			oUF_player.GCD:SetPoint("TOPLEFT", oUF_player, "BOTTOMLEFT", S.Scale(2), S.Scale(-2))
		elseif profile == "DK" then
			cb:ClearAllPoints()
			cb.button:ClearAllPoints()
			cb:Point("TOPLEFT", oUF_player, "BOTTOMLEFT", 20, -20)
			cb.button:Point("RIGHT",cb,"LEFT",-4,0)
		elseif profile == "PRet" then
			cb:ClearAllPoints()
			cb.button:ClearAllPoints()
			cb:Width(150)
			cb:Point("TOPLEFT", oUF_player, "BOTTOMLEFT", 2, disp_y)
			cb.button:Point("TOPRIGHT",cb.bg,"TOPLEFT",-2,0)
			cb.button:Size(28)
		else
			cb:ClearAllPoints()
			cb.button:ClearAllPoints()
			cb:Width(150)
			if oUF_player.ClassPower then
				local nr_classicons = #oUF_player.ClassPower
				cb:Point("TOPRIGHT", oUF_player.ClassPower[nr_classicons]:GetParent(), "BOTTOMRIGHT", 0, -2)
			else
				cb:Point("TOPLEFT", oUF_player, "BOTTOMLEFT", 2, disp_y)
			end
			
			cb.button:Point("TOPRIGHT",cb.bg,"TOPLEFT",-2,0)
			cb.button:Size(28)
		end
		cb.Text:SetWidth(cb:GetWidth()*0.68)
		cb.Text:SetHeight(cb:GetHeight()*0.9)
	end
	
	cb.place()
end