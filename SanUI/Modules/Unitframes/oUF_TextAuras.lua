--[[------------------------------------------------------------------------------------------------------
oUF_TextAuras by Shimmer of EU-Mal'Ganis
Adaption of oUF_Aurawatch by Astromech

To setup, create a table named TextAuras in your unit frame. There are several options
you can specify, as explained below.
	
	texts 
		Mandatory!
		A table of text strings to be used as for display. oUF_TextAuras does not position
		these texts, so you must do so yourself. Each text needs a spellID entry,
		which is the spell ID of the aura to watch. Table should be set up
		such that values are text strings, but the keys can be anything.
		
		Note each text can have several options set as well. See below.
	strictMatching
		Default: false
		If true, TextAuras will only show a text if the specific aura
		with the specified spell id is on the unit. If false, AuraWatch
		will show the text if any aura with the same name and icon texture 
		(as returned by GetSpellInfo)
		is on the unit. Strict matching can be undesireable because most
		ranks of an aura have different spell ids.
	fromUnits
		Default {["player"] = true, ["pet"] = true, ["vehicle"] = true}
		A table of units from which auras can originate. Have the units be the keys
		and "true" be the values.
	anyUnit
		Default false
		Set to true for oUF_TextAuras to to show an aura no matter what unit it 
		originates from. This will override any fromUnits setting.
	PostResetText(watch, text, remain, duration, expires)
		Function executed with the given arguments after ResetText has been processed

Below are options set on a per text basis. Set these as fields in the text table.

The following settings can be overridden from the TextAuras table on a per-text basis:
	fromUnits
	anyUnit
		
The following settings are unique to texts:
	
	spellID
		Mandatory!
		The spell id of the aura, as explained above.
	
Here is an example of how to set oUF_AW up:

	local createTextAuras = function(self, unit)
		local texts = {}
		
		-- A table of spellIDs to create icons for
		-- To find spellIDs, look up a spell on www.wowhead.com and look at the URL
		-- http://www.wowhead.com/?spell=SPELL_ID
		local spellIDs = { ... }
		

		auras.PostCreateText = myCustomTextModificationFuncion
		-- Set any other AuraWatch settings
		auras.texts = {}
		for i, sid in pairs(spellIDs) do
			local text = self.CreateFontString(nil, "OVERLAY")
			text.spellID = sid
			-- set the dimensions and positions
			text:SetFont("Fonts\\FRIZQT__.TTF", 9, "THINOUTLINE")
			text:SetPoint("TOP", self)
			auras.texts[sid] = text
		end
		self.TextAuras = auras
	end
-----------------------------------------------------------------------------------------------------------]]

local _, ns = ...
local S, C = unpack(SanUI)

local Config = {
	--format for timers that are soon to expire
	expiringFormatUncolored = '%d',

	--format for timers that have seconds remaining
	secondsFormatUncolored = '%d',

	--format for timers that have minutes remaining
	minutesFormatUncolored = '%dm',

	--format for timers that have hours remaining
	hoursFormatUncolored = '%dh',

	--format for timers that have days remaining
	daysFormatUncolored = '%dd' 
}

Config.expiringDuration = tullaCC.Config.expiringDuration

--local oUF = ns.oUF or _G.oUF
local oUF = TukuiUnitFrameFramework
assert(oUF, "oUF_NotAuraWatch cannot find an instance of oUF. If your oUF is embedded into a layout, it may not be embedded properly.")

local UnitAura, UnitGUID = UnitAura, UnitGUID
local GUIDs = {}

local PLAYER_UNITS = {
	player = true,
	vehicle = true,
	pet = true,
}

--key for swiftmend, will get special treatment
-- local smname, _, smimage = GetSpellInfo(18562)
-- local smkey = smname..smimage
-- local smtexts = {}
--local rjname = GetSpellInfo(774) --rejuvenation
--local rgname = GetSpellInfo(8936) --regrowth
--local germname = GetSpellInfo(155777) --germination (druid lvl 100 talent)

local DAY, HOUR, MINUTE = 86400, 3600, 60 --used for formatting text
local DAYISH, HOURISH, MINUTEISH = 3600 * 23.5, 60 * 59.5, 59.5 --used for formatting text at transition points
local HALFDAYISH, HALFHOURISH, HALFMINUTEISH = DAY/2 + 0.5, HOUR/2 + 0.5, MINUTE/2 + 0.5 --used for calculating next update times
local MIN_DELAY = 0.01
local round = function(x) return floor(x + 0.5) end

--returns both what text to display, and how long until the next update
local function getTimeTextUncolored(s)
	--format text as seconds when at 90 seconds or below
	if s < MINUTEISH then	
		local seconds = s
		local formatString = seconds >= Config.expiringDuration and Config.secondsFormatUncolored or Config.expiringFormatUncolored
		seconds = round(s)
		local nextUpdate = (seconds > Config.expiringDuration and s - (seconds - 0.51)) or 0.01
		seconds = (seconds > Config.expiringDuration and seconds) or ((round(s*10))/10)
		return formatString, seconds, nextUpdate
	--format text as minutes when below an hour
	elseif s < HOURISH then
		local minutes = round(s/MINUTE)
		return Config.minutesFormatUncolored, minutes, minutes > 1 and (s - (minutes*MINUTE - HALFMINUTEISH)) or (s - MINUTEISH)
	--format text as hours when below a day
	elseif s < DAYISH then
		local hours = round(s/HOUR)
		return Config.hoursFormatUncolored, hours, hours > 1 and (s - (hours*HOUR - HALFHOURISH)) or (s - HOURISH)
	--format text as days
	else
		local days = round(s/DAY)
		return Config.daysFormatUncolored, days,  days > 1 and (s - (days*DAY - HALFDAYISH)) or (s - DAYISH)
	end
end

local SetupGUID
do 
	local cache = setmetatable({}, {__type = "k"})

	local frame = CreateFrame"Frame"
	frame:SetScript("OnEvent", function(self, event)
		for k,t in pairs(GUIDs) do
			GUIDs[k] = nil
			wipe(t)
			cache[t] = true
		end
	end)
	frame:RegisterEvent"PLAYER_REGEN_ENABLED"
	frame:RegisterEvent"PLAYER_ENTERING_WORLD"
	
	function SetupGUID(guid)
		local t = next(cache)
		if t then
			cache[t] = nil
		else
			t = {}
		end
		GUIDs[guid] = t
	end
end

local function ExpireText(watch, text)
	text:SetText('')
	text:Hide()
	
	if text.timer then 
		text.timer:Cancel() 
		text.timer = nil
	end
end

local function ResetText(watch, text, count, duration, expires)
	local curT = GetTime()
	local remain = expires - curT
	
	if text.timer then 
		text.timer:Cancel() 
		text.timer = nil
	end
	
	if remain > 0 then
		local formatStr, time, timeUntilNextUpdate = getTimeTextUncolored(remain)
		text:SetFormattedText(formatStr, time)
		text:Show()
		
		local function update_timer()
			ResetText(watch,text,count,duration,expires)
		end
		
		text.timer = C_Timer.NewTimer(max(MIN_DELAY,timeUntilNextUpdate),update_timer)
		
		if watch.PostResetText then 
			watch.PostResetText(watch, text, remain, duration, expires) 
		end
	else --this is needed /bc the timers might still be running after an aura expires
		ExpireText(watch,text)
	end
end

local Update
do
	local found = {}
	function Update(frame, event, unit)
		if frame.unit ~= unit then return end
		local watch = frame.TextAuras
		local index, texts = 1, watch.watched
		local _, name, texture, count, duration, expires, caster, key, icon, spellid 
		local filter = "HELPFUL"
		local guid = UnitGUID(unit)
		if not GUIDs[guid] then SetupGUID(guid) end
		--local swiftmendable = false
		
		for key, text in pairs(texts) do
			text:Hide()
			text:SetText('')
		end
		
		while true do
			name, _, texture, count, _, duration, expires, caster, _, _, spellid = UnitAura(unit, index, filter)
			if not name then 
				if filter == "HELPFUL" then
					filter = "HARMFUL"
					index = 1
				else
					break
				end
			else
				-- if name == rjname or name == rgname or name == germname then
					-- swiftmendable = true
				-- end
				
				if watch.strictMatching then
					key = spellid
				else
					key = name..texture
				end
				text = texts[key]
				if text and (text.anyUnit or (caster and text.fromUnits[caster])) then
					ResetText(watch, text, count, duration, expires)
					GUIDs[guid][key] = true
					found[key] = true
				end
				index = index + 1
			end
		end
		
		-- if swiftmendable and icons[smkey] then
			-- ResetIcon(watch,smicons[frame],1,3,3) -- values arbitraty, don't show cd frame for swiftmend!
			-- GUIDs[guid][smkey] = true
			-- found[smkey] = true
		-- end
		
		for key in pairs(GUIDs[guid]) do
			if texts[key] and not found[key] then
				ExpireText(watch, texts[key])
			end
		end
		
		wipe(found)
	end
end

local function SetupTexts(self)

	local watch = self.TextAuras
	local texts = watch.texts
	watch.watched = {}
	
	for _,text in pairs(texts) do
	
		if not text:GetFont() then
			text:SetFont("Fonts\\FRIZQT__.TTF", 9, "THINOUTLINE")
		end
	
		local name, _, image = GetSpellInfo(text.spellID)
		if not name then error("oUF_NotAuraWatch error: no spell with "..tostring(text.spellID).." spell ID exists") end
		text.name = name
		
		-- if text.spellID == 18562 then smtexts[self] = text end

		if text.fromUnits == nil then
			text.fromUnits = watch.fromUnits or PLAYER_UNITS
		end
		if text.anyUnit == nil then
			text.anyUnit = watch.anyUnit
		end
		
		
		if watch.strictMatching then
			watch.watched[spellID] = text
		else
			watch.watched[name..image] = text
		end
		
	end
end

local function ForceUpdate(element)
	return Update(element.__owner, 'ForceUpdate', element.__owner.unit)
end

local function Enable(self)
	if self.TextAuras then
		self.TextAuras.__owner = self
		self.TextAuras.ForceUpdate = ForceUpdate
		
		self:RegisterEvent("UNIT_AURA", Update)
		SetupTexts(self)
		return true
	else
		return false
	end
end

local function Disable(self)
	if self.TextAuras then
		self:UnregisterEvent("UNIT_AURA", Update)
		for _,text in pairs(self.TextAuras.texts) do
			text:SetText('')
			text:Hide()
		end
	end
end

oUF:AddElement("TextAuras", Update, Enable, Disable)
