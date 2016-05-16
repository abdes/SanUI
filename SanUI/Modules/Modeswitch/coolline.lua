local S = unpack(SanUI)

S.switchCoolLine = function(profile)

	local db, block = {}

	CoolLineDB = CoolLineDB or { }
	if CoolLineDB.perchar then
		db = CoolLineCharDB
	else
		db = CoolLineDB
	end
	
	if profile == "SanHeal" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
		}
		
	elseif profile == "SanBear" or profile == "SanCat" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(33917) or "Zerfleischen"] = true, -- Mangle(Bear)
			[GetSpellInfo(779) or "Prankenhieb"] = true, -- Swipe(Bear
			[GetSpellInfo(77758) or "Hauen"] = true, -- Thrash
			[GetSpellInfo(6807) or "Zermalmen"] = true, -- Maul
			[GetSpellInfo(33745) or "Aufschlitzen"] = true, --Lacerate
		}
		
	elseif profile == "Simplex" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(17364) or "Sturmschlag"] = true,
			[GetSpellInfo(60103) or "Lavapeitsche"] = true,
			[GetSpellInfo(73680) or "Elemente entfesseln"] = true,
			[GetSpellInfo(8042) or "Erdschock"] = true,
			[GetSpellInfo(8050) or "Flammenschock"] = true,
			[GetSpellInfo(8056) or "Frostschock"] = true,
			[GetSpellInfo(73899) or "Urtümlicher Schlag"] = true,
			[GetSpellInfo(58861) or "Hieb"] = true,
		}
		
	elseif profile == "SahneUnholy" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(91809) or "Sprung"] = true, --Jump (Ghoul ability)
			[GetSpellInfo(91837) or "Eitriges Bollwerk"] = true, -- Putrid Bulwark (Ghoul ability)
			[GetSpellInfo(47468) or "Klaue"] = true, -- Claw(Ghoul ability)
			[GetSpellInfo(91778) or "Klauenfeger"] = true, -- Sweeping Claws(Ghoul ability)
			[GetSpellInfo(91797 ) or "Monströser Hieb"] = true,  -- Monstrous Blow(Ghoul ability)
			[GetSpellInfo(47481) or "Nagen"] = true,  -- Gnaw(Ghoul ability)
			[GetSpellInfo(91802) or "Torkelnder Ansturm"] = true, -- Shambling Rush (Ghoul ability)
			[GetSpellInfo(47484) or "Zusammenkauern"] = true, -- Huddle(Ghoul ability)	     
		}
	elseif profile == "SandWW" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(107428) or "Rising Sun Kick"] = true,
			[GetSpellInfo(113656) or "Fists of Fury"] = true,
			[GetSpellInfo(101545) or "Flying Serpent Kick"] = true,
			[GetSpellInfo(115098) or "Chi Wave"] = true,
		}
	elseif profile == "PickerEnh" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(17364) or "Stormstrike"] = true,
			[GetSpellInfo(60103) or "Lava Lash"] = true,
			[GetSpellInfo(73680) or "Unleash Elements"] = true,
			[GetSpellInfo(8050) or "Flame Shock"] = true,
			[GetSpellInfo(8056) or "Frost Shock"] = true,
			[GetSpellInfo(1535) or "Fire Nova"] = true,
		}
	elseif profile == "NortrumTank" then
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
			[GetSpellInfo(6572) or "Revenge"] = true,
			[GetSpellInfo(23922) or "Shield Slam"] = true,
			[GetSpellInfo(78) or "Heroic Strike"] = true,
			--[GetSpellInfo(46968) or "Shockwave"] = true,
			[GetSpellInfo(6343) or "Thunder Clap"] = true,
			[GetSpellInfo(2565) or "Shield Block"] = true,
		}
	else
		block = {
			[GetItemInfo(6948) or "Hearthstone"] = true,  -- Hearthstone
		}
	end
		
	local key, value

	for key, value in pairs(db.block) do
		db.block[key] = nil
	end

	for key, value in pairs(block) do
		db.block[key] = value
	end
end
