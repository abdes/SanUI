local S,C = unpack(SanUI)

local GetSpellName = function(id) return select(1,GetSpellInfo(id)) end

S.translWa = {
	["Nature's Wisdom"] = GetSpellName(167715),
	["Nature's Swiftness"] = GetSpellName(132158),
	["Heart of the Wild"] = GetSpellName(1082920),
	["Harmony"] = GetSpellName(100977),
	["Incarnation"] = GetSpellName(117679),
	["Clearcasting"] = GetSpellName(16870),
	["Lucidity"] = GetSpellName(137247),
	["Nature's Vigil"] = GetSpellName(124974),
	["Heart of the Wild"] = GetSpellName(123737),
	["Soul of the Forest"] = GetSpellName(114107),
	["Wild Mushroom"] = GetSpellName(145205),
	["Savage Roar"] = GetSpellName(174544),
	["Tigereye Brew"] = GetSpellName(137591),
	["Tiger Power"] = GetSpellName(125359),
	["Dream of Cenarius"] = GetSpellName(145162),
	["Sword and Board"] = GetSpellName(50227),
	["Starfall"] = GetSpellName(48505),
	["Sunfall"] = GetSpellName(155598),
	["Stellar Flare"] = GetSpellName(152221),
	["Shooting Stars"] = GetSpellName(93399),
	["Rising Sun Kick"] = GetSpellName(107428),
	["Maelstrom Weapon"] = GetSpellName(51530),
	["Invoke Xuen, the White Tiger"] = GetSpellName(123904),
	["Solar Empowerment"] = GetSpellName(164545),
	["Lunar Empowerment"] = GetSpellName(164547),
	["Incarnation: Chosen of Elune"] = GetSpellName(102560),
	["Incarnation: Tree of Life"] = GetSpellName(33891),
	["Celestial Alignment"] = GetSpellName(112071),
	["Moonfire"] = GetSpellName(164812),
	["Sunfire"] = GetSpellName(93402),
	["Starsurge"] = GetSpellName(78674),
	["Survival Instincts"] = GetSpellName(61336),
	["Barkskin"] = GetSpellName(22812),
	--["Lacerate"] = GetSpellName(33745),
	["Thrash"] = GetSpellName(77758),
	["Savage Defense"] = GetSpellName(62606),
	["Berserk"] = GetSpellName(106952),
	["Tiger's Fury"]=GetSpellName(5217),
	["Predatory Swiftness"]=GetSpellName(16974),
	["Rake"]=GetSpellName(1822),
	["Rip"]=GetSpellName(1079),
	["SavageRoar"]=GetSpellName(52610),
	["Bloodtalons"]=GetSpellName(155672),
	["Thrash"]=GetSpellName(106830),
	["Incarnation:KingoftheJungle"]=GetSpellName(102543),
	["Pulverize"]=GetSpellName(80313),
	["Stormstrike"]=GetSpellName(17364),
	["Lava Lash"]=GetSpellName(60103),
	["Unleash Elements"]=GetSpellName(73680),
	["Flame Shock"]=GetSpellName(8050),
	["Frost Shock"]=GetSpellName(8056),
	["Fire Nova"]=GetSpellName(1535),
	["Fire Elemental Totem"]=GetSpellName(2894),
	["Feral Spirit"]=GetSpellName(51533),
	["Ascendance"]=GetSpellName(114049),
	["Ultimatum"]=GetSpellName(122510),
	["Unleashed Fury"]=GetSpellName(117012),
	["Sudden Death"]=GetSpellName(29725),
	["Shield Block"]=GetSpellName(132404),
	}

		
function S.weakAurasDialog()
	local main = CreateFrame("Frame", nil, UIParent)
	main:Point("CENTER")
	main:Size(500,200)
	main:SetTemplate()
	main:FontString("Text", C.Medias.Font, 12)
	main.Text:Point("CENTER")
	main.Text:SetText("You do not have SanUIs WeakAura displays added to your WeakAuras. Should I do that now?" ..
						"\n\n" ..
						"Note: I'll not ask again. To reopen this dialog, type" ..
						"\n" ..
						"--> /tukui addweakauras <-- "..
						"\n" ..
						"into your chat (leave out the arrows and don't put a space before the /." )
	main.Text:SetJustifyH("MIDDLE")

	main.LeftButton = CreateFrame("Button", nil, main)
	main.LeftButton:Point("TOPRIGHT", main, "BOTTOMRIGHT", 0, -6)
	main.LeftButton:Size(128, 25)
	main.LeftButton:SkinButton()
	main.LeftButton:CreateShadow()
	main.LeftButton:FontString("Text", C.Medias.Font, 12)
	main.LeftButton.Text:SetPoint("CENTER")
	main.LeftButton.Text:SetText("Add and reload")
	main.LeftButton:SetScript("OnClick", function()
		S.addWeakAuras()
		SanUIdb.addedWeakAuras = true
		ReloadUI()
	end)
	
	main.RightButton = CreateFrame("Button", nil, main)
	main.RightButton:Point("TOPLEFT", main, "BOTTOMLEFT", 0, -6)
	main.RightButton:Size(128, 25)
	main.RightButton:SkinButton()
	main.RightButton:CreateShadow()
	main.RightButton:FontString("Text", C.Medias.Font, 12)
	main.RightButton.Texdifft:SetPoint("CENTER")
	main.RightButton.Text:SetText("Just reload")
	main.RightButton:SetScript("OnClick", function() 
		SanUIdb.addedWeakAuras = true
		ReloadUI()
	end)

end

S.AddOnCommands["addweakauras"] = S.weakAurasDialog

function S.addWeakAuras()

	if not IsAddOnLoaded("WeakAuras") then print("WeakAuras not loaded!") return end
	if not WeakAurasSaved then print("WeakAurasSaved not loaded!") return end

	local key,value
		
	for key,value in pairs(S.weakAuras.displays) do
		if value.trigger.totemName then
			if #value.trigger.totemName ~= 1 then
				print("Found no or more than 1 totemname in weak aura " .. key .. ", not translating!")	
			elseif (value.trigger.totemName[1] and not S.translWa[value.trigger.totemName[1]]) then
				print("No translation found for "..value.trigger.totemName[1]..", skipping translation of weak aura!")
			else
				value.trigger.totemName[1] = S.translWa[value.trigger.totemName[1]]
			end
		else
			if #value.trigger.names ~= 1 then
				print("Found no or more than 1 name in weak aura " .. key .. ", not translating!")
				
			-- groups have value.trigger.names, but it's empty!!
			elseif (value.trigger.names[1] and not S.translWa[value.trigger.names[1]]) then
				print("No translation found for "..value.trigger.names[1]..", skipping translation of weak aura!")
			else
				value.trigger.names[1] = S.translWa[value.trigger.names[1]]
			end
		end

		WeakAurasSaved.displays[key] = value
	end

	WeakAuras.frames["Addon Initialization Handler"]:GetScript("OnEvent")("ADDON_LOADED","WeakAuras")
end
	
-- Adapted from AddonSkins by Azilroka
-- conceived by Elv
local function skinWaFrame(frame, type)
	local backdrop = frame.backdrop or frame.Backdrop
	if not backdrop then
		frame:CreateBackdrop('Transparent')
		backdrop = frame.backdrop or frame.Backdrop
		if type == 'icon' then
			backdrop:HookScript('OnUpdate', function(self)
				self:SetAlpha(self:GetParent().icon:GetAlpha())
			end)
		end
	end

	if ftype == 'aurabar' then
		backdrop:Show()
	end
	--frame.icon:SetTexCoord(.1, .9, .1, .9)
	--frame.icon.SetTexCoord = function() end
end

local function Create_Icon(parent, data)
	local region = WeakAuras.regionTypes.icon.OldCreate(parent, data)
	skinWaFrame(region, 'icon')
	
	return region
end
WeakAuras.regionTypes.icon.OldCreate = WeakAuras.regionTypes.icon.create
WeakAuras.regionTypes.icon.create = Create_Icon

local function Create_Aurabar(parent)
	local region = WeakAuras.regionTypes.aurabar.OldCreate(parent)
	skinWaFrame(region, 'aurabar')

	return region
end
WeakAuras.regionTypes.aurabar.OldCreate = WeakAuras.regionTypes.aurabar.create
WeakAuras.regionTypes.aurabar.create = Create_Aurabar

local function Modify_Icon(parent, region, data)
	WeakAuras.regionTypes.icon.OldModify(parent, region, data)

	skinWaFrame(region, 'icon')
end
WeakAuras.regionTypes.icon.OldModify = WeakAuras.regionTypes.icon.modify
WeakAuras.regionTypes.icon.modify = Modify_Icon

local function Modify_Aurabar(parent, region, data)
	WeakAuras.regionTypes.aurabar.OldModify(parent, region, data)

	skinWaFrame(region, 'aurabar')
end
WeakAuras.regionTypes.aurabar.OldModify = WeakAuras.regionTypes.aurabar.modify
WeakAuras.regionTypes.aurabar.modify = Modify_Aurabar

for weakAura, _ in pairs(WeakAuras.regions) do
	if WeakAuras.regions[weakAura].regionType == 'icon'
	   or WeakAuras.regions[weakAura].regionType == 'aurabar' then
		skinWaFrame(WeakAuras.regions[weakAura].region, WeakAuras.regions[weakAura].regionType)
	end
end

S.skinWaFrame = skinWaFrame
