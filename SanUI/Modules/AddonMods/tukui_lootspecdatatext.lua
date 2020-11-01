local S,C,L = unpack(SanUI)

local DataText = S["DataTexts"]
local format = format
local Class = S.MyClass

local lootSpecName
local currentSpecName

local Update = function(self)
	local lootSpec = GetLootSpecialization()
	lootSpecName = lootSpec and select(2, GetSpecializationInfoByID(lootSpec))
	local currentSpec = GetSpecialization()
	currentSpecName = currentSpec and select(2, GetSpecializationInfo(currentSpec))
	
	local text = "--"
	
	if (lootSpec ~=0 and lootSpecName == nil) or currentSpecName == nil then
		self.Text:SetText("|cffff0000+--+|r")
		return
	end
	
	if lootSpec == 0 then
		lootSpecName = currentSpecName
	end
	
	self.Text:SetText(lootSpecName)
	
	if lootSpecName == currentSpecName then
		self.Text:SetTextColor(1,1,1)
	else
		self.Text:SetTextColor(1,0,0)
	end	
end

local OnLeave = function()
	GameTooltip:Hide()
end


local OnEnter = function(self)
	self:Update() -- just to be sure
	GameTooltip:SetOwner(self:GetTooltipAnchor())
	GameTooltip:ClearLines()
	
	local color
	
	if lootSpecName == currentSpecName then
		color = {1, 1, 1}
	else
		color = {1, 0, 0}
	end
	
	GameTooltip:AddDoubleLine("Loot: ",lootSpecName,1,1,1,unpack(color))
	GameTooltip:AddDoubleLine("Spec: ",currentSpecName,1,1,1,unpack(color))

	GameTooltip:Show()
end

local Enable = function(self)
self:RegisterEvent("PLAYER_TALENT_UPDATE")
	self:RegisterEvent("PLAYER_LOOT_SPEC_UPDATED")
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

DataText:Register("LootSpec", Enable, Disable, Update)

--[[
hooksecurefunc(S["DataTexts"],"AddDefaults",function()
	TukuiData[GetRealmName()][UnitName("Player")].Texts[L.DataText.Power] = {false, 0}
	TukuiData[GetRealmName()][UnitName("Player")].Texts["LootSpec"] = {true,7}
end)
]]
