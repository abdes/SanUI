local S = unpack(SanUI)


-- This is the list of profiles you can choose from the menu
-- If there's only 1, it's loaded automatically and you dont get anything in the menu
-- If there's more than 1, the first is loaded by default, and you can choose all of them from the menu
-- Modes are defined below, see "MODES HERE"
S["profiles"] = {
 ["Sanctity"] = { 
	modes = {"SanHeal","SanChicken","SanBear", "SanCat" },
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
 ["Picker"] = { 
	modes = {"PickerEnh" },
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
 ["Sandalath"] = { 
	modes = {"SandWW" },
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
 ["Sahnetorture"] = { 
	modes = {"SahneUnholy"},
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
 ["Alakabaster"] = {
	modes = {"Alakabaster"},
	AddonMenu = {Grid=1, DBM=2, Altoholic=3},
 },
 ["Nortrum"] = {
	modes = {"NortrumTank"},
	AddonMenu = {DBM=1,Altoholic=2,WorldFrame=3},
 },
 ["Suran"] = {
	modes = {"Suran"},
	AddonMenu = {Grid=1, DBM=2, Altoholic=3},
 },
 ["Borrack"] = {
	modes = {"Borrack"},
	AddonMenu = {Grid=1, DBM=2, Altoholic=3},
 },
 ["Manyak"] = {
	modes = {"Manyak"},
	AddonMenu = {Grid=1, DBM=2, Altoholic=3},
 },
 ["Sindaria"] = {
	modes = {"SinHeal","SinShadow"},
	AddonMenu = {DBM=1,Altoholic=2, WorldFrame=3},
 },
 ["Simplex"] = {
	modes = {"Simplex"},
	AddonMenu = {Grid=1,Altoholic=2,DXE=3}
 },
 ["Nelahu"] = {
 	modes = {"NelaHeal","NelaTank","NelaRet"},
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
 ["DEFAULT"] = {
 	modes = {"Heal","Tank", "Damage" },
	AddonMenu = {DBM=1, Altoholic=2, WorldFrame=3},
 },
}

-- MODES HERE
-- Just c&p any of the entries and edit to your likings
-- the individual entries are commented below in the SanHeal mode
-- most things should be obvious from the screenshots, see http://www.wowinterface.com/downloads/fileinfo.php?id=18562#info
-- I've described them below nevertheless

S["Modes"] = {

	["SanHeal"] = {
	
		["raidframes"] = "SanHeal",		--SanHeal always shows the Healing Raid Frames
							--SanChicken always shows the DD Raid Frames
		["SimpleAuraFilter"] = "SanHeal",	--Those profiles aren't delivered with SanUI, choose any you want and configure ingame
							--Just Shift+Rightclick on any buff to hide, it will be cancelled now, but never show up again, even if you have it
		["castbar"] = "SanHeal",		--SanHeal/SanFeral puts it under the player frame, SanChicken in the middle between player and target with symbol above
							--Pally puts it under the player frame, left of the holy power (paladins should use this)
							--DK puts it under the player frame, under the rune display (deathknights should use this)
		["powerbar"] = "Hidden",		--Hidden hides it, SanCat shows it in cat form right in the middle of the screen below the char (only works for druids),
							--Rogue is the same as SanFeral just without shapeshift magic
							--SanBear/SahneUnholy put it where the first 7/8 action buttons are usually, see ["ActionButtons"] below
		["Filger"] = "SanHeal",			--SanHeal for druid healers, SanFeral for Ferals, SanChicken for moonkins... others need to be defined in Tukui_Filger/Tukui_Filger_San.lua
							--you can always use default_CLASS (i.e. default_MAGE)
							--look at the Modes below to see what else has been preconfigured other then default_CLASS (e.g. default_PRIEST etc.)
		["gcd"] = "SanHeal",			--Hidden hides it, everything else puts is below the castbar
		["bossbars"] = "SanHeal",		--SanHeal has greyish colors and tukui borders, Suran has red color and black borders
							--SanChicken has SanHeals colors, but puts them stacked above target frame (useful for multidot)
		["coolline"] = "SanHeal",		--SanHeal for Druid Healers, disable to disable it (does not unload the addon, just disable it)
							--SanFeral for Feral Druids, hides all the short time stuff like mangle(bear)
							--Simplex for Enhancement Shaman, hides all the rotational stuff
		["ActionButtons"] = "SanHeal",		--Positioning of ActionButtons, SanHeal is just the standard, SanBear arranges the first 7
							--visibly below the char... and positions the buff timer bar for savage defense appropriately
							--i.e. => you should just use SanBear for bears, in combination with the SanBear Filger profile
							--and use ActionButton7 for SavageDefense
							--SahneUnholy is the same as SanBear, just for the 8 first buttons instead of 7
		["DBM"] = "SanHeal", --DBM profile to use, if you choose one that deosn't exist, one with that name will be created
	},
	["SanChicken"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanChicken",
		["castbar"] = "SanChicken",
		["powerbar"] = "Hidden",
		["Filger"] = "SanChicken",
		["gcd"] = "SanChicken",
		["bossbars"] = "SanChicken",
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanHeal",
		["DBM"] = "SanHeal", 
	},
	["SanBear"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanBear",
		["castbar"] = "SanBear",
		["powerbar"] = "SahneUnholy",
		["gcd"] = "SanBear",
		["bossbars"] = "SanChicken",
		["coolline"] = "SanBear",
		["ActionButtons"] = "SahneUnholy",
		["DBM"] = "SanBear", 
	},
	["SanCat"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanCat",
		["castbar"] = "SanCat",
		["powerbar"] = "SanCat",
		["Filger"] = "SanCat",
		["gcd"] = "SanCat",
		["bossbars"] = "SanHeal",
		["coolline"] = "SanCat",
		["ActionButtons"] = "SanHeal",
		["DBM"] = "SanHeal", 
	},
	["PickerEnh"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "PickerEnh",
		["castbar"] = "SanHeal",
		["powerbar"] = "SahneUnholy",
		["gcd"] = "SanHeal",
		["bossbars"] = "SanHeal",
		["coolline"] = "PickerEnh",
		["ActionButtons"] = "SahneUnholy",
		["DBM"] = "Picker", 
	},
	["NortrumTank"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "NortrumTank",
		["castbar"] = "SanBear",
		["powerbar"] = "SanBear",
		["gcd"] = "SanBear",
		["bossbars"] = "SanChicken",
		["coolline"] = "NortrumTank",
		["ActionButtons"] = "SanBear",
		["DBM"] = "NortrumTank", 		
	},
	["SahneUnholy"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanCat",
		["castbar"] = "DK",
		["powerbar"] = "SahneUnholy",
		["Filger"] = "SahneUnholy",
		["gcd"] = "SanCat",
		["bossbars"] = "SanHeal",
		["coolline"] = "SahneUnholy",
		["ActionButtons"] = "SahneUnholy",
	},
	["SandWW"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanCat",
		["castbar"] = "DK",
		["powerbar"] = "SahneUnholy",
		["Filger"] = "SahneUnholy",
		["gcd"] = "SanCat",
		["bossbars"] = "SanHeal",
		["coolline"] = "SandWW",
		["ActionButtons"] = "SahneUnholy",
	},
	["Alakabaster"] = { --Profile for a Mage
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SanChicken",
		["castbar"] = "SanChicken",
		["powerbar"] = "Hidden",
		["Filger"] = "default_MAGE",
		["gcd"] = "SanChicken",
		["bossbars"] = "SanHeal",	
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanHeal",
	},
	["NelaHeal"] = {
		["raidframes"] = "SanHeal",
		["SimpleAuraFilter"] = "NelaHeal",
		["castbar"] = "Pally",
		["powerbar"] = "Hidden",
		["Filger"] = "default_PALADIN",
		["gcd"] = "Pally",
		["bossbars"] = "SanHeal",
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanHeal",
	},
	["NelaTank"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "NelaTank",
		["castbar"] = "Pally",
		["powerbar"] = "Hidden",
		["Filger"] = "default_PALADIN",
		["gcd"] = "Pally",
		["bossbars"] = "SanHeal",
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanBear",
	},
	["NelaRet"] = {
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "NelaRet",
		["castbar"] = "Pally",
		["powerbar"] = "Hidden",
		["Filger"] = "default_PALADIN",
		["gcd"] = "Pally",
		["bossbars"] = "SanHeal",
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanHeal",
	},
	["SinHeal"] = { --Profile for a Healpriest
		["raidframes"] = "SanHeal",
		["SimpleAuraFilter"] = "SinHeal",
		["castbar"] = "SanHeal",
		["powerbar"] = "Hidden",
		["Filger"] = "default_PRIEST",
		["gcd"] = "SanHeal",
		["bossbars"] = "SanHeal",	
		["coolline"] = "SanHeal",
		["ActionButtons"] = "SanHeal",
	},
	["SinShadow"] = { --Profile for a Shadow Priest
		["raidframes"] = "SanChicken",
		["SimpleAuraFilter"] = "SinShadow",
		["castbar"] = "SanChicken",
		["powerbar"] = "Hidden",
		["Filger"] = "default_PRIEST",
		["gcd"] = "SanChicken",
		["bossbars"] = "SanHeal",
		["coolline"] = "SinShadow",
		["ActionButtons"] = "SanHeal",
	},
	["Suran"] = {
		["SimpleAuraFilter"] = "SanFeral",
		["castbar"] = "SanFeral",
		["powerbar"] = "Rogue",
		["Filger"] = "Suran",
		["gcd"] = "Hidden",
		["bossbars"] = "Suran",	
	},
	["Borrack"] = {
		["SimpleAuraFilter"] = "SanFeral",
		["castbar"] = "SanFeral",
		["powerbar"] = "Rogue",
		["Filger"] = "Borrack",
		["gcd"] = "Hidden",
		["bossbars"] = "Suran",	
	},
	["Manyak"] = {
		["SimpleAuraFilter"] = "",
		["castbar"] = "Manyak",
		["powerbar"] = "Manyak",
		["Filger"] = "Manyak",
		["gcd"] = "Hidden",
		["bossbars"] = "Suran",	
	},
	["Simplex"] = { --Enh Shaman
		["raidframes"] = "SanFeral",
		["SimpleAuraFilter"] = "Simplex",
		["castbar"] = "SanFeral",
		["powerbar"] = "Hidden",
		["Filger"] = "simplex",
		["gcd"] = "SanFeral",
		["bossbars"] = "SanHeal",
		["coolline"] = "Simplex",		
	},

}

if not S["profiles"][S.MyName] then

	if S.MyClass == "DRUID" then
		S["profiles"][S.MyName] = S["profiles"]["Sanctity"]
	else
		S["profiles"][S.MyName] = S["profiles"]["DEFAULT"]
		S["Modes"]["Heal"] = S["Modes"]["SanHeal"]
		S["Modes"]["Tank"] = S["Modes"]["SanBear"]
		S["Modes"]["Damage"] = S["Modes"]["SanChicken"]
	end
	
	if S.MyClass == "DEATHKNIGHT" then
		S["Modes"]["Damage"] = S["Modes"]["SahneUnholy"]
	end
	
	if S.MyClass == "PALADIN" then
		S["Modes"]["Heal"] = S["Modes"]["NelaHeal"]
		S["Modes"]["Tank"] = S["Modes"]["NelaTank"]
		S["Modes"]["Damage"] = S["Modes"]["NelaRet"]
	end

	if S.MyClass == "MONK" then
		S["Modes"]["Damage"] = S["Modes"]["SandWW"]
	end

	if S.MyClass == "SHAMAN" then
		S["profiles"][S.MyName]["modes"][4]="Enhancement"
		S["Modes"]["Enhancement"] = S["Modes"]["PickerEnh"]
	end
	
	if S.MyClass == "WARRIOR" then
		S["Modes"]["Tank"] = S["Modes"]["NortrumTank"]
	end
end
