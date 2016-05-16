local S = unpack(SanUI)

S.switchGCD =  function (profile)

	if profile == "Hidden" then
		oUF_player.GCD:SetAlpha(0)
	else
		oUF_player.GCD:SetAlpha(1)
	end
	
end