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
    pos = {"TOPLEFT", 0, 0},
    color = {0.4, 0.8, 0.2},
    anyCaster = false,
    timers = { {2, {1, 0, 0}}, {4.5, {1, 1, 0}} },

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
	-- swiftmend -- SPECIAL DON'T CHANGE THIS (commenting out is ok)
	{
		spellID = 18562,
		pos = {"TOPLEFT",0,-Scale(7)},
		color = {1,1,1},
		anyCaster = false,
	}, 
	-- adaptive swarm
	{
	  spellID = 325748,
    pos = {"BOTTOM", 0, 0},
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
		pos = {"TOP",0,-1},
		textsize = 8, 
		format = "|cFF00FF00%u|r", 
		timers = { { 2, "|cFFFF0000%.1f|r", 0.05}, { 4.5, "|cFFFFFF00%u|r", 0.3} },
		anyCaster = false,
	}
)

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
	--11426, -- Ice Barrier
	--235313, -- Blazing Barrier
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
	--207498, -- Ancestral Protection
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
		[342466] = Defaults(), -- debuff on target for 4-directional stun
		-- Shadowlands Season 2
		[356667] = Defaults(), -- Biting Cold 1
		[356666] = Defaults(), -- Biting Cold 2
		[355732] = Defaults(), -- Melt Soul
		[356925] = Defaults(), -- Carnage
		[358777] = Defaults(), -- Bindings of Misery


	-- Shadowlands Dungeons
		-- Tazavesh, the Veiled Market
		[350804] = Defaults(), -- Collapsing Energy
		[350885] = Defaults(), -- Hyperlight Jolt
		[351101] = Defaults(), -- Energy Fragmentation
		[346828] = Defaults(), -- Sanitizing Field
		[355641] = Defaults(), -- Scintillate
		[355451] = Defaults(), -- Undertow
		[355581] = Defaults(), -- Crackle
		[349999] = Defaults(), -- Anima Detonation
		[346961] = Defaults(), -- Purging Field
		[351956] = Defaults(), -- High-Value Target
		[346297] = Defaults(), -- Unstable Explosion
		[347728] = Defaults(), -- Flock!
		[356408] = Defaults(), -- Ground Stomp
		[347744] = Defaults(), -- Quickblade
		[347481] = Defaults(), -- Shuri
		[355915] = Defaults(), -- Glyph of Restraint
		[350134] = Defaults(), -- Infinite Breath
		[350013] = Defaults(), -- Gluttonous Feast
		[355465] = Defaults(), -- Boulder Throw
		[346116] = Defaults(), -- Shearing Swings
		[356011] = Defaults(), -- Beam Splicer
		-- Halls of Atonement
		[319603] = Defaults(), -- Curse of Stone
		[319611] = Defaults(), -- Turned to Stone
		[319592] = Defaults(12), -- Stone Shattering Leap
		[319703] = Defaults(), -- Blood Torrent
		[323437] = Defaults(), -- Stigma of Pride
		[323650] = Defaults(), -- Haunting Fixation
		[325700] = Defaults(), -- Collect Sins
		[325876] = Defaults(), -- Curse of Obliteration
		[326632] = Defaults(), -- Stony Veins
		[326874] = Defaults(), -- Ankle Bites
		[326891] = Defaults(), -- Anguish
		[329321] = Defaults(), -- Jagged Swipe 1
		[335338] = Defaults(), -- Ritual of Woe
		[340446] = Defaults(), -- Mark of Envy
		[344874] = Defaults(), -- Shattered
		[344993] = Defaults(), -- Jagged Swipe 2
    [319703] = Defaults(), -- Blood Torrent, floor
    [323437] = Defaults(), -- Stigma of Pride 		tank debuff, increased damage with each tick
    [323650] = Defaults(), -- Haunting Fixation 		fixate
    [325700] = Defaults(), -- Collect Sins  		dot + spawn adds
    [326891] = Defaults(), -- Anguish 		floor
    [335338] = Defaults(), -- Ritual of Woe 		debuff from channel / soak
    [340446] = Defaults(), -- Mark of Envy  		fixate
    [344874] = Defaults(), -- Shattered, dot after shattered
		-- Mists of Tirna Scithe
		[321891] = Defaults(), -- Freeze Tag Fixation
		[322486] = Defaults(), -- Overgrowth 2
		[322487] = Defaults(), -- Overgrowth 1
		[322557] = Defaults(), -- Soul Split
		[322563] = Defaults(), -- Marked Prey
		[323043] = Defaults(), -- Bloodletting
		[325021] = Defaults(), -- Mistveil Tear
		[325027] = Defaults(), -- Bramble Burst
		[325224] = Defaults(), -- Anima Injection
		[325418] = Defaults(), -- Volatile Acid
		[326092] = Defaults(), -- Debilitating Poison
		[328756] = Defaults(), -- Repulsive Visage
		[331172] = Defaults(), -- Mind Link
    [321828] = Defaults(), -- Patty Cake  		disorient from boss - fail interrupt
    [321891] = Defaults(), -- Freeze Tag Fixation 		fixate
    [321893] = Defaults(), -- Freezing Burst  		stun from fixate
    [322486] = Defaults(), -- Overgrowth	(channel) 		channel + stun on channel end
    [322487] = Defaults(), -- Overgrowth (stun)		channel + stun on channel end
    [322557] = Defaults(), -- Soul Split  	Magic	tank debuff
    [322563] = Defaults(), -- Marked Prey 		fixate
    [322648] = Defaults(), -- Mind Link  (main) / 331172 (others)		shackle
    [322939] = Defaults(), -- Harvest Essence 		channel
    [322968] = Defaults(), -- Dying Breath  	Curse	stacking increased damage taken
    [323043] = Defaults(), -- Bloodletting  		dot
    [323137] = Defaults(), -- Bewildering Pollen  	Magic	disorient from frontal
    [323250] = Defaults(), -- Anima Puddle  		floor
    [324859] = Defaults(), -- Bramblethorn Entanglement 	Magic	root
    [325021] = Defaults(), -- Mistveil Tear 		dot
    [325027] = Defaults(), -- Bramble Burst 		floor
    [325224] = Defaults(), -- Anima Injection 	Magic	dot + aoe burst when expire
    [325418] = Defaults(), -- Volatile Acid 		aoe pulse
    [326092] = Defaults(), -- Debilitating Poison 	Poison	stacking dot + slow
    [326309] = Defaults(), -- Decomposing Acid  		floor
    [331721] = Defaults(), -- Spear Flurry  		frontal
    [340160] = Defaults(), -- Radiant Breath  		disorient
    [340208] = Defaults(), -- Shred Armor 		stacking dot + increased damage taken
    [340300] = Defaults(), -- Tongue Lashing  		frontal dot + slow
		-- Plaguefall
		[320512] = Defaults(), -- Corroded Claws
		[320542] = Defaults(), -- Wasting Blight
		[322358] = Defaults(), -- Burning Strain
		[322410] = Defaults(), -- Withering Filth
		[325552] = Defaults(), -- Cytotoxic Slash
		[328180] = Defaults(), -- Gripping Infection
		[328395] = Defaults(), -- Venompiercer
		[329110] = Defaults(), -- Slime Injection
		[330069] = Defaults(), -- Concentrated Plague
		[331818] = Defaults(), -- Shadow Ambush
		[332397] = Defaults(), -- Shroudweb
		[333406] = Defaults(), -- Assassinate
		[336258] = Defaults(), -- Solitary Prey
		[336301] = Defaults(), -- Web Wrap
		[340355] = Defaults(), -- Rapid Infection
    [319070] = Defaults(), -- Corrosive Gunk  	Disease	stacking dot
    [319120] = Defaults(), -- Putrid Bile 		floor debuff
    [319898] = Defaults(), -- Vile Spit 	Disease	dot when not engaged in melee
    [320072] = Defaults(), -- Toxic Pool  		floor aoe
    [320512] = Defaults(), -- Corroded Claws  	Disease	stacking stat reducing debuff
    [320542] = Defaults(), -- Wasting Blight  	Disease	slow
    [322358] = Defaults(), -- Burning Strain  	Disease	stacking dot
    [322410] = Defaults(), -- Withering Filth 	Magic	slow
    [324652] = Defaults(), -- Debilitating Plague 	Disease	dot + snare from Stomp
    [325552] = Defaults(), -- Cytotoxic Slash 	Poison	increased Nature damage taken
    [327882] = Defaults(), -- Blightbeak  	Disease	stacking max health reduction
    [328180] = Defaults(), -- Gripping Infection  	Magic	root
    [328365] = Defaults(), -- Shoot 		debuff after being shot?
    [328395] = Defaults(), -- Venompiercer  	Poison	increased Nature damage taken
    [328409] = Defaults(), -- Enveloping Webbing  		root
    [328429] = Defaults(), -- Crushing Embrace  		grip
    [329110] = Defaults(), -- Slime Injection 	Magic	stacking dot + spawn add based on stack
    [330069] = Defaults(), -- Concentrated Plague 		floor stacking dot
    [331399] = Defaults(), -- Infectious Rain 	Disease	stacking dot
    [331818] = Defaults(), -- Shadow Ambush 		stun debuff for Shadow Ambush
    [332397] = Defaults(), -- Shroudweb 		floor debuff - snare
    [333353] = Defaults(), -- Shadow Ambush 		warning debuff for Shadow Ambush
    [333406] = Defaults(), -- Assassinate 		stacking dot
    [334926] = Defaults(), -- Wretched Phlegm 	Poison	snare
    [335090] = Defaults(), -- Crushing Embrace  		grip
    --[336258] = Defaults(), -- Solitary Prey 		debuff - after 6s will be wrapped in web
    [340355] = Defaults(), -- Rapid Infection 		floor debuff (increases haste)
    [344001] = Defaults(), -- Slime Trail 		unsure - floor debuff?
		-- The Necrotic Wake
		[320170] = Defaults(), -- Necrotic Bolt
		[320573] = Defaults(), -- Shadow Well
		[320717] = Defaults(), -- Blood Hunger
		[321821] = Defaults(), -- Disgusting Guts
		[323198] = Defaults(), -- Dark Exile
		[323365] = Defaults(), -- Clinging Darkness
		[323464] = Defaults(), -- Dark Ichor
		[324381] = Defaults(), -- Chill Scythe
		[328181] = Defaults(), -- Frigid Cold
		[333485] = Defaults(), -- Disease Cloud
		[333489] = Defaults(), -- Necrotic Breath
		[333492] = Defaults(), -- Necrotic Ichor
		[334748] = Defaults(), -- Drain FLuids
		[338353] = Defaults(), -- Goresplatter
		[338357] = Defaults(), -- Tenderize
		[338606] = Defaults(), -- Morbid Fixation 2
		[343504] = Defaults(), -- Dark Grasp
		[343556] = Defaults(), -- Morbid Fixation 1
    [320170] = Defaults(), -- Necrotic Bolt 		heal absorb
    [320200] = Defaults(), -- Stitchneedle  		dot
    [320462] = Defaults(), -- Necrotic Bolt 		heal absorb
    [320573] = Defaults(), -- Shadow Well 		heal prevent - need special warning
    [320596] = Defaults(), -- Heaving Retch 	Disease	frontal dot + add spawn
    [320631] = Defaults(), -- Carrion Eruption  		stacking dot on party if successfully cast
    [320717] = Defaults(), -- Blood Hunger  		fixate
    [320839] = Defaults(), -- Enfeeble  		channel damage + slow
    [321807] = Defaults(), -- Boneflay  		dot + reduced max health
    [321821] = Defaults(), -- Disgusting Guts 	Disease	dot from mob explosion
    [322681] = Defaults(), -- Meat Hook 		debuff when targeted by hook
    [323347] = Defaults(), -- Clinging Darkness 	Magic	stacking dot over time
    [323365] = Defaults(), -- Clinging Darkness 	Magic	debuff from jump - stacking dot over time
    [324293] = Defaults(), -- Rasping Scream  	Magic	aoe fear
    [324381] = Defaults(), -- Chill Scythe  		snare
    [327396] = Defaults(), -- Grim Fate 		aoe burst on expire
    [328664] = Defaults(), -- Chilled 	Magic	stacking snare
    [333477] = Defaults(), -- Gut Slice 		frontal dot
    [333485] = Defaults(), -- Disease Cloud 		floor
    [334610] = Defaults(), -- Mindless Fixation 		fixate
    [334748] = Defaults(), -- Drain Fluids  		channel damage + incap
    [338353] = Defaults(), -- Goresplatter  	Disease	dot
    [338357] = Defaults(), -- Tenderize 		tank debuff - increased physical damage taken
    [338606] = Defaults(), -- Morbid Fixation 		fixate
    [343556] = Defaults(), -- Morbid Fixation 		fixate
		-- Theater of Pain
		[319539] = Defaults(), -- Soulless
		[319626] = Defaults(), -- Phantasmal Parasite
		[321768] = Defaults(), -- On the Hook
		[323406] = Defaults(), -- Jagged Gash
		[323750] = Defaults(), -- Vile Gas
		[323825] = Defaults(), -- Grasping Rift
		[323831] = Defaults(), -- Death Grasp
		[324449] = Defaults(), -- Manifest Death
		[326892] = Defaults(), -- Fixate
		[330608] = Defaults(), -- Vile Eruption
		[330700] = Defaults(), -- Decaying Blight
		[330868] = Defaults(), -- Necrotic Bolt Volley
		[333299] = Defaults(), -- Curse of Desolation 1
		[333301] = Defaults(), -- Curse of Desolation 2
		[341949] = Defaults(), -- Withering Blight
		[342675] = Defaults(), -- Bone Spear
    [319539] = Defaults(), -- Soulless  		dot + silence
    [319567] = Defaults(), -- Grasping Hands   (initial) / 342691	Magic	root + dot
    [319626] = Defaults(), -- Phantasmal Parasite 	Magic	aoe pulse
    [320180] = Defaults(), -- Noxious Spores  		floor
    [321768] = Defaults(), -- On the Hook 		debuff when hooked
    [323130] = Defaults(), -- Coagulating Ooze  		floor
    [323406] = Defaults(), -- Jagged Gash 		dot when hooked
    [323750] = Defaults(), -- Vile Gas  		floor when standing on sides of room
    [323831] = Defaults(), -- Death Grasp 	Curse	stun + dot when enter grasping rift
    [324449] = Defaults(), -- Manifest Death  		aoe burst on expire
    [326892] = Defaults(), -- Fixate  		fixate
    [330532] = Defaults(), -- Jagged Quarrel  		dot
    [330592] = Defaults(), -- Vile Eruption  / 330608	Disease	disorient
    [330700] = Defaults(), -- Decaying Blight 	Disease	stacking dot + max health reduction
    [330725] = Defaults(), -- Shadow Vulnerability  	Curse	increased shadow damage taken
    [330784] = Defaults(), -- Necrotic Bolt 		heal absorb
    [330810] = Defaults(), -- Bind Soul 		channel damage + slow
    [331288] = Defaults(), -- Colossus Smash  		increased physical damage taken
    [332836] = Defaults(), -- Chop  		dot
    [333231] = Defaults(), -- Searing Death 		aoe pulse
    [333299] = Defaults(), -- Curse of Desolation 	Curse	aoe pulse + fear
    [333540] = Defaults(), -- Opportunity Strikes 		dot + stun
    [333708] = Defaults(), -- Soul Corruption 	Magic	dot
    [333861] = Defaults(), -- Ricocheting Blade 		dot
    [341949] = Defaults(), -- Withering Blight  	Disease	stacking dot + reduced damage + reduced healing
    [342103] = Defaults(), -- Rancid Bile 		floor debuff
    [342675] = Defaults(), -- Bone Spear  		dot
		-- Sanguine Depths
		[321038] = Defaults(), -- Burden Soul
		[322429] = Defaults(), -- Severing Slice
		[322554] = Defaults(), -- Castigate
		[325254] = Defaults(), -- Iron Spikes
		[326827] = Defaults(), -- Dread Bindings
		[326836] = Defaults(), -- Curse of Suppression
		[328593] = Defaults(), -- Agonize
		[334653] = Defaults(), -- Engorge
		[335306] = Defaults(), -- Barbed Shackles
    [322212] = Defaults(), -- Growing Mistrust  		floor
    [322429] = Defaults(), -- Severing Slice  		frontal dot
    [322554] = Defaults(), -- Castigate 		aoe pulse
    [323573] = Defaults(), -- Residue 		floor - after boss add dies
    [323845] = Defaults(), -- Wicked Rush 		mark for charge
    [325254] = Defaults(), -- Iron Spikes 		tank debuff - 4 spikes
    [325885] = Defaults(), -- Anguished Cries 	Magic	dot from swirly
    [326827] = Defaults(), -- Dread Bindings  		shackle
    [328494] = Defaults(), -- Sintouched Anima  	Curse	debuff if touch orb
    [328593] = Defaults(), -- Agonize 		dot
    [331415] = Defaults(), -- Wicked Gash 		dot from charge
    [334653] = Defaults(), -- Engorge 		channel (buff on caster, explodes on death or 20 stacks)
    [335306] = Defaults(), -- Barbed Shackles 		root
    [336277] = Defaults(), -- Explosive Anger 		buff + aoe burst at the end
		-- Spires of Ascension
		[317661] = Defaults(), -- Insidious Venom
		[322817] = Defaults(), -- Lingering Doubt
		[322818] = Defaults(), -- Lost Confidence
		[323792] = Defaults(), -- Anima Field
		[324205] = Defaults(), -- Blinding Flash
		[327481] = Defaults(), -- Dark Lance
		[328331] = Defaults(), -- Forced Confession
		[328434] = Defaults(), -- Intimidated
		[330683] = Defaults(), -- Raw Anima
		[331251] = Defaults(), -- Deep Connection
		[338729] = Defaults(), -- Charged Stomp
		[338747] = Defaults(), -- Purifying Blast
		[341215] = Defaults(), -- Volatile Anima
    [27638 ]= Defaults(), -- Rake 		stacking dot
    [317626] = Defaults(), -- Maw-Touched Venom 		floor debuff from Etherdiver spit
    [317661] = Defaults(), -- Insidious Venom 	Magic	dot
    [317963] = Defaults(), -- Burden of Knowledge 	Magic	dot
    [322817] = Defaults(), -- Lingering Doubt 	Magic	debuff during wind phase + touching void zone
    [322818] = Defaults(), -- Lost Confidence 	Magic	debuff when dispelled will drop void zone on floor
    [323195] = Defaults(), -- Purifying Blast 		aoe burst on expire
    [323739] = Defaults(), -- Residual Impact 		floor debuff after charge
    [323744] = Defaults(), -- Pounce  		stun from stealth
    [323792] = Defaults(), -- Anima Field 		floor - damage and slow
    [324154] = Defaults(), -- Dark Stride 		dot
    [324662] = Defaults(), -- Ionized Plasma  		floor for spear
    [327481] = Defaults(), -- Dark Lance  	Magic	dot
    [327648] = Defaults(), -- Internal Strife 	Magic	aoe pulse
    [328331] = Defaults(), -- Forced Confession 	Magic	aoe pulse and spawn black orbs
    [328434] = Defaults(), -- Intimidated 		stacking dot
    [328453] = Defaults(), -- Oppression  		stacking debuff - increased damage taken
    [330683] = Defaults(), -- Raw Anima 		debuff when holding orb
    [331251] = Defaults(), -- Deep Connection 		stacking dot when touching the beam between boss and pet
    [331997] = Defaults(), -- Anima Surge 		stacking dot for collecting orb
    [335805] = Defaults(), -- Archon's Bastion  		debuff gives protection for detonation
    [338070] = Defaults(), -- Weakened  		damage taken increased on everyone at the start of boss?
    [338731] = Defaults(), -- Charged Anima 	Magic	dot and snare from Charged Stomp
    [341215] = Defaults(), -- Volatile Anima  		floor debuff? Unsure. Damage and slow.
		-- De Other Side
		[320144] = Defaults(), -- Buzz-Saw 2
		[320786] = Defaults(), -- Power Overwhelming
		[322746] = Defaults(), -- Corrupted Blood
		[323687] = Defaults(), -- Arcane Lightning
		[323692] = Defaults(), -- Arcane Vulnerability
		[323877] = Defaults(), -- Echo Finger Laser X-treme
		[325725] = Defaults(), -- Cosmic Artifice
		[327649] = Defaults(), -- Crushed Soul
		[328987] = Defaults(), -- Zealous
		[330434] = Defaults(), -- Buzz-Saw 1
		[331379] = Defaults(), -- Lubricate
		[331847] = Defaults(), -- W-00F
		[332678] = Defaults(), -- Gushing Wound
		[333250] = Defaults(), -- Reaver
		[334496] = Defaults(), -- Soporific Shimmerdust
		[334535] = Defaults(), -- Beak Slice
		[334913] = Defaults(), -- Master of Death
		[339978] = Defaults(), -- Pacifying Mists
    [320008] = Defaults(), -- Frostbolt 		snare
    [320132] = Defaults(), -- Shadowfury  		stun debuff
    [320142] = Defaults(), -- Diabolical Dooooooom! 		stacking damage taken debuff from same spell
    [320144] = Defaults(), -- Buzz-Saw  		debuff that roots?
    [320147] = Defaults(), -- Bleeding  		stacking dot
    [320232] = Defaults(), -- Explosive Contrivance 		stacking dot for failing group wide aoe
    [320786] = Defaults(), -- Power Overwhelming  		stacking increased damage done + dot
    [321948] = Defaults(), -- Localized Explosive Contrivance 		warning debuff for personal bomb - requires special tracking
    [322746] = Defaults(), -- Corrupted Blood 		dot + spread to nearby friendlies
    [323118] = Defaults(), -- Blood Barrage 		stacking reduced damage done debuff
    [323569] = Defaults(), -- Spilled Essence 		floor debuff
    [323687] = Defaults(), -- Arcane Lightning  		jumping debuff, applies Arcane Vulnerability
    [323692] = Defaults(), -- Arcane Vulnerability  		stacking arcane damage taken debuff
    [323877] = Defaults(), -- Echo Finger Laser X-treme 		warning debuff for laser targets
    [324010] = Defaults(), -- Eruption  		stun debuff from floor after laser
    [325725] = Defaults(), -- Cosmic Artifice 	Magic	dot + aoe damage when expire + places exploding void zone
    [327649] = Defaults(), -- Crushed Soul  		tank debuff dot
    [328987] = Defaults(), -- Zealous 		fixate
    [330434] = Defaults(), -- Buzz-Saw  		debuff that applies Bleeding?
    [331379] = Defaults(), -- Lubricate 		reduced hit chance + stun on character jump
    [331847] = Defaults(), -- W-00F 		stun debuff
    [332236] = Defaults(), -- Sludgegrab  		grip + snare (on tank?)
    [332332] = Defaults(), -- Spilled Essence 		floor debuff
    [332605] = Defaults(), -- Hex 	Magic	hex
    [332678] = Defaults(), -- Gushing Wound 		stacking dot
    [332707] = Defaults(), -- Shadow Word: Pain 	Magic	dot
    [333250] = Defaults(), -- Reaver  		floor debuff
    [333711] = Defaults(), -- Decrepit Bite 	Disease	stacking dot
    [334493] = Defaults(), -- Soporific Shimmerdust, Curse	debuff from mob that places the stacking debuff
    [334496] = Defaults(), -- Soporific Shimmerdust, Curse	stacking debuff when not jumping - sleep at 10 stacks - track by ID
    [334505] = Defaults(), -- Shimmerdust Sleep, 	Magic	sleep debuff from reaching 10 stacks
    [334535] = Defaults(), -- Beak Slice, stacking dot + damage taken from same spell
    [334913] = Defaults(), -- Master of Death, stacking dot + increased damage taken from same spell
    [339978] = Defaults(), -- Pacifying Mists, floor - silence and pacify
    [342961] = Defaults(), -- Localized Explosive Contrivance, stacking dot for personal bomb - requires special tracking
	-- Castle Nathria
		-- Shriekwing
		[328897] = Defaults(), -- Exsanguinated
		[330713] = Defaults(), -- Reverberating Pain
		[329370] = Defaults(), -- Deadly Descent
		[336494] = Defaults(), -- Echo Screech
		--[341489] = Defaults(), -- Bloodlight
		[342075] = Defaults(), -- Echolocation
		-- Huntsman Altimor
		[335304] = Defaults(), -- Sinseeker
		[335114] = Defaults(), -- Sinseeker
		[334971] = Defaults(), -- Jagged Claws
		[335111] = Defaults(), -- Huntsman's Mark 1
		[335112] = Defaults(), -- Huntsman's Mark 2
		[335113] = Defaults(), -- Huntsman's Mark 3
		[334945] = Defaults(), -- Bloody Thrash
		[334708] = Defaults(), -- Deathly Roar
		[334852] = Defaults(), -- Petrifying Howl
		[334939] = Defaults(), -- Vicious Lunge 
		[334960] = Defaults(), -- Vicious Wound
		[334797] = Defaults(), -- Rip Soul
		-- Hungering Destroyer
		--[334228] = Defaults(), -- Volatile Ejection
		[329298] = Defaults(), -- Gluttonous Miasma
		--[334755] = Defaults(), -- Essence Sap
		-- Lady Inerva Darkvein
		[325936] = Defaults(), -- Shared Cognition
		[335396] = Defaults(), -- Hidden Desire
		[324983] = Defaults(), -- Shared Suffering
		[324982] = Defaults(), -- Shared Suffering (Partner)
		[332664] = Defaults(), -- Concentrate Anima
		[342320] = Defaults(), -- Lightly concentrated anima
		[342321] = Defaults(), -- Rooted in Anima
		[325382] = Defaults(), -- Warped Desires
		--[325184] = Defaults(), -- Loose Anima
		[342287] = Defaults(), -- Lesser Sins and Suffering
		[331527] = Defaults(), -- Indemnification
		[326538] = Defaults(), -- Anima Web
		[331573] = Defaults(), -- Unconscionable Guilt
		-- Sun King's Salvation
		[333002] = Defaults(), -- Vulgar Brand
		[326078] = Defaults(), -- Infuser's Boon
		[325251] = Defaults(), -- Drained Soul
		[326456] = Defaults(), -- Burning Remnants
		[326430] = Defaults(), -- Lingering Embers
		[325442] = Defaults(), -- Vanquished
		[341473] = Defaults(), -- Crimson Flurry
		[333002] = Defaults(), -- Vulgar Brand
		-- Artificer Xy'mox
		--[327902] = Defaults(), -- Fixate
		--[326892] = Defaults(), -- Fixate
		[326302] = Defaults(), -- Stasis Trap
		[325236] = Defaults(), -- Glyph of Destruction
		[327414] = Defaults(), -- Possession
		[328437] = Defaults(), -- Dimensional tear
		[325361] = Defaults(), -- Glyph of Destruction
		[340533] = Defaults(), -- Arcane Vulnerability
		[340860] = Defaults(10), -- Withering Touch
		[325399] = Defaults(), -- Hyperlight Spark
		-- The Council of Blood
		[327052] = Defaults(), -- Drain Essence 1
		[327773] = Defaults(), -- Drain Essence 2
		[346651] = Defaults(), -- Drain Essence Mythic
		[328334] = Defaults(), -- Tactical Advance
		[330848] = Defaults(), -- Wrong Moves
		[331706] = Defaults(), -- Scarlet Letter
		[331636] = Defaults(), -- Dark Recital 1
		[331637] = Defaults(), -- Dark Recital 2
		--[334909] = Defaults(), -- Oppressive Atmosphere
		[346690] = Defaults(), -- Duelist's Reposte
		[337110] = Defaults(), -- Dreadbolt Volley
		[346681] = Defaults(), -- Soul Spikes
		--[327503] = Defaults(), -- Evasive Lunge
		[331634] = Defaults(), -- Dark Recital
		[346932] = Defaults(), -- Two Left Feet
		[347350] = Defaults(), -- Dancing Fever
		-- Sludgefist
		[335470] = Defaults(), -- Chain Slam
		[339181] = Defaults(), -- Chain Slam (Root)
		[331209] = Defaults(), -- Hateful Gaze
		--[335293] = Defaults(), -- Chain Link
		[335270] = Defaults(), -- Chain This One!
		[335295] = Defaults(), -- Shattering Chain
		--[335300] = Defaults(), -- Chain Link
		[339189] = Defaults(), -- Chain Bleed
		-- Stone Legion Generals
		--[334498] = Defaults(), -- Seismic Upheaval
		[337643] = Defaults(), -- Unstable Footing
		[334765] = Defaults(2), -- Heart Rend
		[333377] = Defaults(), -- Wicked Mark
		[334616] = Defaults(), -- Petrified
		[334541] = Defaults(), -- Curse of Petrification
		[339690] = Defaults(), -- Crystalize
		--[342655] = Defaults(), -- Volatile Anima Infusion
	  --[342698] = Defaults(), -- Volatile Anima Infection
		[333913] = Defaults(), -- Wicked Laceration
		[334771] = Defaults(10), -- Hart Hemorrhage
		[343881] = Defaults(), -- Serrated Tear
		[339693] = Defaults(), -- Crystalline Burst
		--[343063] = Defaults(), -- Stone Spike
		[342425] = Defaults(), -- Stone Fist
		--[344655] = Defaults(), -- Reverberating Vulnerability
		[342733] = Defaults(5), -- Ravenous Feast
		-- Sire Denathrius
		[326851] = Defaults(), -- Blood Price
		[327796] = Defaults(), -- Night Hunter
		[327992] = Defaults(), -- Desolation
		[328276] = Defaults(), -- March of the Penitent
		--[326699] = Defaults(), -- Burden of Sin
		[329181] = Defaults(), -- Wracking Pain
		[335873] = Defaults(), -- Rancor
		[329951] = Defaults(), -- Impale
		--[327842] = Defaults(), -- Touch of the Night
		[329875] = Defaults(), -- Carnage
		[332585] = Defaults(), -- Scorn
		[341391] = Defaults(), -- Searing Censure
		[326851] = Defaults(), -- Blood Price
		[327089] = Defaults(), -- Feeding Time
		[327039] = Defaults(), -- Feeding Time
	--------------------------------------------------------
	---------------- Sanctum of Domination -----------------
	--------------------------------------------------------
	-- The Tarragrue
		[347283] = Defaults(5), -- Predator's Howl
		[347286] = Defaults(5), -- Unshakeable Dread
		[346986] = Defaults(3), -- Crushed Armor
		[347269] = Defaults(6), -- Chains of Eternity
		[346985] = Defaults(3), -- Overpower
	-- Eye of the Jailer
		[350606] = Defaults(4), -- Hopeless Lethargy
		[355240] = Defaults(5), -- Scorn
		[355245] = Defaults(5), -- Ire
		[349979] = Defaults(2), -- Dragging Chains
		[348074] = Defaults(3), -- Assailing Lance
		[351827] = Defaults(6), -- Spreading Misery
		[355143] = Defaults(6), -- Deathlink
		[350763] = Defaults(6), -- Annihilating Glare
	-- The Nine
		--[350287] = Defaults(2), -- Song of Dissolution
		[350542] = Defaults(6), -- Fragments of Destiny
		[350202] = Defaults(3), -- Unending Strike
		[350475] = Defaults(5), -- Pierce Soul
		[350555] = Defaults(3), -- Shard of Destiny
		[350109] = Defaults(5), -- Brynja's Mournful Dirge
		[350483] = Defaults(6), -- Link Essence
		[350039] = Defaults(5), -- Arthura's Crushing Gaze
		[350184] = Defaults(5), -- Daschla's Mighty Impact
		[350374] = Defaults(5), -- Wings of Rage
	-- Remnant of Ner'zhul
		[350073] = Defaults(2), -- Torment
		[349890] = Defaults(5), -- Suffering
		[350469] = Defaults(6), -- Malevolence
		[354634] = Defaults(6), -- Spite 1
		[354479] = Defaults(6), -- Spite 2
		[354534] = Defaults(6), -- Spite 3
	-- Soulrender Dormazain
		--[353429] = Defaults(2), -- Tormented
		[353023] = Defaults(3), -- Torment
		[351787] = Defaults(5), -- Agonizing Spike
		--[350647] = Defaults(5), -- Brand of Torment
		[350422] = Defaults(6), -- Ruinblade
		[350851] = Defaults(6), -- Vessel of Torment
		--[354231] = Defaults(6), -- Soul Manacles
		[348987] = Defaults(6), -- Warmonger Shackle 1
		[350927] = Defaults(6), -- Warmonger Shackle 2
	-- Painsmith Raznal
		--[356472] = Defaults(5), -- Lingering Flames
		[355505] = Defaults(6), -- Shadowsteel Chains 1
		[355506] = Defaults(6), -- Shadowsteel Chains 2
		[348456] = Defaults(6), -- Flameclasp Trap
		--[356870] = Defaults(2), -- Flameclasp Eruption
		[355568] = Defaults(6), -- Cruciform Axe
		[355786] = Defaults(5), -- Blackened Armor
		[348255] = Defaults(6), -- Spiked
	-- Guardian of the First Ones
		[352394] = Defaults(5), -- Radiant Energy
		[350496] = Defaults(6), -- Threat Neutralization
		[347359] = Defaults(6), -- Suppression Field
		[355357] = Defaults(6), -- Obliterate
		[350732] = Defaults(5), -- Sunder
		[352833] = Defaults(6), -- Disintegration
	-- Fatescribe Roh-Kalo
		[354365] = Defaults(5), -- Grim Portent
		[350568] = Defaults(5), -- Call of Eternity
		[353435] = Defaults(6), -- Overwhelming Burden
		[351680] = Defaults(6), -- Invoke Destiny
		[353432] = Defaults(6), -- Burden of Destiny
		--[353693] = Defaults(6), -- Unstable Accretion
		[350355] = Defaults(6), -- Fated Conjunction
		--[353931] = Defaults(2), -- Twist Fate
		[357686] = Defaults(7),  -- Exposed Threads of Fate
		--[354964] = Defaults(5), -- Runic AFfinity
	-- Kel'Thuzad
		--[346530] = Defaults(2), -- Frozen Destruction
		--[354289] = Defaults(2), -- Sinister Miasma
		[347454] = Defaults(6), -- Oblivion's Echo 1
		[347518] = Defaults(6), -- Oblivion's Echo 2
		[347292] = Defaults(6), -- Oblivion's Echo 3
		[348978] = Defaults(6), -- Soul Exhaustion
		--[355389] = Defaults(6), -- Relentless Haunt (Fixate)
		[357298] = Defaults(6), -- Frozen Binds
		[355137] = Defaults(5), -- Shadow Pool
		[348638] = Defaults(4), -- Return of the Damned
		[348760] = Defaults(6), -- Frost Blast
	-- Sylvanas Windrunner
		[349458] = Defaults(2), -- Domination Chains
		[347704] = Defaults(2), -- Veil of Darkness
		[347607] = Defaults(5), -- Banshee's Mark
		[347670] = Defaults(5), -- Shadow Dagger
		[351117] = Defaults(5), -- Crushing Dread
		[351870] = Defaults(5), -- Haunting Wave
		[351253] = Defaults(5), -- Banshee Wail
		[351451] = Defaults(6), -- Curse of Lethargy
		[351092] = Defaults(6), -- Destabilize 1
		[351091] = Defaults(6), -- Destabilize 2
		[348064] = Defaults(6), -- Wailing Arrow
		[353929] = Defaults(8), -- Banshee's Bane
		[358708] = Defaults(10), -- Black Arrow
	----------------------------------------------------------
	-------------- Sepulcher of the First Ones ---------------
	----------------------------------------------------------
	-- Vigilant Guardian
		[360403] = Defaults(2), -- Force Field
		[364447] = Defaults(3), -- Dissonance
		[364904] = Defaults(6), -- Anti-Matter
		[364881] = Defaults(5), -- Matter Disolution
		[360415] = Defaults(5), -- Defenseless
		[360412] = Defaults(4), -- Exposed Core
		[366393] = Defaults(5), -- Searing Ablation
	-- Skolex, the Insatiable Ravener
		[364522] = Defaults(2), -- Devouring Blood
		[359976] = Defaults(2), -- Riftmaw
		[359981] = Defaults(2), -- Rend
		[360098] = Defaults(3), -- Warp Sickness
		[366070] = Defaults(3), -- Volatile Residue
	-- Artificer Xy'mox
		[362850] = Defaults(2), -- Hyperlight Sparknova
		[364030] = Defaults(3), -- Debilitating Ray
		[365681] = Defaults(2), -- System Shock
		[363413] = Defaults(4), -- Forerunner Rings A
		[364604] = Defaults(4), -- Forerunner Rings B
		[362615] = Defaults(6), -- Interdimensional Wormhole Player 1
		[362614] = Defaults(6), -- Interdimensional Wormhole Player 2
		[362803] = Defaults(5), -- Glyph of Relocation
	-- Dausegne, The Fallen Oracle
		[361751] = Defaults(2), -- Disintegration Halo
		[364289] = Defaults(2), -- Staggering Barrage
		[361018] = Defaults(2), -- Staggering Barrage Mythic 1
		[360960] = Defaults(2), -- Staggering Barrage Mythic 2
		[361225] = Defaults(2), -- Encroaching Dominion
		[361966] = Defaults(2), -- Infused Strikes
	-- Prototype Pantheon
		--[365306] = Defaults(2), -- Invigorating Bloom
		--[361608] = Defaults(3), -- Burden of Sin
		[361689] = Defaults(3), -- Wracking Pain
		[366232] = Defaults(4), -- Animastorm
		[364839] = Defaults(4), -- Sinful Projection
	-- Lihuvim, Principle Architect
		[360159] = Defaults(5), -- Unstable Protoform Energy
		[363681] = Defaults(3), -- Deconstructing Blast
		[363676] = Defaults(4), -- Deconstructing Energy Player 1
		[363795] = Defaults(4), -- Deconstructing Energy Player 2
		[464312] = Defaults(5), -- Ephemeral Barrier
	-- Halondrus the Reclaimer
		[361309] = Defaults(3), -- Lightshatter Beam
		[361002] = Defaults(4), -- Ephemeral Fissure
		[360114] = Defaults(4), -- Ephemeral Fissure II
	-- Anduin Wrynn
		--[365293] = Defaults(2), -- Befouled Barrier
		--[361817] = Defaults(3), -- Hopebreaker
		[363020] = Defaults(3), -- Necrotic Claws
		[365021] = Defaults(4), -- Wicked Star
		--[365445] = Defaults(3), -- Scarred Soul
		[365008] = Defaults(4), -- Psychic Terror
		[366849] = Defaults(6), -- Domination Word: Pain
	-- Lords of Dread
		[360006] = Defaults(1),	-- Cloud of Carrion Icon Cloud of Carrion
		[360148] = Defaults(1), -- Bursting Dread Icon Bursting Dread
		[360241] = Defaults(1), -- Unsettling Dreams Icon Unsettling Dreams
		[360284] = Defaults(1), -- Anguishing Strike Icon Anguishing Strike
	-- Rygelon
		[361548] = Defaults(1), --	Dark Eclipse
		[362081] = Defaults(1), --	Cosmic Ejection
		[362088] = Defaults(1), --	Cosmic Irregularity
	-- The Jaile
		[360282] = Defaults(1), --	Rune of Damnation
		[265151] = Defaults(1), --	Rune of Domination
		[366030] = Defaults(1), --	Tyranny
		--[362194] = Defaults(1), --	Suffering
		[359868] = Defaults(1), --	Shattering Blast
		[360565] = Defaults(1), --	Decimator
		[365153] = Defaults(6), --	Dominating Will
		[365219] = Defaults(1), --	Chains of Anguish
}
