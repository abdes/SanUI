local S = unpack(SanUI)

S.switchEclipsebar = function(profile)
	if profile == "SanChicken" and oUF_player.EclipseBar then	
		oUF_player:EnableElement("EclipseBar")
		oUF_player.EclipseBar:ForceUpdate()
		oUF_player.EclipseBar:Show()
	elseif oUF_player.EclipseBar then
		oUF_player.EclipseBar:Hide()
		oUF_player:DisableElement("EclipseBar")
	end

end
