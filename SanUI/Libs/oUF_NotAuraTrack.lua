local parent, ns = ...
local oUF = SanUI.oUF
assert(oUF, "oUF_NotAuraTrack cannot find an instance of oUF. If your oUF is embedded into a layout, it may not be embedded properly.")

--[[
	By Tavore of EU-Kargath. Heavily modified version of oUF_AuraTrack by Tukz of tukui.org
	
	Element frame.NotAuraTrack has the following entries
	
	.Icons Table of buff icons to show
		Keys: spellID
		Values: Tables with the following Keys:
			.anyCaster If true(thy) show regardless of caster. If false(y), show only when the player is the caster
			.cd  (optional) A cooldown frame, will be updated by NotAuraWatch
			.tex (Only needed when .color or .timers is set) The texture if the icon that colors get applied to
			.color (optional) The color of the texture (leave nil for showing images)
			.timers (optional) Array (table indexed by integers) of timers. A timer is a table of the form { time, { r, g, b} }, where the icon texture 
		            is colored by SetVertexColor(r, g, b) if the remaining duration of the buff is <time. The first one matching wins.
				
	.Texts Table of FontString instances to show
		Keys: spellID
		Values: Tables with the following Keys:
			.anyCaster If true(thy) show regardless of caster. If false(y), show only when the player is the caster
			.format The format string when printing the time left, passed as an argument to SetFormattedText
			.res The maximum time between updates (should be at most half of the lowest digit needed for the format string)
			.timers (optional) Array (table indexed by integers) of timers. A timer is a table of the form { time, format, res}, where whenever the remaining
			       duration of the buff is <time, we use the format string format and a maximum update time of res (see the notes above)
]]

local UnitAura = UnitAura

local function UpdateText(text, expiration, current_time)
	local buf_remaining = expiration - current_time
	
	local format = text.format
	local res = text.res

	for _, timer in ipairs(text.timers) do
		if buf_remaining < timer[1] then
			format = timer[2]
			res = timer[3]
			break
		end
	end
	text:SetFormattedText(format, buf_remaining)
	C_Timer.After(res, function() if text:IsShown() then UpdateText(text, expiration, GetTime()) end end)
end

local showing = { icons = {}, texts = {}}
local Update = function(self, event, unit)
	if self.unit ~= unit then
		return
	end
	
	local nat = self.NotAuraTrack
	nat.lastUpdate = GetTime()
	local icons = nat.Icons
	local texts = nat.Texts
	
	for i = 1, 40 do
		local name, texture, count, debuffType, duration, expiration, caster, isStealable,
			nameplateShowSelf, spellID, canApply, isBossDebuff, casterIsPlayer, nameplateShowAll,
			timeMod, effect1, effect2, effect3 = UnitAura(unit, i, "HELPFUL")
		
		if not name then break end
		
		local icon = icons[spellID]
		if  icon and (icon.anyCaster or caster == "player") then	
			if icon.cd then
				icon.cd:SetCooldown(expiration - duration, duration)
			end
			
			local color = icon.color
			if icon.timers then
				local buf_remaining = expiration - nat.lastUpdate
				for _, timer in ipairs(icon.timers) do
					if buf_remaining < timer[1] then
						color = timer[2]
						break
					end
				end
			end
			
			if color then
				icon.tex:SetVertexColor(unpack(color))
			end
			icon:Show()
			showing.icons[spellID] = true
		end
		
		local text = texts[spellID]
		if text and (text.anyCaster or caster == "player") then
			UpdateText(text, expiration, nat.lastUpdate)
			text:Show()
			showing.texts[spellID] = true
		end
	end

	for spellID, icon in pairs(icons) do
		if not showing.icons[spellID] then
			icon:Hide()
		end
		showing.icons[spellID] = false
	end	
	
	for spellID, text in pairs(texts) do
		if not showing.texts[spellID] then
			text:Hide()
		end
		showing.texts[spellID] = false
	end	
end

local ForceUpdate = function(element)
	return Update(element.__owner, "ForceUpdate", element.__owner.unit)
end

local function Enable(self)
	local nat = self.NotAuraTrack
	
	if (nat) then
		nat.__owner = self
		nat.ForceUpdate = ForceUpdate			
		self:RegisterEvent("UNIT_AURA", Update)
		nat.lastUpdate = GetTime() - 0.6
		nat.Ticker = C_Timer.NewTicker(0.6, function() if GetTime() - nat.lastUpdate > 0.5 then ForceUpdate(nat) end end)
		return true
	end
end

local function Disable(self)
	local nat = self.NotAuraTrack
	
	if (nat) then
		self:UnregisterEvent("UNIT_AURA", Update)
		if nat.Ticker then
			nat.Ticker:Cancel()
		end
	end
end

oUF:AddElement("NotAuraTrack", Update, Enable, Disable)