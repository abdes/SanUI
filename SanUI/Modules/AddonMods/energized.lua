if not IsAddOnLoaded("Energized") then return end

local S = unpack(SanUI)

S.modEnergized = function(event)

	--Show Energized all the time
	if Energized.db then
		Energized.db.profile.enableSolo = true
		Energized.db.profile.enableParty = true
		Energized.db.profile.enableBattleground = true
		Energized.db.profile.enableArena = true
		Energized.db.profile.enableRaid = true
		Energized.db.profile.showZeroIssuesMessage = true
		Energized.db.profile.hideTime = 0
		Energized:Update("OPTIONS")
	else
		print("No Energized.db")
	end
	
end