-- BUFFS_PER_ROW = 8;
-- BUFF_ACTUAL_DISPLAY = 0;
-- BUFF_ROW_SPACING = 0;
local addonName, addon = ...
local BUFFS_PER_ROW = 10;

local T,C,L = unpack(Tukui)
local Scale = T.Toolkit.Functions.Scale

local saf = {}
addon.saf = saf
saf.filters = {}

TemporaryEnchantFrame:ClearAllPoints()
TemporaryEnchantFrame:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)

TempEnchant1:ClearAllPoints()
TempEnchant2:ClearAllPoints()
TempEnchant3:ClearAllPoints()
TempEnchant1:SetPoint("TOPRIGHT", TemporaryEnchantFrame, "TOPRIGHT",0,0)
TempEnchant2:SetPoint("RIGHT", TempEnchant1, "LEFT", -Scale(4), 0)
TempEnchant3:SetPoint("RIGHT", TempEnchant2, "LEFT", -Scale(4), 0)

if WorldStateAlwaysUpFrame then 
	WorldStateAlwaysUpFrame:SetFrameStrata("BACKGROUND")
	WorldStateAlwaysUpFrame:SetFrameLevel(0)
end

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
	icon:SetPoint("TOPLEFT", _G["TempEnchant"..i], Scale(2), -Scale(2))
	icon:SetPoint("BOTTOMRIGHT", _G["TempEnchant"..i], -Scale(2), Scale(2))
	duration:ClearAllPoints()
	duration:SetPoint("BOTTOM", 0, -Scale(13))
end

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
	local buff, previousBuff, aboveBuff,icon;
	local numBuffs = 0
	local hidden = 0
	local slack = BuffFrame.numEnchants or 0
	local inde = 0
	buffRows = 0
	
	for i = 1, BUFF_ACTUAL_DISPLAY do
		buff = _G["BuffButton"..i];
		icon = _G["BuffButton"..i.."Icon"]
		
		if not buff.Backdrop then
			icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			icon:SetPoint("TOPLEFT", buff, Scale(2), -Scale(2))
			icon:SetPoint("BOTTOMRIGHT", buff, -Scale(2), Scale(2))
			
			buff:CreateBackdrop("Transparent")	
			local level = buff:GetFrameLevel()
			buff:SetFrameLevel(level+1)
			buff.Backdrop:SetFrameLevel(level)
		end
			
		if not buff:IsShown() then
			hidden = hidden + 1
			numBuffs = numBuffs + 1
		else
			numBuffs = numBuffs + 1
			inde = numBuffs + slack - hidden
			if ( buff.parent ~= BuffFrame ) then
				buff.count:SetFontObject(NumberFontNormal)
				buff:SetParent(BuffFrame)
				buff.parent = BuffFrame
			end
			buff:ClearAllPoints();
			if ( (inde > 1) and (mod(inde, BUFFS_PER_ROW) == 1) ) then -- New row
				buffRows = buffRows + 1
				buff:SetPoint("TOP", aboveBuff, "BOTTOM", 0, -Scale(BUFF_ROW_SPACING))
				aboveBuff = buff
			elseif ( inde == 1 ) then
				buffRows = 1
				buff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)
				aboveBuff = buff;
			else
				if ( numBuffs == 1 ) then
					buff:SetPoint("TOPRIGHT", "TemporaryEnchantFrame", "TOPLEFT", -Scale(4), 0)
				else
					buff:SetPoint("RIGHT", previousBuff, "LEFT", -Scale(4), 0)
				end
			end
			previousBuff = buff;
		end
	end
end

local function UpdateDebuffAnchors(buttonName, index)
	local debuff = _G[buttonName..index]
	local icon = _G[buttonName..index.."Icon"]
	local border = _G[buttonName..index.."Border"]
	if border then border:Hide() end
	
	if not debuff.Backdrop then		
		icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		icon:SetPoint("TOPLEFT", debuff, Scale(2), -Scale(2))
		icon:SetPoint("BOTTOMRIGHT", debuff, -Scale(2), Scale(2))

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
		debuff:SetPoint("RIGHT", _G[buttonName..(index-1)], "LEFT", -Scale(4), 0)
	end
end

local function UpdateAllDebuffAnchors()
	for i = 1, DEBUFF_ACTUAL_DISPLAY do
		UpdateDebuffAnchors("DebuffButton",i)
	end
	
end

function saf:hookups()
	hooksecurefunc("BuffButton_OnClick", MyBuffButton_OnClick)
	hooksecurefunc("AuraButton_Update", HideBadBuff)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",MyBuffFrame_UpdateAllBuffAnchors)
	hooksecurefunc("DebuffButton_UpdateAnchors", UpdateDebuffAnchors)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",UpdateAllDebuffAnchors)
end