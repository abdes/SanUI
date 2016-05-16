-- BUFFS_PER_ROW = 8;
-- CONSOLIDATED_BUFFS_PER_ROW = 4;
-- BUFF_ACTUAL_DISPLAY = 0;
-- BUFF_ROW_SPACING = 0;

local BUFFS_PER_ROW = 10;

local T,C,L = unpack(Tukui)

local consolidatedBuffs = { };

SimpleAuraFilter = LibStub("AceAddon-3.0"):NewAddon("SimpleAuraFilter", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SimpleAuraFilter")

S = SimpleAuraFilter

SimpleAuraFilter.debug = true

--SetCVar("consolidateBuffs",0)

TemporaryEnchantFrame:ClearAllPoints()
--TemporaryEnchantFrame:Point("TOPRIGHT", UIParent, "TOPRIGHT", -10, -TukuiMinimap:GetHeight()-26)
TemporaryEnchantFrame:Point("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)
--TemporaryEnchantFrame.SetPoint = TukuiDB.dummy

TempEnchant1:ClearAllPoints()
TempEnchant2:ClearAllPoints()
TempEnchant3:ClearAllPoints()

TempEnchant1:Point("TOPRIGHT", TemporaryEnchantFrame, "TOPRIGHT",0,0)
TempEnchant2:Point("RIGHT", TempEnchant1, "LEFT", -4, 0)
TempEnchant3:Point("RIGHT", TempEnchant2, "LEFT", -4, 0)

WorldStateAlwaysUpFrame:SetFrameStrata("BACKGROUND")
WorldStateAlwaysUpFrame:SetFrameLevel(0)

for i = 1, 3 do
	local f = CreateFrame("Frame", nil, _G["TempEnchant"..i])
	--f:CreatePanel("", 30, 30, "CENTER", _G["TempEnchant"..i], "CENTER", 0, 0)	
	f:Size(30)
	f:SetPoint("CENTER",_G["TempEnchant"..i], "CENTER", 0, 0)
	f:SetTemplate("Transparent")
	_G["TempEnchant"..i.."Border"]:Hide()
	_G["TempEnchant"..i.."Icon"]:SetTexCoord(.08, .92, .08, .92)
	_G["TempEnchant"..i.."Icon"]:Point("TOPLEFT", _G["TempEnchant"..i], 2, -2)
	_G["TempEnchant"..i.."Icon"]:Point("BOTTOMRIGHT", _G["TempEnchant"..i], -2, 2)
	_G["TempEnchant"..i]:Height(30)
	_G["TempEnchant"..i]:Width(30)	
	_G["TempEnchant"..i.."Duration"]:ClearAllPoints()
	_G["TempEnchant"..i.."Duration"]:Point("BOTTOM", 0, -13)
	--_G["TempEnchant"..i.."Duration"]:SetFont(C["media"].font, 12)
end

local function MyBuffButton_OnClick (button)
	if IsShiftKeyDown() then
		name = UnitAura("player", button:GetID(), button.filter)
		if name then
			SimpleAuraFilter.db.profile.filters[name] = 1
			BuffFrame_UpdateAllBuffAnchors()
		end
	end
end

local function HideBadBuff(buttonName, indexi, filter)
	local unit = PlayerFrame.unit;
	local name, rank, texture, count, debuffType, duration, expirationTime, _, _, shouldConsolidate = UnitAura(unit, indexi, filter);

	local buffName = buttonName..indexi;
	local buff = _G[buffName];

	if ( name ) then

		-- this one is SAF code
		if SimpleAuraFilter:IsBadBuff(name) then
			buff.bad = true;
			buff:Hide();
			buff.duration:Hide();
			buff.count:Hide();
		else
			buff.bad = false;
		end
	end
	return 1;
end

local buffRows = 0

local function MyBuffFrame_UpdateAllBuffAnchors()
	local buff, previousBuff, aboveBuff,icon;
	local numBuffs = 0;
	local hidden = 0; -- SAF
	local slack = BuffFrame.numEnchants or 0
	local numConsolidated = BuffFrame.numConsolidated or 0
	local inde = 0;
	buffRows = 0
	
	if (  numConsolidated > 0 ) then
		slack = slack + 1;	-- one icon for all consolidated buffs
	end
	
	for i = 1, BUFF_ACTUAL_DISPLAY do
		buff = _G["BuffButton"..i];
		icon = _G["BuffButton"..i.."Icon"]
		
		if not _G["BuffButton"..i.."Panel"] then
			local panel = CreateFrame("Frame", "BuffButton".. i .."Panel", buff)
			--panel:CreatePanel("Default", 30, 30, "CENTER", buff, "CENTER", 0, 0)
			panel:Size(30)
			panel:SetPoint("CENTER",buff, "CENTER", 0, 0)
			panel:SetTemplate("Transparent")
			panel:SetFrameLevel(buff:GetFrameLevel() - 1)
			panel:SetFrameStrata(buff:GetFrameStrata())
			
			--buff:SetTemplate()
			icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			icon:Point("TOPLEFT", buff, 2, -2)
			icon:Point("BOTTOMRIGHT", buff, -2, 2)
		end
		
		
		if not buff:IsShown() then --SAF
			hidden = hidden + 1 --SAF
			numBuffs = numBuffs + 1; --SAF
		else
			if ( buff.consolidated ) then	
				if ( buff.parent == BuffFrame ) then
					buff:SetParent(ConsolidatedBuffsContainer);
					buff.parent = ConsolidatedBuffsContainer;
				end
			else
				numBuffs = numBuffs + 1;
				inde = numBuffs + slack - hidden;
				if ( buff.parent ~= BuffFrame ) then
					buff.count:SetFontObject(NumberFontNormal);
					buff:SetParent(BuffFrame);
					buff.parent = BuffFrame;
				end
				buff:ClearAllPoints();
				if ( (inde > 1) and (mod(inde, BUFFS_PER_ROW) == 1) ) then
					-- New row
					buffRows = buffRows + 1
					if ( inde == BUFFS_PER_ROW+1 ) then
						buff:Point("TOP", ConsolidatedBuffs, "BOTTOM", 0, -BUFF_ROW_SPACING);
					else
						buff:Point("TOP", aboveBuff, "BOTTOM", 0, -BUFF_ROW_SPACING);
					end
					aboveBuff = buff;
				elseif ( inde == 1 ) then
					buffRows = 1
					buff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0);
				else
					if ( numBuffs == 1 ) then
						if ( BuffFrame.numEnchants > 0 ) then
							buff:Point("TOPRIGHT", "TemporaryEnchantFrame", "TOPLEFT", -4, 0);
						else
							buff:Point("TOPRIGHT", ConsolidatedBuffs, "TOPLEFT", -4, 0);
						end
					else
						buff:SetPoint("RIGHT", previousBuff, "LEFT", -4, 0);
					end
				end
				previousBuff = buff;
			end
		end --SAF
	end

	-- if ( ConsolidatedBuffsTooltip:IsShown() ) then
		-- ConsolidatedBuffs_UpdateAllAnchors();
	-- end
	
end

local function MyConsolidatedBuffs_UpdateAllAnchors()
	local buff, previousBuff, aboveBuff;
	local numBuffs = 0;
	local hidden = 0;
	local inde = 0;
	
	for _, buff in pairs(consolidatedBuffs) do
		numBuffs = numBuffs + 1
		if ( buff.parent == BuffFrame ) then
			buff:SetParent(ConsolidatedBuffsContainer);
			buff.parent = ConsolidatedBuffsContainer;
		end
		if not buff:IsShown() then
			hidden = hidden + 1
		else
			inde = numBuffs - hidden
			buff:ClearAllPoints();
			if ( (inde > 1) and (mod(inde, CONSOLIDATED_BUFFS_PER_ROW) == 1) ) then
				-- new row
				buffRows = buffRows + 1
				buff:SetPoint("TOP", aboveBuff, "BOTTOM", 0, -BUFF_ROW_SPACING);
				aboveBuff = buff;
			elseif ( not previousBuff ) then
				buff:SetPoint("TOPLEFT", ConsolidatedBuffsContainer, "TOPLEFT", 0, 0);
				aboveBuff = buff;
			else
				buff:SetPoint("LEFT", previousBuff, "RIGHT", 7, 0);
			end
			previousBuff = buff;
		end
	end
	ConsolidatedBuffsTooltip:SetWidth(min(inde * 24 + 18, 114));
	ConsolidatedBuffsTooltip:SetHeight(floor((inde + 3) / 4 ) * CONSOLIDATED_BUFF_ROW_HEIGHT + 16);
end

local function UpdateDebuffAnchors(buttonName, index)
	local debuff = _G[buttonName..index];
	local icon = _G[buttonName..index.."Icon"]
	local border	= _G[buttonName..index.."Border"]
	
	local panel
	
	if not _G[buttonName..index.."Panel"] then
		panel = CreateFrame("Frame", buttonName..index.."Panel", debuff)
		panel:Size(30)
		panel:Point("CENTER", debuff, "CENTER", 0, 0)
		panel:SetTemplate("Transparent")
		panel:SetFrameLevel(debuff:GetFrameLevel() - 1)
		panel:SetFrameStrata(debuff:GetFrameStrata())
		
		--buff:SetTemplate()
		icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		icon:Point("TOPLEFT", debuff, 2, -2)
		icon:Point("BOTTOMRIGHT", debuff, -2, 2)
	else
		panel = _G[buttonName..index.."Panel"]
	end
	
	if border then border:Hide() end
	
	local dtype = select(5, UnitDebuff("player",index))      
	local color
	if (dtype ~= nil) then
		color = DebuffTypeColor[dtype]
	else
		color = DebuffTypeColor["none"]
	end
	panel:SetBackdropBorderColor(color.r * 0.6, color.g * 0.6, color.b * 0.6)
	debuff:ClearAllPoints()
	
	if not SanUI_DebuffsAlt then
		if index == 1 then
			debuff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, -buffRows*BUFF_ROW_SPACING - T.Scale(buffRows * 30 + 10) )
			--Point("BOTTOMRIGHT", UIParent, "TOPRIGHT", -10, -TukuiMinimap:GetHeight()-20)
		else
			debuff:Point("RIGHT", _G[buttonName..(index-1)], "LEFT", -4, 0)
		end
	elseif SanUI_DebuffsAlt then
		if index == 1 then
			debuff:Point("BOTTOM", TukuiActionBarBackground,"TOP", 0, T.Scale(4))
		else
			debuff:Point("LEFT", _G[buttonName..(index-1)], "RIGHT", T.Scale(4), 0)
		end
	end
end

local function UpdateAllDebuffAnchors()

	for i = 1, DEBUFF_ACTUAL_DISPLAY do
		UpdateDebuffAnchors("DebuffButton",i)
	end
	
end


function SimpleAuraFilter:OnInitialize()
    -- Called when the addon is loaded
   
end

function SimpleAuraFilter:OnEnable()
    -- Called when the addon is enabled
	
    self.db = LibStub("AceDB-3.0"):New("SimpleAuraFilterDB")
    if not self.db.profile.filters then self.db.profile.filters = {} end	
	
	local options = {
		name = "SimpleAuraFilter",
		handler = SimpleAuraFilter,
		type = 'group',
		args = {
			menu = {
				type = 'execute',
				name = 'Buff Filter Menu',
				desc = 'Shows filter list',
				func = 'OpenMenu',
			},
			
		toggle = {
				type = 'execute',
				name = 'Toggle Filter',
				desc = 'toggles buffs',
				func = 'ToggleAllBuffs',
			},
		},
	}
	
	self.db.RegisterCallback( self, "OnNewProfile", "HandleProfileChanges" )
	self.db.RegisterCallback( self, "OnProfileReset", "HandleProfileChanges" )
	self.db.RegisterCallback( self, "OnProfileChanged", "HandleProfileChanges" )
	self.db.RegisterCallback( self, "OnProfileCopied", "HandleProfileChanges" )
	
	options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("Simple Aura Filter", options)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Simple Aura Filter")
	
	self.buffs = {}
    
	--Hooking the neccesary functions here
	
	--BuffButton_OnClick = function (button) return SimpleAuraFilter:BuffButton_OnClick(button) end
	hooksecurefunc("BuffButton_OnClick", MyBuffButton_OnClick)
	hooksecurefunc("AuraButton_Update", HideBadBuff)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",MyBuffFrame_UpdateAllBuffAnchors)
	--hooksecurefunc("ConsolidatedBuffs_UpdateAllAnchors",MyConsolidatedBuffs_UpdateAllAnchors)
	hooksecurefunc("DebuffButton_UpdateAnchors", UpdateDebuffAnchors)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",UpdateAllDebuffAnchors)
	-- Repair damage done by overwriting
	--ConsolidatedBuffs:SetScript("OnUpdate", ConsolidatedBuffs_OnUpdate)
	--ConsolidatedBuffs:SetScript("OnEnter", ConsolidatedBuffs_OnEnter)
	
	-- Chat Command
	LibStub("AceConfig-3.0"):RegisterOptionsTable("SimpleAuraFilter", options, {"saf"})
end

function SimpleAuraFilter:HandleProfileChanges()
	local self = SimpleAuraFilter
	BuffFrame_UpdateAllBuffAnchors()

end

-- handle weapon enchants
-- local f = CreateFrame("Frame")
-- f:SetScript("OnEvent", function() mainhand, _, _, offhand = GetWeaponEnchantInfo() end)
-- f:RegisterEvent("UNIT_INVENTORY_CHANGED")
-- f:RegisterEvent("PLAYER_EVENTERING_WORLD")

-- ********* Hooks


-- *********

function SimpleAuraFilter:IsBadBuff(name)
	if self.allbuffs then return false end
	if not self.db.profile.filters then return false end
	return self.db.profile.filters[name]
end

function SimpleAuraFilter:AllBuffs()
	return self.allbuffs
end

function SimpleAuraFilter:ToggleAllBuffs()
	self.allbuffs = not self.allbuffs
	if self.allbuffs then self:Print("Filter off") else self:Print("Filter on") end
	BuffFrame_Update()
	BuffFrame_UpdateAllBuffAnchors()
	ConsolidatedBuffs_UpdateAllAnchors()
end

function SimpleAuraFilter:OpenMenu()
    local d = LibStub("AceGUI-3.0"):Create("Frame")
	d:SetTitle("Filters")
    d:SetWidth(400)
    d:SetHeight(225)
	d:SetLayout("Fill")
	local s = LibStub("AceGUI-3.0"):Create("ScrollFrame")
	--s:SetLayout("Float")
	d:AddChild(s)
	
	
	for name,_ in pairs(self.db.profile.filters) do
		local temp = LibStub("AceGUI-3.0"):Create("Button")				
		temp:SetText(name)
		temp:SetCallback("OnClick", function (self, event)
						SimpleAuraFilter.db.profile.filters[name] = nil
						d:Hide()	
						BuffFrame_Update()
						SimpleAuraFilter:OpenMenu()
						end)
		s:AddChild(temp)
	end
    d:Show()
end

-- ********* Helpers

function SimpleAuraFilter:Debug(...)
    if self.debug then self:Print(...) end
end