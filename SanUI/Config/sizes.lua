local addonName, addon = ...
local S = unpack(addon)

local Scale = S.Toolkit.Functions.Scale

local sizes = {
	scales = {
	},
	raidframes = {
		width = Scale(66),
		height = Scale(28),
		raidicon = Scale(16),
		readycheck = Scale(12),
		resurrecticon = Scale(12),
		summonindicator = Scale(28),
		turtleicon = Scale(15),
		raiddebuffs = Scale(15),
		raiddebuffsicon = Scale(14),
		notauratrackicon = Scale(6),
		
	},
}

for i = -10, 12 do
	sizes.scales[i] = Scale(i)
end

S.sizes = sizes