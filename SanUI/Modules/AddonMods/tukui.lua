local S,C,L = unpack(SanUI)

S["ActionBars"].StartButtonHighlight = function() end
S["ActionBars"].StopButtonHighlight = function() end

local Scale = S.Toolkit.Functions.Scale

hooksecurefunc(S["UnitFrames"], "Nameplates", function(self)
  self.Debuffs.disableMouse = true
  end)

-- Minimap
hooksecurefunc(S["Maps"]["Minimap"], "Enable", function()
  Minimap:ClearAllPoints()
  Minimap:SetPoint("TOPLEFT",UIParent,"TOPLEFT",5,-5)
  
  local Mail = MiniMapMailFrame
  Mail:ClearAllPoints()
  Mail:SetPoint("TOPRIGHT", 0, 0)
  
  -- This is needed for the tracking menu (left click on zone name), it's anchored to this
  MinimapBackdrop:ClearAllPoints()
  MinimapBackdrop:SetPoint("CENTER",Minimap,"BOTTOM")
  
  QueueStatusMinimapButton:ClearAllPoints()
  QueueStatusMinimapButton:SetPoint("BOTTOMRIGHT",Minimap,"BOTTOMRIGHT")
end)

-- Rearrange action bars
hooksecurefunc(S["ActionBars"], "Enable", function()
  local TukuiBar1 = S["ActionBars"].Bars.Bar1
  local TukuiBar2 = S["ActionBars"].Bars.Bar2
  local TukuiBar3 = S["ActionBars"].Bars.Bar3
  local TukuiBar4 = S["ActionBars"].Bars.Bar4
  local TukuiBar5 = S["ActionBars"].Bars.Bar5

  -- Bars: Bar 1 will contain all main Buttons, Bar 2 is just moved on top of
  -- it, background made invisible, 3 and 4 must go, Bar 5 stays at the rigt, 6
  -- & 7 anchor to it
  
  local Size = C.ActionBars.NormalButtonSize
  local Spacing = C.ActionBars.ButtonSpacing

  TukuiBar1:SetHeight(Size + (Spacing * 2))
  TukuiBar1:SetWidth((Size * 24) + (Spacing * 25))
  TukuiBar1:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 3)
  TukuiBar1.Shadow:Kill()

  TukuiBar1:HookScript("OnEvent", function(self, event, unit, ...)
    if InCombatLockdown() then return end

    for i=1, 12 do
      local b = _G["MultiBarBottomLeftButton"..i]
      local b2 = _G["MultiBarBottomLeftButton"..i-1]
      local c = _G["ActionButton"..13-i]
      local c2 = _G["ActionButton"..14-i]
      b:ClearAllPoints()
      c:ClearAllPoints()
      b:SetSize(Scale(Size), Scale(Size))
      c:SetSize(Scale(Size), Scale(Size))

      -- Seems contrieved, but was the only way I really could align the buttons
      -- and ActionBar1 properly
      if i == 1 then
        b:SetPoint("BOTTOMLEFT", UIParent, "BOTTOM", Spacing/2, 3 + Spacing)
        c:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOM", -Spacing/2, 3 + Spacing)
      else
        local xoff = (i-1)*Size + (i-1)* Spacing + Spacing/2
        b:SetPoint("BOTTOMLEFT", UIParent, "BOTTOM", xoff, 3 + Spacing)
        c:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOM", xoff, 3 + Spacing)
      end
    end

  end)

  RegisterStateDriver(TukuiBar1, "visibility", "[petbattle] hide; show")
  
  
  MultiBarBottomLeft:SetParent(TukuiBar1)

  RegisterStateDriver(TukuiBar2,"visibility","hide")
  RegisterStateDriver(TukuiBar3,"visibility","hide")
  RegisterStateDriver(TukuiBar4,"visibility","hide")

  TukuiBar5:SetPoint("RIGHT", UIParent, "RIGHT", -Scale(5), -Scale(14))
  TukuiBar5:SetHeight(Scale((Size*12)+(Spacing*13)))

  TukuiStanceBar.Shadow:Kill()
end)


-- MinimapDataTextLeft
hooksecurefunc(S["Maps"].Minimap, "Enable", function()
  local dt_right = S.DataTexts.Panels.Minimap
  local backdrop = Minimap.Backdrop
  
  dt_right:ClearAllPoints()
  dt_right:SetPoint("TOPRIGHT", backdrop, "BOTTOMRIGHT", 0, Scale(19))
  dt_right:SetWidth(dt_right:GetWidth()/2)
  
  local dt_left = CreateFrame("Frame", nil, UIParent)
  dt_left:SetHeight(dt_right:GetHeight())
  dt_left:SetPoint("TOPLEFT", backdrop, "BOTTOMLEFT", 0, Scale(19))
  dt_left:SetPoint("RIGHT", dt_right, "LEFT", Scale(1),0)
  dt_left:CreateBackdrop()
  dt_left:SetFrameStrata("MEDIUM")
  --dt_left:CreateShadow()
  dt_right.Shadow:Hide()
  S.DataTexts.Panels.MinimapDataTextLeft = dt_left
end)

hooksecurefunc(S["DataTexts"], "CreateAnchors", function(self)
  local DataTextLeft = S.DataTexts.Panels.Left
  local Anchor1 = self.Anchors[1]
  local MinimapDataTextLeft = S.DataTexts.Panels.MinimapDataTextLeft

  self.NumAnchors = self.NumAnchors + 1
  
  local Frame = CreateFrame("Button", nil, UIParent)
  Frame:SetSize((DataTextLeft:GetWidth() / 3) - Scale(1), DataTextLeft:GetHeight() - Scale(2))
  Frame:SetFrameLevel(DataTextLeft:GetFrameLevel() + 1)
  Frame:SetFrameStrata("HIGH")
  Frame:EnableMouse(false)
  Frame.SetData = Anchor1.SetData
  Frame.RemoveData = Anchor1.RemoveData
  Frame.Num = self.NumAnchors
  Frame.Tex = Frame:CreateTexture()
  Frame.Tex:SetAllPoints()
  Frame.Tex:SetTexture(0.2, 1, 0.2, 0)
  
  Frame:SetPoint("CENTER", MinimapDataTextLeft, 0, 0)
  Frame:SetSize(MinimapDataTextLeft:GetWidth() - Scale(2), MinimapDataTextLeft:GetHeight() - Scale(2))
  
  self.Anchors[self.NumAnchors] = Frame
end)

hooksecurefunc(S["DataTexts"], "Register", function()
  for _, DT in pairs(S["DataTexts"].DataTexts) do
    if not DT.modded_GetToolTipAnchor then
      local _GetTooltipAnchor = DT.GetTooltipAnchor
      
      if not _GetTooltipAnchor then
        print("No DT with function GetTooltipAnchor found!")
        _GetTooltipAnchor = function() end
      end
      
      local GetTooltipAnchor = function(self)
        local From, Anchor, X, Y = _GetTooltipAnchor(self)

        if self.Position == 8 then
          Anchor = "ANCHOR_BOTTOMRIGHT"
          Y = Scale(-5)
          X = Scale(-50)
          From = S.DataTexts.Panels.MinimapDataTextLeft
        end
        
        return From, Anchor, X, Y
      end
      
      DT.GetTooltipAnchor = GetTooltipAnchor
      DT.modded_GetToolTipAnchor = true
    end
  end
end)

-- Hide Panels we don't want
hooksecurefunc(S["Chat"], "Enable", function()
  S["Chat"].Panels.LeftChat:Hide()
  S["Chat"].Panels.RightChat:Hide()
  S["Chat"].Panels.LeftChatTabs:Hide()
  S["Chat"].Panels.RightChatTabs:Hide()
  
  TukuiLeftDataTextBox:ClearAllPoints()
  TukuiRightDataTextBox:ClearAllPoints()
  TukuiLeftDataTextBox:SetPoint("BOTTOMLEFT",UIParent,10,Scale(3))
  TukuiRightDataTextBox:SetPoint("BOTTOMRIGHT",UIParent,-10,Scale(3))
end)

hooksecurefunc(S["Miscellaneous"].Experience, "Enable", function()
  S.Miscellaneous.Experience:Disable()
end)

hooksecurefunc(S["Miscellaneous"].Reputation, "Enable", function()
  S.Miscellaneous.Reputation:Disable()
end)

hooksecurefunc(S["UnitFrames"], "Enable", function()
  RegisterStateDriver(Tukui_PetBattleFrameHider, "visibility", "[petbattle] hide;show")
end)

-- Move ChatFrame 4 in favor of space for a damage meter
local ChangeDefaultChatPosition = function(frame)

  if frame then

    local id = frame:GetID()
    local name = FCF_GetChatWindowInfo(id)

    if id == 4 and name == LOOT then
      if not frame.isDocked then
        if frame.isLocked then FCF_SetLocked(frame, 0) else print("NOT LOCKED") end
        frame:ClearAllPoints()
        frame:SetPoint("BOTTOMLEFT", TukuiInfoLeft, "TOPLEFT", 0, 6)
        frame:SetJustifyH("LEFT")
        FCF_DockFrame(ChatFrame4) 
      end
    end
  end
end
hooksecurefunc("FCF_RestorePositionAndDimensions", ChangeDefaultChatPosition)

--[[
-- put a 'c' on cubeleft, since clicking on it opens the chat menu
hooksecurefunc(S["Panels"],"Enable",function()
  local cubeleft = S.Panels["CubeLeft"]
    
  if cubeleft then
      local Text = cubeleft:CreateFontString(nil, "OVERLAY")
      Text:SetFont(C.Medias.Font, 10)
    Text:SetText("c")
      Text:SetJustifyH("CENTER")
      Text:SetJustifyV("MIDDLE")
    Text:Point("CENTER",cubeleft)
    Text:Show()
    
    cubeleft.text = Text
  end
end)
]]
  
--[[
S["ActionBars"].AddHooks = function(self)
  hooksecurefunc("ActionButton_Update", self.SkinButton)
  hooksecurefunc("ActionButton_UpdateFlyout", self.StyleFlyout)
  hooksecurefunc("SpellButton_OnClick", self.StyleFlyout)
  hooksecurefunc("ActionButton_UpdateHotkeys", self.UpdateHotKey)
  hooksecurefunc(ExtraActionButton1.style, "SetTexture", self.DisableExtraButtonTexture)
  hooksecurefunc("PetActionButton_SetHotkeys", self.UpdateHotKey)
end
]]
