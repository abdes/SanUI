-- BUFFS_PER_ROW = 8;
-- BUFF_ACTUAL_DISPLAY = 0;
-- BUFF_ROW_SPACING = 0;
local addonName, addon = ...
local BUFFS_PER_ROW = 10;

local S,C,L = unpack(addon)
local Scale = S.Toolkit.Functions.Scale

local saf = {}
addon.saf = saf
saf.filters = {}

--[[
TemporaryEnchantFrame:ClearAllPoints()
TemporaryEnchantFrame:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)

TempEnchant1:ClearAllPoints()
TempEnchant2:ClearAllPoints()
TempEnchant3:ClearAllPoints()
TempEnchant1:SetPoint("TOPRIGHT", TemporaryEnchantFrame, "TOPRIGHT",0,0)
TempEnchant2:SetPoint("RIGHT", TempEnchant1, "LEFT", -S.scale4, 0)
TempEnchant3:SetPoint("RIGHT", TempEnchant2, "LEFT", -S.scale4, 0)
--]]

if WorldStateAlwaysUpFrame then 
	WorldStateAlwaysUpFrame:SetFrameStrata("BACKGROUND")
	WorldStateAlwaysUpFrame:SetFrameLevel(0)
end

--[[
for i = 1, 3 do
	local button = _G["TempEnchant"..i]
	local icon = _G["TempEnchant"..i.."Icon"]
	local duration = _G["TempEnchant"..i.."Duration"]
	local border = _G["TempEnchant"..i.."Border"]
	if border then border:Hide() end
	
	button:SetSize(Scale(30), Scale(30))
	button:CreateBackdrop("Transparent")
	local level = button:GetFrameLevel()
	button:SetFrameLevel(level+1)
	button.Backdrop:SetFrameLevel(level)
	
	icon:SetTexCoord(.08, .92, .08, .92)
	icon:SetPoint("TOPLEFT", _G["TempEnchant"..i], S.scale2, -S.scale2)
	icon:SetPoint("BOTTOMRIGHT", _G["TempEnchant"..i], -S.scale2, S.scale2)
	duration:ClearAllPoints()
	duration:SetPoint("BOTTOM", 0, -Scale(13))
end
--]]

local function MyBuffButton_OnClick (button)
	if IsShiftKeyDown() then
		name = UnitAura("player", button:GetID(), button.filter)
		if name then
			saf.filters[name] = true
			BuffFrame_UpdateAllBuffAnchors()
		end
	end
end

local function HideBadBuff(buttonName, indexi, filter)
	local unit = PlayerFrame.unit
	local name, rank, texture, count, debuffType, duration, expirationTime = UnitAura(unit, indexi, filter)

	local buffName = buttonName..indexi
	local buff = _G[buffName]

	if ( name ) then
		if (saf.filters[name] and not saf.allbuffs) then
			buff.bad = true
			buff:Hide()
			buff.duration:Hide()
			buff.count:Hide()
		else
			buff.bad = false
		end
	end
	return 1
end

local buffRows = 0

local function MyBuffFrame_UpdateAllBuffAnchors()
	local buff, previousBuff, aboveBuff;
	local hidden = 0
	local numEnchants = BuffFrame.numEnchants or 0
	local idx = 0
	buffRows = (numEnchants > 0 and 1) or 0 -- keep this, needed when no buff is shown but a temp enchant
	
	for i = 1, BUFF_MAX_DISPLAY do
		buff = BuffFrame.AuraContainer[i]
		--buff = _G["BuffButton"..i];
			
		if not buff.Backdrop then
			--local icon = _G["BuffButton"..i.."Icon"]
			local icon = buff.icon
			icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			icon:SetPoint("TOPLEFT", buff, S.scale2, -S.scale2)
			icon:SetPoint("BOTTOMRIGHT", buff, -S.scale2, S.scale2)
			
			buff:CreateBackdrop("Transparent")	
			local level = buff:GetFrameLevel()
			buff:SetFrameLevel(level+1)
			buff.Backdrop:SetFrameLevel(level)
			buff.count:SetFontObject(NumberFontNormal)
			buff:SetParent(BuffFrame)
		end
			
		if not buff:IsShown() then
			hidden = hidden + 1	
		else
			idx = idx + 1
			--idx = i + numEnchants - hidden
			buff:ClearAllPoints();			
			if idx == 1 then -- first buff we're showing
				local lastEnchant = _G["TempEnchant"..numEnchants]
				
				if lastEnchant then
					buff:SetPoint("TOPRIGHT", lastEnchant, "TOPLEFT", -S.scale4, 0)
					aboveBuff = TempEnchant1 -- if numEnchants > 1, this exists anyways
				else
					buff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)
					aboveBuff = buff
				end
				buffRows = 1
			elseif mod(idx + numEnchants, BUFFS_PER_ROW) == 1 then -- New row, idx is not 1
				buffRows = buffRows + 1
				buff:SetPoint("TOP", aboveBuff, "BOTTOM", 0, -Scale(BUFF_ROW_SPACING))
				aboveBuff = buff
			else
				buff:SetPoint("RIGHT", previousBuff, "LEFT", -S.scale4, 0)
			end
			previousBuff = buff;
		end
	end

	saf.UpdateAllDebuffAnchors()
end

local function UpdateDebuffAnchors(buttonName, index)
	local debuff = _G[buttonName..index]
	local icon = _G[buttonName..index.."Icon"]
	local border = _G[buttonName..index.."Border"]
	if border then border:Hide() end
	
	if not debuff.Backdrop then		
		icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		icon:SetPoint("TOPLEFT", debuff, S.scale2, -S.scale2)
		icon:SetPoint("BOTTOMRIGHT", debuff, -S.scale2, S.scale2)

		debuff:CreateBackdrop()
		local level = debuff:GetFrameLevel()
		debuff:SetFrameLevel(level+1)
		debuff.Backdrop:SetFrameLevel(level)	
	end
	
	local dtype = select(4, UnitDebuff("player",index))      
	local color
	if (dtype ~= nil) then
		color = DebuffTypeColor[dtype]
	else
		color = DebuffTypeColor["none"]
	end
	debuff.Backdrop:SetBorderColor(color.r * 0.7, color.g * 0.7, color.b * 0.7)
	
	debuff:ClearAllPoints()
	if index == 1 then
		debuff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, -buffRows*BUFF_ROW_SPACING - Scale(buffRows * 30 + 10) )
	else
		debuff:SetPoint("RIGHT", _G[buttonName..(index-1)], "LEFT", -S.scale4, 0)
	end
end

saf.UpdateAllDebuffAnchors = function()
	for i = 1, DEBUFF_MAX_DISPLAY do
		UpdateDebuffAnchors("DebuffButton",i)
	end
	
end

function saf:hookups()
	--hooksecurefunc("BuffButton_OnClick", MyBuffButton_OnClick)
	--hooksecurefunc("AuraButton_Update", HideBadBuff)
	--hooksecurefunc(BuffFrame, "UpdateGridLayout", MyBuffFrame_UpdateAllBuffAnchors)
	--hooksecurefunc("DebuffButton_UpdateAnchors", UpdateDebuffAnchors)
	--hooksecurefunc(BuffFrame, "UpdateGridLayout", saf.UpdateAllDebuffAnchors)
	--hooksecurefunc("BuffButton_OnClick", MyBuffButton_OnClick)
	--hooksecurefunc("AuraButton_Update", HideBadBuff)
	--hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",MyBuffFrame_UpdateAllBuffAnchors)
	--hooksecurefunc("DebuffButton_UpdateAnchors", UpdateDebuffAnchors)
	--hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", saf.UpdateAllDebuffAnchors)
end
