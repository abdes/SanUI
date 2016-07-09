if true then return end
local S,C,L = unpack(SanUI)

local DataText = S["DataTexts"]
local format = format
local Class = S.MyClass

local Update = function(self)
	-- taken from RaidBuffTray_Update() from FrameXML
	local numBufs = 0
	local i
	local buffmask, buffcount = GetRaidBuffInfo();
	if (buffmask == nil) then
		return;
	end

	local mask = 1;
	for i=1,NUM_LE_RAID_BUFF_TYPES do
		local name = GetRaidBuffTrayAuraInfo(i);

		if name then  
			numBufs = numBufs + 1;
		end
		mask = bit.lshift(mask, 1);
	end
	self.Text:SetText(numBufs.."/"..max(numBufs,buffcount));
end

local OnLeave = function()
	GameTooltip:Hide()
end


local OnEnter = function(self)
	GameTooltip:SetOwner(self:GetTooltipAnchor())
	GameTooltip:ClearLines()
	
	local availableBuffs=GetRaidBuffInfo();
	for i=1,NUM_LE_RAID_BUFF_TYPES do
		if GetRaidBuffTrayAuraInfo(i) then
			availability = "Check"
			avcolor = {0, 1, 0}
		elseif ( bit.band(availableBuffs,2^(i-1)) > 0 ) then
			avcolor = {1, 0, 0}
			availability = "Available"
		else
			availability="not available"
			avcolor={.6,.6,.6}
		end
		GameTooltip:AddDoubleLine(_G["RAID_BUFF_"..i]..": ",availability,1,1,1,unpack(avcolor));
	end
	
	GameTooltip:Show()
end

local Enable = function(self)
	self:RegisterEvent("UNIT_AURA")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:SetScript("OnEvent", Update)
	self:SetScript("OnEnter", OnEnter)
	self:SetScript("OnLeave", OnLeave)
	self:Update()
end

local Disable = function(self)
	self.Text:SetText("")
	self:UnregisterAllEvents()
	self:SetScript("OnEvent", nil)
	self:SetScript("OnEnter", nil)
	self:SetScript("OnLeave", nil)
end

DataText:Register("RaidBuffs", Enable, Disable, Update)

hooksecurefunc(S["DataTexts"],"AddDefaults",function()
	TukuiData[GetRealmName()][UnitName("Player")].Texts[L.DataText.Power] = {false, 0}
	TukuiData[GetRealmName()][UnitName("Player")].Texts["RaidBuffs"] = {true,7}
end)
