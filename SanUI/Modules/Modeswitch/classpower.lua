local S = unpack(SanUI)

local function pack(...)
	return arg
end

S.switchClassPower =  function (profile)

	if profile == "PRet" then
		for i = 1, #oUF_player.ClassPower do
			local bg = oUF_player.ClassPower[i].bg:GetParent()
			local point, relativeTo, relativePoint, xOfs, yOfs = bg:GetPoint()
			
			bg.hank_placement = { point, relativeTo, relativePoint, xOfs, yOfs }
		end
		
		local indices = {3, 2, 1, 4, 5}
		for idx, i in ipairs(indices) do
			local bg = oUF_player.ClassPower[i].bg:GetParent()
			bg:ClearAllPoints()
			
			if idx == 1 then
				bg:SetPoint("TOP", UIParent, "CENTER", 0, -150)
			else
				if idx <= 3 then
					local prev = oUF_player.ClassPower[indices[idx - 1]].bg:GetParent()
					bg:SetPoint("RIGHT", prev, "LEFT", -2, 0)
				elseif idx == 4 then
					local prev = oUF_player.ClassPower[3].bg:GetParent()
					bg:SetPoint("LEFT", prev, "RIGHT", 2, 0)
				elseif idx == 5 then
					local prev = oUF_player.ClassPower[4].bg:GetParent()
					bg:SetPoint("LEFT", prev, "RIGHT", 2, 0)
				end
			end
		end
	else
		if oUF_player.ClassPower then
			for i = 1, #oUF_player.ClassPower do
				local bg = oUF_player.ClassPower[i].bg:GetParent()
				bg:ClearAllPoints()
				bg:SetPoint(unpack(bg.hank_placement))
			end
		end
	end
	
end