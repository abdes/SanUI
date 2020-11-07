local S,C,L = unpack(SanUI) 
local oUF = SanUI.oUF
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

S["UnitFrames"].RaidBuffsTracking["DRUID"] = {
  -- Rejuvenation
	{
    spellID = 774,
    pos = {"TOPLEFT", 0, 0},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {4.5, {1, 1, 0}} }
  },
  -- Germination
	{
    spellID = 155777,
    pos = {"TOPLEFT", Scale(7), 0},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {4.5, {1, 1, 0}} }
  },
  -- Wild Growth
	{
    spellID = 48438,
    pos = {"TOPRIGHT", 0, 0},
    color = {0, 1, 1},
    anyCaster = false,
    cooldownAnim = true
  },
  -- Regrowth
	{
    spellID = 8936,
    pos = {"TOPLEFT", 0,- Scale(7)},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {3.6, {1, 1, 0}} }
  },
}

if not S["UnitFrames"].TextAuras then
	S["UnitFrames"].TextAuras = {}
end

S["UnitFrames"].TextAuras["DRUID"] = {
	{33763,{"TOP",0,-1},8}, --Lifebloom
}

-- Defensive cooldowns: Simple list of spellIDs
S["UnitFrames"].RaidBuffsTracking["ALL"] = {
  --Death Knight
	48707, -- Anti-Magic Shell
	81256, -- Dancing Rune Weapon
	55233, -- Vampiric Blood
	219809, -- Tombstone
	48792, -- Icebound Fortitude
	207319, -- Corpse Shield
	194844, -- BoneStorm
	145629, -- Anti-Magic Zone
  --Demon Hunter
	207811, -- Nether Bond (DH)
	207810, -- Nether Bond (Target)
	187827, -- Metamorphosis
	196555, -- Netherwalk
	212800, -- Blur
	203819, -- Demon Spikes
  -- Druid
	102342, -- Ironbark
	61336, -- Survival Instincts
	210655, -- Protection of Ashamane
	22812, -- Barkskin
	234081, -- Celestial Guardian
  --Hunter
	186265, -- Aspect of the Turtle
  --Mage
	45438, -- Ice Block
	113862, -- Greater Invisibility
	198111, -- Temporal Shield
  --Monk
	122783, -- Diffuse Magic
	122278, -- Dampen Harm
	125174, -- Touch of Karma
	201318, -- Fortifying Elixir
	202248, -- Guided Meditation
	120954, -- Fortifying Brew
	116849, -- Life Cocoon
  --Paladin
	642, -- Divine Shield
	498, -- Divine Protection
	205191, -- Eye for an Eye
	1022, -- Blessing of Protection
	6940, -- Blessing of Sacrifice
	204018, -- Blessing of Spellwarding
	199507, -- Spreading The Word: Protection
	228049, -- Guardian of the Forgotten Queen
	31850, -- Ardent Defender
	86659, -- Guardian of Ancien Kings
	212641, -- Guardian of Ancien Kings (Glyph of the Queen)
  --Priest
	81782, -- Power Word: Barrier
	47585, -- Dispersion
	27827, -- Spirit of Redemption
	197268, -- Ray of Hope
	47788, -- Guardian Spirit
	33206, -- Pain Suppression
  --Rogue
	5277, -- Evasion
	31224, -- Cloak of Shadows
	199754, -- Riposte
  --Shaman
	210918, -- Ethereal Form
	108271, -- Astral Shift
  --Warlock
	108416, -- Dark Pact
	104773, -- Unending Resolve
  --Warrior
	118038, -- Die by the Sword
	184364, -- Enraged Regeneration
	871, -- Shield Wall
  --Racial
	20594 , -- Stoneform

}

local function Defaults(priorityOverride)
	return {["enable"] = true, ["priority"] = priorityOverride or 0, ["stackThreshold"] = 0}
end

S["UnitFrames"].RaidDebuffs = {
	--BFA Dungeons
	--Freehold
	[258323] = Defaults(), -- Infected Wound
	[257775] = Defaults(), -- Plague Step
	[257908] = Defaults(), -- Oiled Blade
	[257436] = Defaults(), -- Poisoning Strike
	[274389] = Defaults(), -- Rat Traps
	[274555] = Defaults(), -- Scabrous Bites
	[258875] = Defaults(), -- Blackout Barrel
	[256363] = Defaults(), -- Ripper Punch
	
	--Shrine of the Storm
	[264560] = Defaults(), -- Choking Brine
	[268233] = Defaults(), -- Electrifying Shock
	[268322] = Defaults(), -- Touch of the Drowned
	[268896] = Defaults(), -- Mind Rend
	[268104] = Defaults(), -- Explosive Void
	[267034] = Defaults(), -- Whispers of Power
	[276268] = Defaults(), -- Heaving Blow
	[264166] = Defaults(), -- Undertow
	[264526] = Defaults(), -- Grasp of the Depths
	[274633] = Defaults(), -- Sundering Blow
	[268214] = Defaults(), -- Carving Flesh
	[267818] = Defaults(), -- Slicing Blast
	[268309] = Defaults(), -- Unending Darkness
	[268317] = Defaults(), -- Rip Mind
	[268391] = Defaults(), -- Mental Assault
	[274720] = Defaults(), -- Abyssal Strike

	--Siege of Boralus
	[257168] = Defaults(), -- Cursed Slash
	[272588] = Defaults(), -- Rotting Wounds
	[272571] = Defaults(), -- Choking Waters
	[274991] = Defaults(), -- Putrid Waters
	[275835] = Defaults(), -- Stinging Venom Coating
	[273930] = Defaults(), -- Hindering Cut
	[257292] = Defaults(), -- Heavy Slash
	[261428] = Defaults(), -- Hangman's Noose
	[256897] = Defaults(), -- Clamping Jaws
	[272874] = Defaults(), -- Trample
	[273470] = Defaults(), -- Gut Shot
	[272834] = Defaults(), -- Viscous Slobber
	[257169] = Defaults(), -- Terrifying Roar
	[272713] = Defaults(), -- Crushing Slam
	
	-- Tol Dagor
	[258128] = Defaults(), -- Debilitating Shout
	[265889] = Defaults(), -- Torch Strike
	[257791] = Defaults(), -- Howling Fear
	[258864] = Defaults(), -- Suppression Fire
	[257028] = Defaults(), -- Fuselighter
	[258917] = Defaults(), -- Righteous Flames
	[257777] = Defaults(), -- Crippling Shiv
	[258079] = Defaults(), -- Massive Chomp
	[258058] = Defaults(), -- Squeeze
	[260016] = Defaults(), -- Itchy Bite
	[257119] = Defaults(), -- Sand Trap
	[260067] = Defaults(), -- Vicious Mauling
	[258313] = Defaults(), -- Handcuff
	[259711] = Defaults(), -- Lockdown
	[256198] = Defaults(), -- Azerite Rounds: Incendiary
	[256101] = Defaults(), -- Explosive Burst
	[256044] = Defaults(), -- Deadeye
	[256474] = Defaults(), -- Heartstopper Venom
	
	--Waycrest Manor
	[260703] = Defaults(), -- Unstable Runic Mark
	[263905] = Defaults(), -- Marking Cleave
	[265880] = Defaults(), -- Dread Mark
	[265882] = Defaults(), -- Lingering Dread
	[264105] = Defaults(), -- Runic Mark
	[264050] = Defaults(), -- Infected Thorn
	[261440] = Defaults(), -- Virulent Pathogen
	[263891] = Defaults(), -- Grasping Thorns
	[264378] = Defaults(), -- Fragment Soul
	[266035] = Defaults(), -- Bone Splinter
	[266036] = Defaults(), -- Drain Essence
	[260907] = Defaults(), -- Soul Manipulation
	[260741] = Defaults(), -- Jagged Nettles
	[264556] = Defaults(), -- Tearing Strike
	[265760] = Defaults(), -- Thorned Barrage
	[260551] = Defaults(), -- Soul Thorns
	[263943] = Defaults(), -- Etch
	[265881] = Defaults(), -- Decaying Touch
	[261438] = Defaults(), -- Wasting Strike
	[268202] = Defaults(), -- Death Lens
	
	-- Atal'Dazar
	[252781] = Defaults(), -- Unstable Hex
	[250096] = Defaults(), -- Wracking Pain
	[250371] = Defaults(), -- Lingering Nausea
	[253562] = Defaults(), -- Wildfire
	[255582] = Defaults(), -- Molten Gold
	[255041] = Defaults(), -- Terrifying Screech
	[255371] = Defaults(), -- Terrifying Visage
	[252687] = Defaults(), -- Venomfang Strike
	[254959] = Defaults(), -- Soulburn
	[255814] = Defaults(), -- Rending Maul
	[255421] = Defaults(), -- Devour
	[255434] = Defaults(), -- Serrated Teeth
	[256577] = Defaults(), -- Soulfeast
	
	--King's Rest
	[270492] = Defaults(), -- Hex
	[267763] = Defaults(), -- Wretched Discharge
	[276031] = Defaults(), -- Pit of Despair
	[265773] = Defaults(), -- Spit Gold
	[270920] = Defaults(), -- Seduction
	[270865] = Defaults(), -- Hidden Blade
	[271564] = Defaults(), -- Embalming Fluid
	[270507] = Defaults(), -- Poison Barrage
	[267273] = Defaults(), -- Poison Nova
	[270003] = Defaults(), -- Suppression Slam
	[270084] = Defaults(), -- Axe Barrage
	[267618] = Defaults(), -- Drain Fluids
	[267626] = Defaults(), -- Dessication
	[270487] = Defaults(), -- Severing Blade
	[266238] = Defaults(), -- Shattered Defenses
	[266231] = Defaults(), -- Severing Axe
	[266191] = Defaults(), -- Whirling Axes
	[272388] = Defaults(), -- Shadow Barrage
	[271640] = Defaults(), -- Dark Revelation
	[268796] = Defaults(), -- Impaling Spear
	[268932] = Defaults(), -- Quaking Leap
	
	--Motherlode
	[263074] = Defaults(), -- Festering Bite
	[280605] = Defaults(), -- Brain Freeze
	[257337] = Defaults(), -- Shocking Claw
	[270882] = Defaults(), -- Blazing Azerite
	[268797] = Defaults(), -- Transmute: Enemy to Goo
	[259856] = Defaults(), -- Chemical Burn
	[269302] = Defaults(), -- Toxic Blades
	[280604] = Defaults(), -- Iced Spritzer
	[257371] = Defaults(), -- Tear Gas
	[257544] = Defaults(), -- Jagged Cut
	[268846] = Defaults(), -- Echo Blade
	[262794] = Defaults(), -- Energy Lash
	[262513] = Defaults(), -- Azerite Heartseeker
	[260829] = Defaults(), -- Homing Missle (travelling)
	[260838] = Defaults(), -- Homing Missle (exploded)
	[263637] = Defaults(), -- Clothesline
	
	--Temple of Sethraliss
	[269686] = Defaults(), -- Plague
	[268013] = Defaults(), -- Flame Shock
	[268008] = Defaults(), -- Snake Charm
	[273563] = Defaults(), -- Neurotoxin
	[272657] = Defaults(), -- Noxious Breath
	[267027] = Defaults(), -- Cytotoxin
	[272699] = Defaults(), -- Venomous Spit
	[263371] = Defaults(), -- Conduction
	[272655] = Defaults(), -- Scouring Sand
	[263914] = Defaults(), -- Blinding Sand
	[263958] = Defaults(), -- A Knot of Snakes
	[266923] = Defaults(), -- Galvanize
	[268007] = Defaults(), -- Heart Attack
	
	--Underrot
	[265468] = Defaults(), -- Withering Curse
	[278961] = Defaults(), -- Decaying Mind
	[259714] = Defaults(), -- Decaying Spores
	[272180] = Defaults(), -- Death Bolt
	[272609] = Defaults(), -- Maddening Gaze
	[269301] = Defaults(), -- Putrid Blood
	[265533] = Defaults(), -- Blood Maw
	[265019] = Defaults(), -- Savage Cleave
	[265377] = Defaults(), -- Hooked Snare
	[265625] = Defaults(), -- Dark Omen
	[260685] = Defaults(), -- Taint of G'huun
	[266107] = Defaults(), -- Thirst for Blood
	[260455] = Defaults(), -- Serrated Fangs
			
	--Operation: Mechagon
	[291928] = Defaults(), -- Giga-Zap
	[292267] = Defaults(), -- Giga-Zap
	[302274] = Defaults(), -- Fulminating Zap
	[298669] = Defaults(), -- Taze
	[295445] = Defaults(), -- Wreck
	[294929] = Defaults(), -- Blazing Chomp
	[297257] = Defaults(), -- Electrical Charge
	[294855] = Defaults(), -- Blossom Blast
	[291972] = Defaults(), -- Explosive Leap
	[285443] = Defaults(), -- "Hidden" Flame Cannon
	[291974] = Defaults(), -- Obnoxious Monologue
	[296150] = Defaults(), -- Vent Blast
	[298602] = Defaults(), -- Smoke Cloud
	[296560] = Defaults(), -- Clinging Static
	[297283] = Defaults(), -- Cave In
	[291914] = Defaults(), -- Cutting Beam
	[302384] = Defaults(), -- Static Discharge
	[301712] = Defaults(), -- Pounce
	
	------------------------
	-- Dungeons (Mythic+) --
	------------------------
	
	[200227] = Defaults(), -- Tangled Web
	[209858] = Defaults(), -- Necrotic
	[226512] = Defaults(), -- Sanguine
	[240559] = Defaults(), -- Grievous
	[240443] = Defaults(), -- Bursting
	[196376] = Defaults(), -- Grievous Tear

-- Uldir
	-- MOTHER
	[268277] = Defaults(), -- Purifying Flame
	[268253] = Defaults(), -- Surgical Beam
	[268095] = Defaults(), -- Cleansing Purge
	[267787] = Defaults(), -- Sundering Scalpel
	[268198] = Defaults(), -- Clinging Corruption
	[267821] = Defaults(), -- Defense Grid

	-- Vectis
	[265178] = Defaults(), -- Mutagenic Pathogen
	[265206] = Defaults(), -- Immunosuppression
	[265212] = Defaults(), -- Gestate
	[265129] = Defaults(), -- Omega Vector
	[267160] = Defaults(), -- Omega Vector
	[267161] = Defaults(), -- Omega Vector
	[267162] = Defaults(), -- Omega Vector
	[267163] = Defaults(), -- Omega Vector
	[267164] = Defaults(), -- Omega Vector

	-- Mythrax
	--[272146] = Defaults(), -- Annihilation
	[272536] = Defaults(), -- Imminent Ruin
	[274693] = Defaults(), -- Essence Shear
	[272407] = Defaults(), -- Oblivion Sphere

	-- Fetid Devourer
	[262313] = Defaults(), -- Malodorous Miasma
	[262292] = Defaults(), -- Rotting Regurgitation
	[262314] = Defaults(), -- Deadly Disease

	-- Taloc
	[270290] = Defaults(), -- Blood Storm
	[275270] = Defaults(), -- Fixate
	[271224] = Defaults(), -- Plasma Discharge
	[271225] = Defaults(), -- Plasma Discharge

	-- Zul
	[273365] = Defaults(), -- Dark Revelation
	[273434] = Defaults(), -- Pit of Despair
	--[274195] = Defaults(), -- Corrupted Blood
	[272018] = Defaults(), -- Absorbed in Darkness
	[274358]= Defaults(), --Rupturing Blood

	-- Zek'voz, Herald of N'zoth
	[265237] = Defaults(), -- Shatter
	[265264] = Defaults(), -- Void Lash
	[265360] = Defaults(), -- Roiling Deceit
	[265662] = Defaults(), -- Corruptor's Pact
	[265646] = Defaults(), -- Will of the Corruptor

	-- G'huun
	--[263436] = Defaults(), -- Imperfect Physiology
	--[263227] = Defaults(), -- Putrid Blood
	--[263372] = Defaults(), -- Power Matrix
	--[272506] = Defaults(), -- Explosive Corruption
	--[267409] = Defaults(), -- Dark Bargain
	--[267430] = Defaults(), -- Torment
	--[263235] = Defaults(), -- Blood Feast
	--[270287] = Defaults(), -- Blighted Ground	
	
	-- Siege of Zuldazar
	-- Ra'wani Kanae/Frida Ironbellows
	[283573] = Defaults(), -- Sacred Blade
	[283617] = Defaults(), -- Wave of Light

	-- Grong
	[283069] = Defaults(), -- Megatomic Fire
	[286373] = Defaults(), -- Chill of Death
	[285875] = Defaults(), -- Rending Bite
	[286431] = Defaults(), -- Necrotic Core
	[286433] = Defaults(), -- Necrotic Core
	[286434] = Defaults(), -- Necrotic Core

	-- Jaina
	[285253] = Defaults(), -- Ice Shard
	[288038] = Defaults(), -- Marked Target
	[287626] = Defaults(), -- Grasp of Frost
	[287490] = Defaults(), -- Frozen Solid
	[287199] = Defaults(), -- Ring of Ice
	[288392] = Defaults(), -- Vengeful Seas

	-- Stormwall Blockade
	[284410] = Defaults(), -- Tempting Song
	[284405] = Defaults(), -- Tempting Song
	[286680] = Defaults(), -- Roiling Tides
	[285000] = Defaults(), -- Kelp-Wrapped
	[285350] = Defaults(), --Storm's Wail
	[284106] = Defaults(), -- Crackling Lightning

	-- Opulence
	[286501] = Defaults(2), -- Creeping Blaze
	[289383] = Defaults(2), -- Chaotic Displacement
	[283063] = Defaults(2), -- Flames of Punishment
	[283507] = Defaults(2), -- Volatile Charge
	[287072] = Defaults(5), -- Liquid Gold
	[284470] = Defaults(5), -- Hex of Lethargy

	-- King Rastakhan
	[285044] = Defaults(), -- Toad Toxin
	[284831] = Defaults(), -- Scorching Detonation
	[289858] = Defaults(), -- Crushed
	[284781] = Defaults(), --Grievous Axe
	[286779] = Defaults(), -- Focused Demise
	[288415] = Defaults(), -- Caress of Death

	-- Jadefire Masters
	[282037] = Defaults(), -- Rising Flames
	[285632] = Defaults(), -- Stalking
	[288151] = Defaults(), -- Tested
	[286988] = Defaults(), -- Searing Embers

	-- Mekkatorque
	[288806] = Defaults(), -- Gigavolt Blast
	[283411] = Defaults(), -- Gigavolt Blast
	[286646] = Defaults(), -- Gigavolt Charge
	[286516] = Defaults(), -- Anti-Tampering Shock
	[286480] = Defaults(), -- Anti-Tampering Shock
	[287167] = Defaults(), -- Discombulation

	-- Conclave of the Chosen
	[284663] = Defaults(), -- Bwonsamdi's Wrath
	[282209] = Defaults(), -- Mark of Prey
	[285879] = Defaults(), -- Mind Wipe
	[282135] = Defaults(), -- Crawling Hex
	[282447] = Defaults(), -- Kimbul's Wrath
	[282834] = Defaults(), -- Kimbul's Wrath
	[286811] = Defaults(), -- Akunda's Wrath
	
	
	-- Crucible of Storms
	
	-- Cabal
	[282562] = Defaults(), -- Promises of Power
	[282432] = Defaults(), -- Crushing Doubt
	[282561] = Defaults(), -- Dark Herald
	[282540] = Defaults(), -- Agent of Demise
	
	-- Uu'nat
	[285367] = Defaults(), -- Piercing gaze of nzoth
	[285562] = Defaults(), -- Unknowable terror
	[285652] = Defaults(), -- Instiable torment		
	
--Eternal Palace
	--Lady Ashvane
	[296693] = Defaults(), -- Waterlogged
	[296725] = Defaults(), -- Barnacle Bash
	[296942] = Defaults(), -- Arcing Azerite
	[296938] = Defaults(), -- Arcing Azerite
	[296941] = Defaults(), -- Arcing Azerite
	[296939] = Defaults(), -- Arcing Azerite
	[296943] = Defaults(), -- Arcing Azerite
	[296940] = Defaults(), -- Arcing Azerite
	[296752] = Defaults(), -- Cutting Coral
	[297333] = Defaults(2), -- Briny Bubble
	[297397] = Defaults(2), -- Briny Bubble

	--Abyssal Commander Sivara
	[300701] = Defaults(), -- Rimefrost
	[300705] = Defaults(), -- Septic Taint
	[294847] = Defaults(), -- Unstable Mixture
	[295850] = Defaults(), -- Delirious
	[295421] = Defaults(), -- Overflowing Venom
	[295807] = Defaults(), -- Frozen
	[300883] = Defaults(), -- Inversion Sickness
	[295705] = Defaults(), -- Toxic Bolt

	--The Queen’s Court
	[301830] = Defaults(), -- Pashmar's Touch
	[296851] = Defaults(), -- Fanatical Verdict
	--[297836] = Defaults(), -- Potent Spark
	[297586] = Defaults(), -- Suffering
	--[304410] = Defaults(), -- Repeat Performance
	[299914] = Defaults(), -- Frenetic Charge
	[303306] = Defaults(2), -- Sphere of Influence
	[300545] = Defaults(), -- Mighty Rupture

	--Radiance of Azshara
	[296566] = Defaults(), -- Tide Fist
	[296737] = Defaults(), -- Arcane Bomb
	[296746] = Defaults(), -- Arcane Bomb
	[295920] = Defaults(), -- Ancient Tempest
	[296462] = Defaults(), -- Squall Trap
	[299152] = Defaults(), -- Waterlogged

	--Orgozoa
	[298156] = Defaults(), -- Desensitizing Sting
	[298306] = Defaults(), -- Incubation Fluid

	--Blackwater Behemoth
	[269279] = Defaults(),
	[186403] = Defaults(), -- Darkest Depths?
	[298836] = Defaults(), -- Darkest Depths?
	[292127] = Defaults(), -- Darkest Depths
	[292138] = Defaults(), -- Radiant Biomass
	[292167] = Defaults(), -- Toxic Spine
	[301494] = Defaults(), -- Piercing Barb

	--Za’qul
	[295495] = Defaults(), -- Mind Tether
	[295480] = Defaults(), -- Mind Tether
	[295249] = Defaults(), -- Delirium Realm
	[303819] = Defaults(), -- Nightmare Pool
	[293509] = Defaults(), -- Manifest Nightmares
	[295327] = Defaults(), -- Shattered Psyche
	[294545] = Defaults(), -- Portal of Madness
	[298192] = Defaults(), -- Dark Beyond
	[292963] = Defaults(), -- Dread
	[300133] = Defaults(), -- Snapped

	--Queen Azshara
	[298781] = Defaults(), -- Arcane Orb
	[297907] = Defaults(), -- Cursed Heart
	[302999] = Defaults(), -- Arcane Vulnerability
	[302141] = Defaults(), -- Beckon
	[299276] = Defaults(), -- Sanction
	[303657] = Defaults(), -- Arcane Burst
	[298756] = Defaults(), -- Serrated Edge
	[301078] = Defaults(), -- Charged Spear
	[298014] = Defaults(), -- Cold Blast
	[298018] = Defaults(), -- Frozen
	
--- Nyalotha
-- Wrathion
	[306015] = Defaults(1), -- Searing Armor	
	[306163] = Defaults(1), -- ? Incineration
	[313959] = Defaults(1), -- Scorching Blister	
	[309733] = Defaults(1), -- Burning Madness	
	[314347] = Defaults(1), -- Noxious Choke	
	-- Maut
	[307805] = Defaults(1), -- Devour Magic	
	[307399] = Defaults(1), -- Shadow Wounds	
	--[308158] = Defaults(1), -- Consuming Shadows	
	[314337] = Defaults(1), -- Ancient Curse	
	[314992] = Defaults(1), -- Drain Essence	
	-- Prophet Skitra
	[306387] = Defaults(1), -- Shadow Shock	
	[313276] = Defaults(1), -- Shred Psyche	
	-- Dark Inquisitor Xanesh
	--[306311] = Defaults(1), -- Soul Flay	
	[312406] = Defaults(1), -- Void Woken	
	[311551] = Defaults(1), -- Abyssal Strike	
	--[313198] = Defaults(1), -- Void Touched	
	-- The Hivemind
	[313461] = Defaults(1), -- Corrosion	
	--[313672] = Defaults(1), -- Acid Pool	
	--[313652] = Defaults(1), -- Mind-Numbing Nova	
	[313460] = Defaults(1), -- Nullification	
	[315311] = Defaults(1), -- Ravage	
	-- Shad'har
	--[312332] = Defaults(1), -- Slimy Residue	
	[307471] = Defaults(1), -- Crush	
	[307472] = Defaults(1), -- Dissolve	
	[307358] = Defaults(1), -- Debilitating Spit	
	[306928] = Defaults(1), -- Umbral Breath	
	[312530] = Defaults(1), -- Entropic Breath	
	[306929] = Defaults(1), -- Bubbling Breath	
	-- Drest'agath
	--[310406] = Defaults(1), -- Void Glare	
	--[310277] = Defaults(1), -- Volatile Seed	
	--[310309] = Defaults(1), -- Volatile Vulnerability	
	--[308377] = Defaults(1), -- Void Infused Ichor	
	[310358] = Defaults(1), -- Mutterings of Insanity	
	[310361] = Defaults(1), -- Unleashed  Insanity	
	--[310552] = Defaults(1), -- Mind Flay	
	--[310478] = Defaults(1), -- Void Miasma
	[310563] = Defaults(1), -- Mutterings of Betrayal
	-- Il'gynoth
	[309961] = Defaults(1), -- Eye of N'zoth	
	[310322] = Defaults(1), -- Morass of Corruption / Nightmare Corruption	
	[311401] = Defaults(1), -- Touch of the Corruptor	
	--[314396] = Defaults(1), -- Cursed Blood	
	[275269] = Defaults(1), -- Fixate	
	[312486] = Defaults(1), -- Recurring Nightmare	
	--Vexiona
	[307317] = Defaults(1), -- Encroaching Shadows	
	[307359] = Defaults(3), -- Despair	
	[307421] = Defaults(1), -- Annihilation	
	[315932] = Defaults(1), -- Brutal Smash	
	[307218] = Defaults(1), -- Twilight Decimator	
	--Ra-den
	[306819] = Defaults(1), -- Nullifying Strike	
	--[306279] = Defaults(1), -- Instability Exposure	
	[313109] = Defaults(1), -- Unstable Nightmare	
	--[315258] = Defaults(1), -- Dread Inferno	
	[306257] = Defaults(1), -- Unstable Vita	
	[306184] = Defaults(1), -- Unleashed Void	
	[309777] = Defaults(1), -- Void Defilement	
	[313227] = Defaults(1), -- Decaying Wound	
	[310019] = Defaults(1), -- Charged Bonds	
	[316065] = Defaults(1), -- Corrupted Existence	
	--Crapace of N'zoth
	[315954] = Defaults(1), -- Black Scar	
	[306973] = Defaults(1), -- Madness Bomb	
	[316848] = Defaults(1), -- Adaptive Membrane	
	--[307044] = Defaults(1), -- Nightmare Antibody	
	[307008] = Defaults(1), -- Breed Madness	
	[313364] = Defaults(1), -- Mental Decay	
	--[307061] = Defaults(1), -- Mycelial Growth	
	[306984] = Defaults(1), -- Insanity Bomb	
	[317627] = Defaults(1), -- Infinite Void	
	--N'zoth
	[309991] = Defaults(1), -- Anguish	
	--[318442] = Defaults(1), -- Paranoia	
	[309702] = Defaults(1), -- Void Lash	
	--[310042] = Defaults(1), -- Tumultuous Burst	
	[313400] = Defaults(1), -- Corrupted Mind	
	[313793] = Defaults(1), -- Flames of Insanity	
	--[316711] = Defaults(1), -- Mindwrack	
	[314889] = Defaults(1), -- Probe Mind	
	--[317112] = Defaults(1), -- Evoke Anguish	
	[318976] = Defaults(1), -- Stupefying Glare	

	[315176] = Defaults(0), -- Grasping Tendrils, Corruption Debuff
}
