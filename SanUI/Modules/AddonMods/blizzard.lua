local addonName, addon = ...
local S = unpack(addon)

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
	end

	local PartyFrame = PartyFrame
	
	if PartyFrame then
		PartyFrame:SetParent(S.Hider)
	end

	if CompactRaidFrameManager then
		-- Disable Blizzard Raid Frames.
		CompactRaidFrameManager:SetParent(S.Hider)
		CompactRaidFrameManager:UnregisterAllEvents()
		CompactRaidFrameManager:Hide()

		CompactRaidFrameContainer:SetParent(S.Hider)
		CompactRaidFrameContainer:UnregisterAllEvents()
		CompactRaidFrameContainer:Hide()
		
		UIParent:UnregisterEvent("GROUP_ROSTER_UPDATE")
		CompactRaidFrameManager_SetSetting("IsShown", "0")
	end
end
