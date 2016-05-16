--[[ Element: Velhari Bar
 Handle updating and visibility of a bar indicating the MaxHealth reduction of
 the Aura of Contempt from the Velhari Encounter in Hellfire citadel

 VelhariBar - A statusbar

 Notes
 -----

 The default StatusBar texture will be applied if the UI widget doesn't have a
 status bar texture or color defined.

 Examples
 --------

   -- Position and size
   local myBar = CreateFrame('StatusBar', nil, self.Health)
   myBar:SetPoint('TOP')
   myBar:SetPoint('BOTTOM')
   myBar:SetPoint('RIGHT')
   myBar:SetWidth(200)
   
   self.VelhariBar = mybar

 Hooks
 -----

 Override(self) - Used to completely override the internal update function.
                  Removing the table key entry will make the element fall-back
                  to its internal function again.

  PreUpdate(self) - Executed before updating the VelhariBar
  PostUpdate(self,factor) - Executed after updating the Velahri Bar
                          - Factor is the MaxHealth reduction factor of the aura of contempt
]]

local _, ns = ...
local oUF = TukuiUnitFrameFramework
local AURA_OF_CONTEMPT = GetSpellInfo(179986)

local function Disable(self)
  local vb = self.VelhariBar

  if(vb) then
    velhari_end(self,"ENCOUNTER_END")
    vb:Hide()

    self:UnregisterEvent('ENCOUNTER_START', velhari_start)
   -- self:UnregisterEvent('ENCOUNTER_END', velhari_end)
    --self:UnregisterEvent('PLAYER_REGEN_ENABLED', velhari_end)
  end

end


local function Update(self)
  local vb = self.VelhariBar
  if not vb.active then return end

  if(vb.PreUpdate) then vb:PreUpdate() end

  local max_percentage = select(15, UnitAura("boss1", AURA_OF_CONTEMPT))

  if max_percentage then
    vb.factor = max_percentage / 100
  else
    vb.factor = 1
    --if not UnitExists("boss1") then
     -- Disable(self)
      --return
    --end
  end

  vb:SetMinMaxValues(0, 1)
  vb:SetValue(1-vb.factor)
  vb:Show()

  if(vb.PostUpdate) then
    return vb:PostUpdate(unit, factor)
  end

  C_Timer.After(1, function() Update(self) end)
end


local function Path(self, ...)
  return (self.VelhariBar.Override or Update) (self)
end


local ForceUpdate = function(element)
  return Path(element.__owner, 'ForceUpdate', element.__owner.unit)
end


local function velhari_start(self,event,encounterID)
  if event ~= "ENCOUNTER_START" or encounterID ~= 1784 then return end

  local vb = self.VelhariBar

  if vb.active then return end

  vb.active = true
  vb.factor = 1

  Path(self)
  C_Timer.After(1,function() Path(self) end)
end


local function velhari_end(self,event)
  --if event ~= "ENCOUNTER_END" and event ~= "PLAYER_REGEN_ENABLED" then return end

  local vb = self.VelhariBar

  if not vb.active then return end
  
  vb.factor = 1
  
  Path(self)
  vb.active = false
end


local function Enable(self)
  local vb = self.VelhariBar
  
  if(vb) then
    vb.__owner = self
    vb.ForceUpdate = ForceUpdate

    self:RegisterEvent('ENCOUNTER_START', velhari_start)
    --self:RegisterEvent('ENCOUNTER_END', velhari_end)
    --self:RegisterEvent('PLAYER_REGEN_ENABLED', velhari_end)

    if(vb:IsObjectType'StatusBar' and not vb:GetStatusBarTexture()) then
      vb:SetStatusBarTexture([[Interface\TargetingFrame\UI-StatusBar]])
    end

    vb:Hide()

    return true
  else
    return false
  end

end

oUF:AddElement('VelhariBar', Path, Enable, Disable)
