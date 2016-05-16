-- NOTE: Please Fix me - TotemBar Position, when Shadow Orbs Bar is Shown!

local T, C, L = select(2, ...):unpack()

local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

if (Class ~= "PRIEST") then
    return
end

TukuiUnitFrames.AddClassFeatures["PRIEST"] = function(self)
    local PowerTexture = T.GetTexture(C["UnitFrames"].PowerTexture)

    -- Totem Bar (Lightwell)
    if (C.UnitFrames.TotemBar) then
        T["Colors"].totems[1] = { 238/255, 221/255,  130/255 }

        local TotemBar = self.Totems
        TotemBar[1]:ClearAllPoints()
        TotemBar[1]:SetAllPoints()

        for i = 2, MAX_TOTEMS do
            TotemBar[i]:Hide()
        end

        TotemBar:SetScript("OnShow", TukuiUnitFrames.UpdatePriestClassBars)
        TotemBar:SetScript("OnHide", TukuiUnitFrames.UpdatePriestClassBars)
    end

    if (C.UnitFrames.SerendipityBar) then
        local SerendipityBar = CreateFrame("Frame", self:GetName()..'SerendipityBar', self)
        SerendipityBar:Point("BOTTOMLEFT", self, "TOPLEFT", 0, 1)
        SerendipityBar:Width(250)
        SerendipityBar:Height(8)
        SerendipityBar:SetBackdrop(TukuiUnitFrames.Backdrop)
        SerendipityBar:SetBackdropColor(0, 0, 0)

        for i = 1, 2 do
            SerendipityBar[i] = CreateFrame("StatusBar", self:GetName()..'Serendipity'..i, SerendipityBar)
            SerendipityBar[i]:Height(8)
            SerendipityBar[i]:SetStatusBarTexture(PowerTexture)
            SerendipityBar[i]:Point("LEFT", (i == 1 and SerendipityBar) or (SerendipityBar[i-1]), (i == 1 and "LEFT") or ("RIGHT"), (i == 1 and 0) or 1, 0)
            SerendipityBar[i]:Width((i == 1 and 250 / 2) or (250 / 2 - 1))
        end

        SerendipityBar:SetScript("OnShow", TukuiUnitFrames.UpdatePriestClassBars)
        SerendipityBar:SetScript("OnHide", TukuiUnitFrames.UpdatePriestClassBars)

        self.SerendipityBar = SerendipityBar
    end
end
