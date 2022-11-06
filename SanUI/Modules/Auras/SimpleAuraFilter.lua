local addonName, addon = ...
local S,C,L = unpack(addon)

local BUFFS_PER_ROW = C.Auras.BuffsPerRow
local button_size = 30
local offset = 5
local Scale = S.Toolkit.Functions.Scale

local floor = math.floor

local saf = {}
addon.saf = saf
saf.filters = {}

saf.UpdateGrid = function(self, aura)
	local header = aura:GetParent()
	
	local frames = { header:GetChildren() }
	local toShow = {}
	
	for _,f in ipairs(frames) do
		local name = f.Name
		if name and saf.filters[name] then
			--print("Hiding "..tostring(f:GetName()).."("..name..")")
			f:Hide()
			f.oldOnShow = f:GetScript("OnShow")
			f:SetScript("OnShow", function(self) self:Hide() end)
			--f:SetAlpha(0)
		elseif name and f:IsShown() then
			table.insert(toShow, f)
		end
	end
	
	for index, f in ipairs(toShow) do
		if f.oldOnShow then
			f:SetScript("OnShow", f.oldOnShow)
		end

		local row = floor(index / BUFFS_PER_ROW)
		local index_in_row = index % BUFFS_PER_ROW
		print("row: "..row..", idx: "..index_in_row)
		local x_off = (index_in_row - 1)*(button_size + offset)
		local y_off = (row)*(button_size + offset)	
		
		f:SetPoint("TOPRIGHT", header, "TOPRIGHT", -x_off, -y_off)

		f:Show()
	end
end