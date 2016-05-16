local S = unpack(SanUI)

local function Noop() end

function S.disableBlizzard()
	local i

	for i = 1, MAX_BOSS_FRAMES do
		local Boss = _G["Boss"..i.."TargetFrame"]
		local Health = _G["Boss"..i.."TargetFrame".."HealthBar"]
		local Power = _G["Boss"..i.."TargetFrame".."ManaBar"]

		Boss:UnregisterAllEvents()
		Boss.Show = Noop
		Boss:Hide()

		Health:UnregisterAllEvents()
		Power:UnregisterAllEvents()
	end

	InterfaceOptionsFrameCategoriesButton11:SetScale(0.00001)
	InterfaceOptionsFrameCategoriesButton11:SetAlpha(0)

	CompactRaidFrameManager:SetParent(S["Panels"].Hider)
	CompactUnitFrameProfiles:UnregisterAllEvents()

	for i = 1, MAX_PARTY_MEMBERS do
		local PartyMember = _G["PartyMemberFrame" .. i]
		local Health = _G["PartyMemberFrame" .. i .. "HealthBar"]
		local Power = _G["PartyMemberFrame" .. i .. "ManaBar"]
		local Pet = _G["PartyMemberFrame" .. i .."PetFrame"]
		local PetHealth = _G["PartyMemberFrame" .. i .."PetFrame" .. "HealthBar"]

		PartyMember:UnregisterAllEvents()
		PartyMember:SetParent(S["Panels"].Hider)
		PartyMember:Hide()
		Health:UnregisterAllEvents()
		Power:UnregisterAllEvents()

		Pet:UnregisterAllEvents()
		Pet:SetParent(S["Panels"].Hider)
		PetHealth:UnregisterAllEvents()

		HidePartyFrame()
		ShowPartyFrame = Noop
		HidePartyFrame = Noop
	end

	InterfaceOptionsFrameCategoriesButton9:SetHeight(0.00001)
	InterfaceOptionsFrameCategoriesButton9:SetAlpha(0)
	InterfaceOptionsFrameCategoriesButton10:SetHeight(0.00001)
	InterfaceOptionsFrameCategoriesButton10:SetAlpha(0)
end
