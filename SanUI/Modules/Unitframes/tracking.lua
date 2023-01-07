local addonName, addon = ...
local S,C,L = unpack(addon) 
local oUF = addon.oUF

local Scale = S.Toolkit.Functions.Scale

if not S["UnitFrames"].RaidBuffsTracking then
	S["UnitFrames"].RaidBuffsTracking = {}
end

-- Cornerbuffs:
-- .spellID The spells ID
-- .pos Table. The position, unpacked into arguments to SetPoint, relative inside the auras frame
-- .color The standard color to apply to the texture (leave nil for images, probably)
-- .anyCaster If truthy, show regardless of caster. If falsy, show only if the player was the caster
-- .cooldownAnim If truthy, show a cooldown sweep animation
-- .timers Array (table indexed by integers) of timers. A timer is a table of the form { time, { r, g, b} }, where the icon texture 
--         is colored by SetVertexColor(r, g, b) if the remaining duration of the buff is <time. The first one matching wins.
-- .count Table { size } where size is fontsize
S["UnitFrames"].RaidBuffsTracking["DRUID"] = {
  -- Rejuvenation
	{
    spellID = 774,
    pos = {"CENTER", nil, "CENTER", -Scale(14), 0},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {4.5, {1, 1, 0}} },

  },
  -- Germination
	{
    spellID = 155777,
    pos = {"CENTER", nil, "CENTER", -Scale(14), -Scale(9)},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {4.5, {1, 1, 0}} }
  },
  -- Wild Growth
	{
    spellID = 48438,
    pos = {"CENTER", nil, "CENTER", -Scale(5), 0},
    color = {0, 1, 1},
    anyCaster = false,
    cooldownAnim = true
  },
  -- Regrowth
	{
    spellID = 8936,
    pos = {"CENTER", nil, "CENTER", Scale(3), 0},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {3.6, {1, 1, 0}} }
  },
	--[[ swiftmend -- SPECIAL DON'T CHANGE THIS (commenting out is ok)
	{
		spellID = 18562,
		pos = {"TOPLEFT",0,-Scale(7)},
		color = {1,1,1},
		anyCaster = false,
	}, 
	--]]
	-- adaptive swarm necro
	{
	  spellID = 325748,
    pos = {"CENTER", nil, "CENTER", Scale(12), 0},
    color = {153/255, 102/255, 0},
    anyCaster = false,
    count = { size = 9 },
		cooldownAnim = true

  },
  	-- adaptive swarm talent
	{
	  spellID = 391891,
    pos = {"LEFT", nil, "CENTER", Scale(12), 0},
    color = {153/255, 102/255, 0},
    anyCaster = false,
    count = { size = 9 },
		cooldownAnim = true

  },
}

if not S["UnitFrames"].TextAuras then
	S["UnitFrames"].TextAuras = {}
end

S["UnitFrames"].TextAuras["DRUID"] = S["UnitFrames"].TextAuras["DRUID"] or {}

table.insert(
	S["UnitFrames"].TextAuras["DRUID"],
	{
		spellID = {33763, 33778, 43421, 188550, 290754, 186371},
		pos = {"TOP",0,1},
		textsize = 10, 
		format = "|cFF00FF00%u|r", 
		timers = { { 2, "|cFFFF0000%.1f|r", 0.05}, { 4.5, "|cFFFFFF00%u|r", 0.3} },
		anyCaster = false,
	}
)

-- Defensive cooldowns: Simple list of spellIDs
S["UnitFrames"].RaidBuffsTracking["ALL"] = {
	1022, -- Blessing of Protection
	102342, -- Ironbark
	104773, -- Unending Resolve
	108271, -- Astral Shift
	108416, -- Dark Pact
	113862, -- Greater Invisibility
	11426, -- Ice Barrier
	116849, -- Life Cocoon
	118038, -- Die by the Sword
	120954, -- Fortifying Brew
	122278, -- Dampen Harm
	122783, -- Diffuse Magic
	125174, -- Touch of Karma
	12975, -- Last Stand
	145629, -- Anti-Magic Zone
	147833, -- Intervene
	184364, -- Enraged Regeneration
	184662, -- Shield of Vengeance
	186265, -- Aspect of the Turtle
	187827, -- Metamorphosis
	193320, -- Umbilicus Eternus
	194679, -- Rune Tap
	194844, -- BoneStorm
	196555, -- Netherwalk
	1966, -- Feint
	198065, -- Prismatic Cloak
	198158, -- Mass Invisibility
	198760, -- Intercept
	199027, -- Veil of Midnight
	199038, -- Leave No Man Behind
	199507, -- Spreading The Word: Protection
	199754, -- Riposte
	200851, -- Rage of the Sleeper
	201318, -- Fortifying Elixir
	201939, -- Protector of the Pack 3
	201940, -- Protector of the Pack 2
	202043, -- Protector of the Pack 1
	202162, -- Guard
	203524, -- Neltharion's Fury
	203819, -- Demon Spikes
	204018, -- Blessing of Spellwarding
	205191, -- Eye for an Eye
	20594 , -- Stoneform
	207319, -- Corpse Shield
	207654, -- Servant of the Queen
	209426, -- Darkness
	210655, -- Protection of Ashamane
	210918, -- Ethereal Form
	212295, -- Nether Ward
	212641, -- Guardian of Ancien Kings (Glyph of the Queen)
	212800, -- Blur
	215479, -- Ironskin Brew
	215769, -- Spirit of Redemption
	219809, -- Tombstone
	223658, -- Safeguard
	228049, -- Guardian of the Forgotten Queen
	22812, -- Barkskin
	234081, -- Celestial Guardian
	235313, -- Blazing Barrier
	235450, -- Prismatic Barrier
	23920, -- Spell Reflection
	263648, -- Soul Barrier
	27827, -- Spirit of Redemption
	31224, -- Cloak of Shadows
	31850, -- Ardent Defender
	324867, -- Fleshcraft (Necrolord)
	33206, -- Pain Suppression
	353319, -- Peaceweaver (PvP)
	353362, -- Dematerialize (PvP)
	363522, -- Gladiator's Eternal Aegis
	363916, -- Obsidian Scales
	45182, -- Cheating Death
	45438, -- Ice Block
	47585, -- Dispersion
	47788, -- Guardian Spirit
	48707, -- Anti-Magic Shell
	48792, -- Icebound Fortitude
	498, -- Divine Protection
	5277, -- Evasion
	55233, -- Vampiric Blood
	61336, -- Survival Instincts
	6940, -- Blessing of Sacrifice
	81256, -- Dancing Rune Weapon
	81782, -- Power Word: Barrier
	86659, -- Guardian of Ancien Kings
	871, -- Shield Wall
	97463, -- Rallying Cry
}

local function Defaults(priorityOverride)
	return {["enable"] = true, ["priority"] = priorityOverride or 0, ["stackThreshold"] = 0}
end


local function List(priority)
	return {
		enable = true,
		priority = priority or 0,
		stackThreshold = 0
	}
end

S["UnitFrames"].RaidDebuffs = {
		----------------------------------------------------------
	-------------------- Mythic+ Specific --------------------
	----------------------------------------------------------
	-- General Affixes
		[209858] = List(), -- Necrotic
		[226512] = List(), -- Sanguine
		[240559] = List(), -- Grievous
		[240443] = List(), -- Bursting
	-- Shadowlands Season 4
		[373364] = List(), -- Vampiric Claws
		[373429] = List(), -- Carrion Swarm
		[373370] = List(), -- Nightmare Cloud
		[373391] = List(), -- Nightmare
		[373570] = List(), -- Hypnosis
		[373607] = List(), -- Shadowy Barrier (Hypnosis)
		[373509] = List(), -- Shadow Claws (Stacking)
	-- Dragonflight Season 1
		[396369] = List(), -- Mark of Lightning
		[396364] = List(), -- Mark of Wind
	----------------------------------------------------------
	---------------- Dragonflight (Season 1) -----------------
	----------------------------------------------------------
	-- Court of Stars
		[207278] = List(), -- Arcane Lockdown
		[209516] = List(), -- Mana Fang
		[209512] = List(), -- Disrupting Energy
		[211473] = List(), -- Shadow Slash
		[207979] = List(), -- Shockwave
		[207980] = List(), -- Disintegration Beam 1
		[207981] = List(), -- Disintegration Beam 2
		[211464] = List(), -- Fel Detonation
		[208165] = List(), -- Withering Soul
		[209413] = List(), -- Suppress
		[209027] = List(), -- Quelling Strike
	-- Halls of Valor
		[197964] = List(), -- Runic Brand Orange
		[197965] = List(), -- Runic Brand Yellow
		[197963] = List(), -- Runic Brand Purple
		[197967] = List(), -- Runic Brand Green
		[197966] = List(), -- Runic Brand Blue
		[193783] = List(), -- Aegis of Aggramar Up
		[196838] = List(), -- Scent of Blood
		[199674] = List(), -- Wicked Dagger
		[193260] = List(), -- Static Field
		[193743] = List(), -- Aegis of Aggramar Wielder
		[199652] = List(), -- Sever
		[198944] = List(), -- Breach Armor
		[215430] = List(), -- Thunderstrike 1
		[215429] = List(), -- Thunderstrike 2
		[203963] = List(), -- Eye of the Storm
	-- Shadowmoon Burial Grounds
		[156776] = List(), -- Rending Voidlash
		[153692] = List(), -- Necrotic Pitch
		[153524] = List(), -- Plague Spit
		[154469] = List(), -- Ritual of Bones
		[162652] = List(), -- Lunar Purity
		[164907] = List(), -- Void Cleave
		[152979] = List(), -- Soul Shred
		[158061] = List(), -- Blessed Waters of Purity
		[154442] = List(), -- Malevolence
		[153501] = List(), -- Void Blast
	-- Temple of the Jade Serpent
		[396150] = List(), -- Feeling of Superiority
		[397878] = List(), -- Tainted Ripple
		[106113] = List(), -- Touch of Nothingness
		[397914] = List(), -- Defiling Mist
		[397904] = List(), -- Setting Sun Kick
		[397911] = List(), -- Touch of Ruin
		[395859] = List(), -- Haunting Scream
		[374037] = List(), -- Overwhelming Rage
		[396093] = List(), -- Savage Leap
		[106823] = List(), -- Serpent Strike
		[396152] = List(), -- Feeling of Inferiority
		[110125] = List(), -- Shattered Resolve
		[397797] = List(), -- Corrupted Vortex
	-- Ruby Life Pools
		[392406] = List(), -- Thunderclap
		[372820] = List(), -- Scorched Earth
		[384823] = List(), -- Inferno 1
		[373692] = List(), -- Inferno 2
		[381862] = List(), -- Infernocore
		[372860] = List(), -- Searing Wounds
		[373869] = List(), -- Burning Touch
		[385536] = List(), -- Flame Dance
		[381518] = List(), -- Winds of Change
		[372858] = List(), -- Searing Blows
		[372682] = List(), -- Primal Chill 1
		[373589] = List(), -- Primal Chill 2
		[373693] = List(), -- Living Bomb
		[392924] = List(), -- Shock Blast
		[381515] = List(), -- Stormslam
		[396411] = List(), -- Primal Overload
		[384773] = List(), -- Flaming Embers
		[392451] = List(), -- Flashfire
		[372697] = List(), -- Jagged Earth
		[372047] = List(), -- Flurry
		[372963] = List(), -- Chillstorm
	-- The Nokhud Offensive
		[382628] = List(), -- Surge of Power
		[386025] = List(), -- Tempest
		[381692] = List(), -- Swift Stab
		[387615] = List(), -- Grasp of the Dead
		[387629] = List(), -- Rotting Wind
		[386912] = List(), -- Stormsurge Cloud
		[395669] = List(), -- Aftershock
		[384134] = List(), -- Pierce
		[388451] = List(), -- Stormcaller's Fury 1
		[388446] = List(), -- Stormcaller's Fury 2
		[395035] = List(), -- Shatter Soul
		[376899] = List(), -- Crackling Cloud
		[384492] = List(), -- Hunter's Mark
		[376730] = List(), -- Stormwinds
		[376894] = List(), -- Crackling Upheaval
		[388801] = List(), -- Mortal Strike
		[376827] = List(), -- Conductive Strike
		[376864] = List(), -- Static Spear
		[375937] = List(), -- Rending Strike
		[376634] = List(), -- Iron Spear
	-- The Azure Vault
		[388777] = List(), -- Oppressive Miasma
		[386881] = List(), -- Frost Bomb
		[387150] = List(), -- Frozen Ground
		[387564] = List(), -- Mystic Vapors
		[385267] = List(), -- Crackling Vortex
		[386640] = List(), -- Tear Flesh
		[374567] = List(), -- Explosive Brand
		[374523] = List(), -- Arcane Roots
		[375596] = List(), -- Erratic Growth Channel
		[375602] = List(), -- Erratic Growth
		[370764] = List(), -- Piercing Shards
		[384978] = List(), -- Dragon Strike
		[375649] = List(), -- Infused Ground
		[387151] = List(), -- Icy Devastator
		[377488] = List(), -- Icy Bindings
		[374789] = List(), -- Infused Strike
		[371007] = List(), -- Splintering Shards
		[375591] = List(), -- Sappy Burst
		[385409] = List(), -- Ouch, ouch, ouch!
	-- Algeth'ar Academy
		[389033] = List(), -- Lasher Toxin
		[391977] = List(), -- Oversurge
		[386201] = List(), -- Corrupted Mana
		[389011] = List(), -- Overwhelming Power
		[387932] = List(), -- Astral Whirlwind
		[396716] = List(), -- Splinterbark
		[388866] = List(), -- Mana Void
		[386181] = List(), -- Mana Bomb
		[388912] = List(), -- Severing Slash
		[377344] = List(), -- Peck
		[376997] = List(), -- Savage Peck
		[388984] = List(), -- Vicious Ambush
		[388544] = List(), -- Barkbreaker
		[377008] = List(), -- Deafening Screech
	----------------------------------------------------------
	---------------- Dragonflight (Season 2) -----------------
	----------------------------------------------------------
	-- Brackenhide Hollow
	-- Halls of Infusion
	-- Neltharus
	-- Uldaman: Legacy of Tyr
	---------------------------------------------------------
	---------------- Vault of the Incarnates ----------------
	---------------------------------------------------------
	-- Eranog
		[370648] = List(5), -- Primal Flow
		[390715] = List(6), -- Primal Rifts
		[370597] = List(6), -- Kill Order
	-- Terros
		[382776] = List(5), -- Awakened Earth 1
		[381253] = List(5), -- Awakened Earth 2
		[386352] = List(3), -- Rock Blast
		[382458] = List(6), -- Resonant Aftermath
	-- The Primal Council
		[371624] = List(5), -- Conductive Mark
		[372027] = List(4), -- Slashing Blaze
		[374039] = List(4), -- Meteor Axe
	-- Sennarth, the Cold Breath
		[371976] = List(4), -- Chilling Blast
		[372082] = List(5), -- Enveloping Webs
		[374659] = List(4), -- Rush
		[374104] = List(5), -- Wrapped in Webs Slow
		[374503] = List(6), -- Wrapped in Webs Stun
		[373048] = List(3), -- Suffocating Webs
	-- Dathea, Ascended
		[391686] = List(5), -- Conductive Mark
		--[378277] = List(2), -- Elemental Equilbrium (not here?)
		[388290] = List(4), -- Cyclone
	-- Kurog Grimtotem
		[377780] = List(5), -- Skeletal Fractures
		[372514] = List(5), -- Frost Bite
		[374554] = List(4), -- Lava Pool
		[374709] = List(4), -- Seismic Rupture
		[374023] = List(6), -- Searing Carnage
		[374427] = List(6), -- Ground Shatter
		[390920] = List(5), -- Shocking Burst
		[372458] = List(6), -- Below Zero
		[391055] = List(0), -- Enveloping Earth
	-- Broodkeeper Diurna
		[388920] = List(6), -- Frozen Shroud
		[378782] = List(5), -- Mortal Wounds
		[378787] = List(5), -- Crushing Stoneclaws
		[375620] = List(6), -- Ionizing Charge
		[375578] = List(4), -- Flame Sentry
	-- Raszageth the Storm-Eater
		[381615] = List(6), -- Static Charge
		[399713] = List(6), -- Magnetic Charge
		[385073] = List(5), -- Ball Lightning
		[377467] = List(6), -- Fulminating Charge
		-- TODO: DF
}
