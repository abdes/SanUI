local addonName, addon = ...
local S, C, L = unpack(addon)

L.DataText.CallToArms = "Call to Arms"

local DataText = S["DataTexts"]
local format = format

local TankString = TANK
local HealerString = HEALER
local DPSString = DAMAGE
local Result = " %s %s %s"

local MakeString = function(tank, healer, damage, letter)
	local strtank = ""
	local strheal = ""
	local strdps = ""

	if tank then
		if letter then
			strtank = "T"
		else
			strtank = TankString
		end
	end

	if healer then
		if letter then
			strheal = "H"
		else
			strheal = HealerString
		end
	end

	if damage then
		if letter then
			strdps = "D"
		else
			strdps = DPSString
		end
	end

	return format(Result, strtank, strheal, strdps)
end

local Update = function(self)
	local TankReward = false
	local HealerReward = false
	local DPSReward = false
	local Unavailable = true
	
	--Dungeons
	for i = 1, GetNumRandomDungeons() do
		local ID = GetLFGRandomDungeonInfo(i)

		for x = 1,LFG_ROLE_NUM_SHORTAGE_TYPES do
			local Eligible, ForTank, ForHealer, ForDamage, ItemCount = GetLFGRoleShortageRewards(ID, x)

			if Eligible then Unavailable = false end
			if Eligible and ForTank and ItemCount > 0 then TankReward = true end
			if Eligible and ForHealer and ItemCount > 0 then HealerReward = true end
			if Eligible and ForDamage and ItemCount > 0 then DPSReward = true end
		end
	end
	
	--LFR
	for i = 1, GetNumRFDungeons() do
		local ID = GetRFDungeonInfo(i)
		
		for x = 1,LFG_ROLE_NUM_SHORTAGE_TYPES do
			local Eligible, ForTank, ForHealer, ForDamage, ItemCount = GetLFGRoleShortageRewards(ID, x)

			if Eligible then Unavailable = false end
			if Eligible and ForTank and ItemCount > 0 then TankReward = true end
			if Eligible and ForHealer and ItemCount > 0 then HealerReward = true end
			if Eligible and ForDamage and ItemCount > 0 then DPSReward = true end
		end
	end

	if Unavailable then
		self.Text:SetText(DataText.NameColor..QUEUE_TIME_UNAVAILABLE.."|r")
	else
		if (TankReward or HealerReward or DPSReward) then
			self.Text:SetText(DataText.NameColor..L.DataText.CallToArms..":|r"..DataText.ValueColor..MakeString(TankReward, HealerReward, DPSReward, true).."|r")
		else
			self.Text:SetText(DataText.NameColor.."No Call to Arms".."|r")
		end
	end
end

local OnEnter = function(self)
	self:Update()
	GameTooltip:SetOwner(self:GetTooltipAnchor())
	GameTooltip:ClearLines()
	GameTooltip:AddLine("Call to Arms")
	GameTooltip:AddLine(" ")

	local AllUnavailable = true
	local NumCTA = 0

	for i = 1, GetNumRandomDungeons() do
		local ID, Name = GetLFGRandomDungeonInfo(i)
		local TankReward = false
		local HealerReward = false
		local DPSReward = false
		local Unavailable = true

		for x = 1, LFG_ROLE_NUM_SHORTAGE_TYPES do
			local Eligible, ForTank, ForHealer, ForDamage, ItemCount = GetLFGRoleShortageRewards(ID, x)
			if Eligible then Unavailable = false end
			if Eligible and ForTank and ItemCount > 0 then TankReward = true end
			if Eligible and ForHealer and ItemCount > 0 then HealerReward = true end
			if Eligible and ForDamage and ItemCount > 0 then DPSReward = true end
		end

		if (not Unavailable) then
			AllUnavailable = false
			local RolesString = MakeString(TankReward, HealerReward, DPSReward)

			if (RolesString ~= "   ")  then
				GameTooltip:AddDoubleLine(Name .. ":", RolesString, 1, 1, 1)
			end

			if (TankReward or HealerReward or DPSReward) then
				NumCTA = NumCTA + 1
			end
		end
	end
	
	for i = 1, GetNumRFDungeons() do
		local ID, Name = GetRFDungeonInfo(i)
		local TankReward = false
		local HealerReward = false
		local DPSReward = false
		local Unavailable = true

		for x = 1, LFG_ROLE_NUM_SHORTAGE_TYPES do
			local Eligible, ForTank, ForHealer, ForDamage, ItemCount = GetLFGRoleShortageRewards(ID, x)
			if Eligible then Unavailable = false end
			if Eligible and ForTank and ItemCount > 0 then TankReward = true end
			if Eligible and ForHealer and ItemCount > 0 then HealerReward = true end
			if Eligible and ForDamage and ItemCount > 0 then DPSReward = true end
		end

		if (not Unavailable) then
			AllUnavailable = false
			local RolesString = MakeString(TankReward, HealerReward, DPSReward)

			if (RolesString ~= "   ")  then
			local numEncounters, numCompleted = GetLFGDungeonNumEncounters(ID)
				numEncounters = numEncounters or 0
				numCompleted = numCompleted or 0
				GameTooltip:AddDoubleLine(Name .. "(" .. numCompleted .. "/" .. numEncounters .. "):", RolesString, 1, 1, 1)
			end

			if (TankReward or HealerReward or DPSReward) then
				NumCTA = NumCTA + 1
			end
		end
	end

	if AllUnavailable then
		GameTooltip:AddLine("Could not get Call To Arms information.")
	elseif (NumCTA == 0) then
		GameTooltip:AddLine("No dungeons are currently offering a Call To Arms.")
	end

	GameTooltip:Show()
end

local OnLeave = function()
	GameTooltip:Hide()
end

local OnMouseDown = function()
	ToggleFrame(LFDParentFrame)
end

local Enable = function(self)
	self:RegisterEvent("LFG_UPDATE_RANDOM_INFO")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:SetScript("OnEvent", OnEvent)
	self:SetScript("OnMouseDown", OnMouseDown)
	self:SetScript("OnEnter", OnEnter)
	self:SetScript("OnLeave", OnLeave)
	self:Update()
end

local Disable = function(self)
	self.Text:SetText("")
	self:UnregisterAllEvents()
	self:SetScript("OnEvent", nil)
	self:SetScript("OnMouseDown", nil)
	self:SetScript("OnEnter", nil)
	self:SetScript("OnLeave", nil)
end

DataText:Register("CallToArms+", Enable, Disable, Update)
