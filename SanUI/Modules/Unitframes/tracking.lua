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
	--Lifebloom
	{
		spellID = 33763,
		pos = {"TOP",0,-1},
		textsize = 8, 
		format = "|cFF00FF00%u|r", 
		timers = { { 2, "|cFFFF0000%.1f|r", 0.05}, { 4.5, "|cFFFFFF00%u|r", 0.3} },
	},
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
  194679, -- Rune Tap
  --Demon Hunter
	--207811, -- Nether Bond (DH)
	--207810, -- Nether Bond (Target)
	187827, -- Metamorphosis
	263648, -- Soul Barrier
  209426, -- Darkness
	196555, -- Netherwalk
	212800, -- Blur
	203819, -- Demon Spikes
  -- Druid
	102342, -- Ironbark
	61336, -- Survival Instincts
	22812, -- Barkskin
	234081, -- Celestial Guardian
  --Hunter
	186265, -- Aspect of the Turtle
	202748, -- Survival Tactics
  --Mage
	45438, -- Ice Block
	113862, -- Greater Invisibility
	198111, -- Temporal Shield
	198065, -- Prismatic Cloak
	11426, -- Ice Barrier
	235313, -- Blazing Barrier
  --Monk
	122783, -- Diffuse Magic
	122278, -- Dampen Harm
	125174, -- Touch of Karma
	201318, -- Fortifying Elixir
	202248, -- Guided Meditation
	202162, -- Guard
	120954, -- Fortifying Brew
	116849, -- Life Cocoon
	215479, -- Ironskin Brew
  --Paladin
	642, -- Divine Shield
	498, -- Divine Protection
	205191, -- Eye for an Eye
	184662, -- Shield of Vengeance
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
	1966, -- Feint
	199754, -- Riposte
	199027, -- Veil of Midnight
  --Shaman
	204293, -- Spirit Link
	210918, -- Ethereal Form
	108271, -- Astral Shift
	98007, -- Spirit Link Totem
	207498, -- Ancestral Protection
  --Warlock
	108416, -- Dark Pact
	104773, -- Unending Resolve
	212295, -- Nether Ward
  --Warrior
	118038, -- Die by the Sword
	184364, -- Enraged Regeneration
	871, -- Shield Wall
	199038, -- Leave No Man Behind
  --Racial
	20594 , -- Stoneform

}

local function Defaults(priorityOverride)
	return {["enable"] = true, ["priority"] = priorityOverride or 0, ["stackThreshold"] = 0}
end

S["UnitFrames"].RaidDebuffs = {
	-- Mythic+ Dungeons
		-- General Affix
		[209858] = Defaults(), -- Necrotic
		[226512] = Defaults(), -- Sanguine
		[240559] = Defaults(), -- Grievous
		[240443] = Defaults(), -- Bursting
		-- Shadowlands Affix
		[342494] = Defaults(), -- Belligerent Boast (Prideful)

	-- Shadowlands Dungeons
		-- Halls of Atonement
		[335338] = Defaults(), -- Ritual of Woe
		[326891] = Defaults(), -- Anguish
		[329321] = Defaults(), -- Jagged Swipe 1
		[344993] = Defaults(), -- Jagged Swipe 2
		[319603] = Defaults(), -- Curse of Stone
		[319611] = Defaults(), -- Turned to Stone
		[325876] = Defaults(), -- Curse of Obliteration
		[326632] = Defaults(), -- Stony Veins
		[323650] = Defaults(), -- Haunting Fixation
		[326874] = Defaults(), -- Ankle Bites
		[340446] = Defaults(), -- Mark of Envy
		-- Mists of Tirna Scithe
		[325027] = Defaults(), -- Bramble Burst
		[323043] = Defaults(), -- Bloodletting
		[322557] = Defaults(), -- Soul Split
		[331172] = Defaults(), -- Mind Link
		[322563] = Defaults(), -- Marked Prey
		[322487] = Defaults(), -- Overgrowth 1
		[322486] = Defaults(), -- Overgrowth 2
		[328756] = Defaults(), -- Repulsive Visage
		[325021] = Defaults(), -- Mistveil Tear
		[321891] = Defaults(), -- Freeze Tag Fixation
		[325224] = Defaults(), -- Anima Injection
		[326092] = Defaults(), -- Debilitating Poison
		[325418] = Defaults(), -- Volatile Acid
		-- Plaguefall
		[336258] = Defaults(), -- Solitary Prey
		[331818] = Defaults(), -- Shadow Ambush
		[329110] = Defaults(), -- Slime Injection
		[325552] = Defaults(), -- Cytotoxic Slash
		[336301] = Defaults(), -- Web Wrap
		[322358] = Defaults(), -- Burning Strain
		[322410] = Defaults(), -- Withering Filth
		[328180] = Defaults(), -- Gripping Infection
		[320542] = Defaults(), -- Wasting Blight
		[340355] = Defaults(), -- Rapid Infection
		[328395] = Defaults(), -- Venompiercer
		[320512] = Defaults(), -- Corroded Claws
		[333406] = Defaults(), -- Assassinate
		[332397] = Defaults(), -- Shroudweb
		[330069] = Defaults(), -- Concentrated Plague
		-- The Necrotic Wake
		[321821] = Defaults(), -- Disgusting Guts
		[323365] = Defaults(), -- Clinging Darkness
		[338353] = Defaults(), -- Goresplatter
		[333485] = Defaults(), -- Disease Cloud
		[338357] = Defaults(), -- Tenderize
		[328181] = Defaults(), -- Frigid Cold
		[320170] = Defaults(), -- Necrotic Bolt
		[323464] = Defaults(), -- Dark Ichor
		[323198] = Defaults(), -- Dark Exile
		[343504] = Defaults(), -- Dark Grasp
		[343556] = Defaults(), -- Morbid Fixation 1
		[338606] = Defaults(), -- Morbid Fixation 2
		[324381] = Defaults(), -- Chill Scythe
		[320573] = Defaults(), -- Shadow Well
		[333492] = Defaults(), -- Necrotic Ichor
		[334748] = Defaults(), -- Drain FLuids
		[333489] = Defaults(), -- Necrotic Breath
		[320717] = Defaults(), -- Blood Hunger
		-- Theater of Pain
		[333299] = Defaults(), -- Curse of Desolation 1
		[333301] = Defaults(), -- Curse of Desolation 2
		[319539] = Defaults(), -- Soulless
		[326892] = Defaults(), -- Fixate
		[321768] = Defaults(), -- On the Hook
		[323825] = Defaults(), -- Grasping Rift
		[342675] = Defaults(), -- Bone Spear
		[323831] = Defaults(), -- Death Grasp
		[330608] = Defaults(), -- Vile Eruption
		[330868] = Defaults(), -- Necrotic Bolt Volley
		[323750] = Defaults(), -- Vile Gas
		[323406] = Defaults(), -- Jagged Gash
		[330700] = Defaults(), -- Decaying Blight
		[319626] = Defaults(), -- Phantasmal Parasite
		[324449] = Defaults(), -- Manifest Death
		[341949] = Defaults(), -- Withering Blight
		-- Sanguine Depths
		[326827] = Defaults(), -- Dread Bindings
		[326836] = Defaults(), -- Curse of Suppression
		[322554] = Defaults(), -- Castigate
		[321038] = Defaults(), -- Burden Soul
		[328593] = Defaults(), -- Agonize
		[325254] = Defaults(), -- Iron Spikes
		[335306] = Defaults(), -- Barbed Shackles
		[322429] = Defaults(), -- Severing Slice
		[334653] = Defaults(), -- Engorge
		-- Spires of Ascension
		[338729] = Defaults(), -- Charged Stomp
		[338747] = Defaults(), -- Purifying Blast
		[327481] = Defaults(), -- Dark Lance
		[322818] = Defaults(), -- Lost Confidence
		[322817] = Defaults(), -- Lingering Doubt
		[324205] = Defaults(), -- Blinding Flash
		[331251] = Defaults(), -- Deep Connection
		[328331] = Defaults(), -- Forced Confession
		[341215] = Defaults(), -- Volatile Anima
		[323792] = Defaults(), -- Anima Field
		[317661] = Defaults(), -- Insidious Venom
		[330683] = Defaults(), -- Raw Anima
		[328434] = Defaults(), -- Intimidated
		-- De Other Side
		[320786] = Defaults(), -- Power Overwhelming
		[334913] = Defaults(), -- Master of Death
		[325725] = Defaults(), -- Cosmic Artifice
		[328987] = Defaults(), -- Zealous
		[334496] = Defaults(), -- Soporific Shimmerdust
		[339978] = Defaults(), -- Pacifying Mists
		[323692] = Defaults(), -- Arcane Vulnerability
		[333250] = Defaults(), -- Reaver
		[330434] = Defaults(), -- Buzz-Saw 1
		[320144] = Defaults(), -- Buzz-Saw 2
		[331847] = Defaults(), -- W-00F
		[327649] = Defaults(), -- Crushed Soul
		[331379] = Defaults(), -- Lubricate
		[332678] = Defaults(), -- Gushing Wound
		[322746] = Defaults(), -- Corrupted Blood
		[323687] = Defaults(), -- Arcane Lightning
		[323877] = Defaults(), -- Echo Finger Laser X-treme
		[334535] = Defaults(), -- Beak Slice

	-- Castle Nathria
		-- Shriekwing
		[328897] = Defaults(), -- Exsanguinated
		[330713] = Defaults(), -- Reverberating Pain
		[329370] = Defaults(), -- Deadly Descent
		[336494] = Defaults(), -- Echo Screech
		-- Huntsman Altimor
		[335304] = Defaults(), -- Sinseeker
		[334971] = Defaults(), -- Jagged Claws
		[335111] = Defaults(), -- Huntsman's Mark 1
		[335112] = Defaults(), -- Huntsman's Mark 2
		[335113] = Defaults(), -- Huntsman's Mark 3
		[334945] = Defaults(), -- Bloody Thrash
		-- Hungering Destroyer
		[334228] = Defaults(), -- Volatile Ejection
		[329298] = Defaults(), -- Gluttonous Miasma
		-- Lady Inerva Darkvein
		[325936] = Defaults(), -- Shared Cognition
		[335396] = Defaults(), -- Hidden Desire
		[324983] = Defaults(), -- Shared Suffering
		[324982] = Defaults(), -- Shared Suffering (Partner)
		[332664] = Defaults(), -- Concentrate Anima
		[325382] = Defaults(), -- Warped Desires
		-- Sun King's Salvation
		[333002] = Defaults(), -- Vulgar Brand
		[326078] = Defaults(), -- Infuser's Boon
		[325251] = Defaults(), -- Sin of Pride
		-- Artificer Xy'mox
		[327902] = Defaults(), -- Fixate
		[326302] = Defaults(), -- Stasis Trap
		[325236] = Defaults(), -- Glyph of Destruction
		[327414] = Defaults(), -- Possession
		-- The Council of Blood
		[327052] = Defaults(), -- Drain Essence 1
		[327773] = Defaults(), -- Drain Essence 2
		[346651] = Defaults(), -- Drain Essence Mythic
		[328334] = Defaults(), -- Tactical Advance
		[330848] = Defaults(), -- Wrong Moves
		[331706] = Defaults(), -- Scarlet Letter
		[331636] = Defaults(), -- Dark Recital 1
		[331637] = Defaults(), -- Dark Recital 2
		-- Sludgefist
		[335470] = Defaults(), -- Chain Slam
		[339181] = Defaults(), -- Chain Slam (Root)
		[331209] = Defaults(), -- Hateful Gaze
		[335293] = Defaults(), -- Chain Link
		[335270] = Defaults(), -- Chain This One!
		[335295] = Defaults(), -- Shattering Chain
		-- Stone Legion Generals
		[334498] = Defaults(), -- Seismic Upheaval
		[337643] = Defaults(), -- Unstable Footing
		[334765] = Defaults(), -- Heart Rend
		[333377] = Defaults(), -- Wicked Mark
		[334616] = Defaults(), -- Petrified
		[334541] = Defaults(), -- Curse of Petrification
		[339690] = Defaults(), -- Crystalize
		[342655] = Defaults(), -- Volatile Anima Infusion
		[342698] = Defaults(), -- Volatile Anima Infection
		-- Sire Denathrius
		[326851] = Defaults(), -- Blood Price
		[327796] = Defaults(), -- Night Hunter
		[327992] = Defaults(), -- Desolation
		[328276] = Defaults(), -- March of the Penitent
		[326699] = Defaults(), -- Burden of Sin
		[329181] = Defaults(), -- Wracking Pain
		[335873] = Defaults(), -- Rancor
		[329951] = Defaults(), -- Impale

}
