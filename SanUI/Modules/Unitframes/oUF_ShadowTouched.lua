local _, ns = ...
local oUF = TukuiUnitFrameFramework
assert(oUF, "oUF_ShadowTouched cannot find an instance of oUF. If your oUF is embedded into a layout, it may not be embedded properly.")

local UnitAura  = UnitAura

local gems = {
	[284558] = true, -- amethyst-of-the-shadow-king
	[284567] = true, -- tailwind-sapphire
	[284611] = true, -- ruby-of-focused-animus
	[284881] = true, -- opal-of-unleashed-rage
	[284645] = true, -- topaz-of-brilliant-sunlight
	[284814] = true, -- emerald-of-earthen-roots
	[284527] = true, -- diamond-of-the-unshakeable-protector
}

local Update
do
	function Update(frame, event, unit)
		if frame.unit ~= unit then return end
		local st = frame.ShadowTouched
		local index = 1
		local touched = false
		local gemmed = false
		local remaining_st
		
		while true do
			local name, _, _, _, _, remaining, _, _, _, spellID = UnitAura(unit, index, "HARMFUL")
			
			if not spellID then
				break	
			end		
			
			if gems[spellID] then
				gemmed = true
			end
			
			if spellID == st.spellID then
				touched = true
				remaining_st = remaining
			end
			
			-- nothing to do in this case anyways, so let's skip everything
			if touched  and remaining_st and remaining_st > 3 then
				break
			end
			
			index = index + 1
		end

		local needs_refresh = not touched or (remaining_st and remaining_st < 3)
		
		if gemmed and needs_refresh then
			st:Show()
		else
			st:Hide()
		end
		
		if UnitIsDead(unit) then
			st:Hide()
		end
		
	end
end

local function SetupIcon(self)
	local icon = self.ShadowTouched
	icon.spellID = 284556
	
	local name, _, image = GetSpellInfo(icon.spellID)
	if not name then error("oUF_ShadowTouched error: no spell with spell ID 284556 exists") end
	icon.name = name

	if not icon.icon then
		local tex = icon:CreateTexture(nil, "BACKGROUND")
		tex:SetAllPoints(icon)
		tex:SetTexture(image)
		icon.icon = tex
		icon.icon:SetTexCoord(.1,.9,.1,.9)
		
		if not icon.overlay then
			local overlay = icon:CreateTexture(nil, "OVERLAY")
			overlay:SetTexture"Interface\\Buttons\\UI-Debuff-Overlays"
			overlay:SetAllPoints(icon)
			overlay:SetTexCoord(.296875, .5703125, 0, .515625)
			overlay:SetVertexColor(1, 0, 0)
			icon.overlay = overlay
		end
	end

end

local function ForceUpdate(element)
	return Update(element.__owner, "ForceUpdate", element.__owner.unit)
end

local function Enable(self)
	if self.ShadowTouched then
		self.ShadowTouched.__owner = self
		self.ShadowTouched.ForceUpdate = ForceUpdate
		
		self:RegisterEvent("UNIT_AURA", Update)
		self:RegisterEvent("PLAYER_DEAD",Update, true)
		SetupIcon(self)
		return true
	else
		return false
	end
end

local function Disable(self)
	if self.ShadowTouched then
		self:UnregisterEvent("UNIT_AURA", Update)
		self:UnregisterEvent("PLAYER_DEAD",Update)
		self.ShadowTouched:Hide()
	end
end

oUF:AddElement("ShadowTouched", Update, Enable, Disable)