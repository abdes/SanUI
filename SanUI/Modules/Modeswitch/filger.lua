local S = unpack(SanUI)

S.switchFilger =  function(profile)
	
	if profile == "SanBear" or profile == "SanCat" then
		local stance = GetShapeshiftForm()
		
		if (stance == 1) then	
			if FilgerProfile ~= "SanBear" then
				f_p("SanBear")
			end
			
		elseif (stance == 3) then	
			if FilgerProfile ~= "SanCat" then
				f_p("SanCat")
			end		
		else
			if FilgerProfile ~= "SanBear" then
				f_p("SanBear")
			end
		end
	else
		if FilgerProfile ~= profile then
			f_p(profile)
		end
	end
	
end