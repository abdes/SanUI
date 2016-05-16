local S,C,L = unpack(SanUI)
S["UnitFrames"].Enable = function() return end


local S,C,L = unpack(SanUI)

-- Minimap
hooksecurefunc(S["Maps"]["Minimap"],"Enable",function()
	Minimap:ClearAllPoints()
	Minimap:SetPoint("TOPLEFT",UIParent,"TOPLEFT",5,-5)
	QueueStatusMinimapButton:ClearAllPoints()
	QueueStatusMinimapButton:Point("BOTTOMRIGHT",Minimap,"BOTTOMRIGHT")
end)

hooksecurefunc(S["ActionBars"],"Enable",function()

	local TukuiBar1 = S["Panels"].ActionBar1
	local TukuiBar2 = S["Panels"].ActionBar2
	local TukuiBar3 = S["Panels"].ActionBar3
	local TukuiBar4 = S["Panels"].ActionBar4
	local TukuiBar5 = S["Panels"].ActionBar5

	-- Bars: Bar 1 will contain all main Buttons, Bar 2 is just moved on top of it, background made invisible,
	--       3 and 4 must go, Bar 5 stays at the rigt, 6 & 7 anchor to it
	
	TukuiBar1:ClearAllPoints()
	TukuiBar1:Point("BOTTOM", UIParent, "BOTTOM", 0, 3)
	TukuiBar1:SetWidth((C["ActionBars"].NormalButtonSize * 24) + (C["ActionBars"].ButtonSpacing * 27))
	RegisterStateDriver(TukuiBar1, "visibility", "[petbattle] hide; show")

	-- Rearrange buttons of bar 2
	for i=1, 12 do
		local b = _G["MultiBarBottomLeftButton"..i]
		local b2 = _G["MultiBarBottomLeftButton"..i-1]
		b:Size(C["ActionBars"].NormalButtonSize, C["ActionBars"].NormalButtonSize)
		b:ClearAllPoints()
		b:SetFrameStrata("BACKGROUND")
		b:SetFrameLevel(15)
		b:ClearAllPoints()
		
		if i == 1 then
			b:SetPoint("LEFT", TukuiBar1, "LEFT",(C["ActionBars"].NormalButtonSize*12)+(C["ActionBars"].ButtonSpacing*14), 0)
		else
			b:SetPoint("LEFT", b2, "RIGHT", C["ActionBars"].ButtonSpacing, 0)
		end
	end
	
	MultiBarBottomLeft:SetParent(TukuiBar1)

	RegisterStateDriver(TukuiBar2,"visibility","hide")
	RegisterStateDriver(TukuiBar3,"visibility","hide")
	RegisterStateDriver(TukuiBar4,"visibility","hide")

	TukuiBar5:SetPoint("RIGHT", UIParent, "RIGHT", -5, -14)
        TukuiBar5:SetHeight((C["ActionBars"].NormalButtonSize*12)+(C["ActionBars"].ButtonSpacing*14))
 
        S["Panels"].BottomLine:ClearAllPoints()
        S["Panels"].BottomLine:Point("BOTTOMLEFT",UIParent,10,20)
        S["Panels"].BottomLine:Point("BOTTOMRIGHT",UIParent,-10,20)

        S.Panels["ActionBar" .. 2 .. "ToggleButton"]:Kill()
        S.Panels["ActionBar" .. 3 .. "ToggleButton"]:Kill()
end)

S["ActionBars"].AddHooks = function(self)
	hooksecurefunc("ActionButton_Update", self.SkinButton)
	hooksecurefunc("ActionButton_UpdateFlyout", self.StyleFlyout)
	hooksecurefunc("SpellButton_OnClick", self.StyleFlyout)
	--hooksecurefunc("ActionButton_ShowOverlayGlow", self.StartButtonHighlight)
	--hooksecurefunc("ActionButton_HideOverlayGlow", self.StopButtonHighlight)
	hooksecurefunc("ActionButton_UpdateHotkeys", self.UpdateHotKey)
	hooksecurefunc(ExtraActionButton1.style, "SetTexture", self.DisableExtraButtonTexture)
	hooksecurefunc("PetActionButton_SetHotkeys", self.UpdateHotKey)
end

--ChatFrame 4 is where skada resides, so we move it to the left
local ChangeDefaultChatPosition = function(frame)

	if frame then

		local id = frame:GetID()
		local name = FCF_GetChatWindowInfo(id)

		if id == 4 and name == LOOT then
			if not frame.isDocked then
				if frame.isLocked then FCF_SetLocked(frame, 0) else print("NOT LOCKED") end
				frame:ClearAllPoints()
				frame:Point("BOTTOMLEFT", TukuiInfoLeft, "TOPLEFT", 0, 6)
				frame:SetJustifyH("LEFT")
				FCF_DockFrame(ChatFrame4) 
			end
		end
	end
end
hooksecurefunc("FCF_RestorePositionAndDimensions", ChangeDefaultChatPosition)

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
