local parent, ns = ...
local oUF = SanUI.oUF
assert(oUF, "oUF_NotAuraTrack cannot find an instance of oUF. If your oUF is embedded into a layout, it may not be embedded properly.")

--[[
	By Tavore of EU-Kargath. Heavily modified version of oUF_AuraTrack by Tukz of tukui.org
	.Icons Table of buff icons to show.
	
	  Keys: spellID
	  Values: Tables with the following Keys:
	    
		.anyCaster = bool If true(thy) show regardless of caster. If false(y), show only when the player is the caster
	    .cd  A cooldown frame, will be updated by NotAuraWatch
	    .timers Array (table indexed by integers) of timers. A timer is a table of the form { time, { r, g, b} }, where the icon texture 
		        is colored by SetVertexColor(r, g, b) if the remaining duration of the buff is <time. The first one matching wins.
]]

local UnitAura = UnitAura

local showing = {}
local Update = function(self, event, unit)
	if self.unit ~= unit then
		return
	end
	
	local nat = self.NotAuraTrack
	nat.lastUpdate = GetTime()
	local icons = nat.Icons
	
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
			
			if icon.timers then
				local color = icon.color
				local buf_remaining = expiration - nat.lastUpdate
				for _, timer in ipairs(icon.timers) do
					if buf_remaining < timer[1] then
						color = timer[2]
						break
					end
				end
				if color then icon.tex:SetVertexColor(unpack(color)) end
			end
			
			icon:Show()
			showing[spellID] = true
		end
	end

	for _, icon in pairs(icons) do
		if not showing[icon.spellID] then
			icon:Hide()
		end
		showing[icon.spellID] = false
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