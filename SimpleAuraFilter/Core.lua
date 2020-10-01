-- BUFFS_PER_ROW = 8;
-- BUFF_ACTUAL_DISPLAY = 0;
-- BUFF_ROW_SPACING = 0;

local BUFFS_PER_ROW = 10;

local T,C,L = unpack(Tukui)

SimpleAuraFilter = LibStub("AceAddon-3.0"):NewAddon("SimpleAuraFilter", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale("SimpleAuraFilter")
local Scale = T.Toolkit.Functions.Scale

S = SimpleAuraFilter

SimpleAuraFilter.debug = true

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
	local f = CreateFrame("Frame", nil, _G["TempEnchant"..i])
	f:SetSize(Scale(30), Scale(30))
	f:SetPoint("CENTER",_G["TempEnchant"..i], "CENTER", 0, 0)
	f:CreateBackdrop("Transparent")
	_G["TempEnchant"..i.."Border"]:Hide()
	_G["TempEnchant"..i.."Icon"]:SetTexCoord(.08, .92, .08, .92)
	_G["TempEnchant"..i.."Icon"]:SetPoint("TOPLEFT", _G["TempEnchant"..i], Scale(2), -Scale(2))
	_G["TempEnchant"..i.."Icon"]:SetPoint("BOTTOMRIGHT", _G["TempEnchant"..i], -Scale(2), Scale(2))
	_G["TempEnchant"..i]:SetHeight(Scale(30))
	_G["TempEnchant"..i]:SetWidth(Scale(30))	
	_G["TempEnchant"..i.."Duration"]:ClearAllPoints()
	_G["TempEnchant"..i.."Duration"]:SetPoint("BOTTOM", 0, -Scale(13))
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
	local unit = PlayerFrame.unit
	local name, rank, texture, count, debuffType, duration, expirationTime = UnitAura(unit, indexi, filter)

	local buffName = buttonName..indexi
	local buff = _G[buffName]

	if ( name ) then
		if SimpleAuraFilter:IsBadBuff(name) then
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
		
		if not _G["BuffButton"..i.."Panel"] then
			local panel = CreateFrame("Frame", "BuffButton".. i .."Panel", buff)
			panel:SetSize(Scale(30), Scale(30))
			panel:SetPoint("CENTER",buff, "CENTER", 0, 0)
			panel:CreateBackdrop("Transparent")
			panel:SetFrameLevel(buff:GetFrameLevel() - 1)
			panel:SetFrameStrata(buff:GetFrameStrata())
			
			icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
			icon:SetPoint("TOPLEFT", buff, Scale(2), -Scale(2))
			icon:SetPoint("BOTTOMRIGHT", buff, -Scale(2), Scale(2))
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
				buff:Point("TOP", aboveBuff, "BOTTOM", 0, -BUFF_ROW_SPACING)
				aboveBuff = buff
			elseif ( inde == 1 ) then
				buffRows = 1
				buff:SetPoint("TOPRIGHT", BuffFrame, "TOPRIGHT", 0, 0)
				aboveBuff = buff;
			else
				if ( numBuffs == 1 ) then
					buff:Point("TOPRIGHT", "TemporaryEnchantFrame", "TOPLEFT", -4, 0)
				else
					buff:SetPoint("RIGHT", previousBuff, "LEFT", -4, 0)
				end
			end
			previousBuff = buff;
		end
	end
end

local function UpdateDebuffAnchors(buttonName, index)
	local debuff = _G[buttonName..index]
	local icon = _G[buttonName..index.."Icon"]
	local border	= _G[buttonName..index.."Border"]
	
	local panel
	
	if not _G[buttonName..index.."Panel"] then
		panel = CreateFrame("Frame", buttonName..index.."Panel", debuff)
		panel:SetSize(Scale(30), Scale(30))
		panel:SetPoint("CENTER", debuff, "CENTER", 0, 0)
		panel:CreateBackdrop("Transparent")
		panel:SetFrameLevel(debuff:GetFrameLevel() - 1)
		panel:SetFrameStrata(debuff:GetFrameStrata())
		
		icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		icon:Point("TOPLEFT", debuff, 2, -2)
		icon:Point("BOTTOMRIGHT", debuff, -2, 2)
	else
		panel = _G[buttonName..index.."Panel"]
	end
	
	if border then border:Hide() end
	
	local dtype = select(4, UnitDebuff("player",index))      
	local color
	if (dtype ~= nil) then
		color = DebuffTypeColor[dtype]
	else
		color = DebuffTypeColor["none"]
	end
	panel:SetBackdropBorderColor(color.r * 0.6, color.g * 0.6, color.b * 0.6)
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

function SimpleAuraFilter:OnEnable()
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
    
	hooksecurefunc("BuffButton_OnClick", MyBuffButton_OnClick)
	hooksecurefunc("AuraButton_Update", HideBadBuff)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",MyBuffFrame_UpdateAllBuffAnchors)
	hooksecurefunc("DebuffButton_UpdateAnchors", UpdateDebuffAnchors)
	hooksecurefunc("BuffFrame_UpdateAllBuffAnchors",UpdateAllDebuffAnchors)
	
	-- Chat Command
	LibStub("AceConfig-3.0"):RegisterOptionsTable("SimpleAuraFilter", options, {"saf"})
end

function SimpleAuraFilter:HandleProfileChanges()
	local self = SimpleAuraFilter
	BuffFrame_UpdateAllBuffAnchors()

end

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
