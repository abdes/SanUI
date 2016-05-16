local T, C, L = select(2, ...):unpack()

local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

if (Class ~= "SHAMAN") then
    return
end

TukuiUnitFrames.AddClassFeatures["SHAMAN"] = function(self)
    if (C.UnitFrames.TotemBar) then
        -- Default layout of Totems match Shaman class.
        local Bar = self.Totems

        for i = 1, MAX_TOTEMS do
            Bar[i].Icon = Bar[i]:CreateTexture(nil, "OVERLAY")
            Bar[i].Icon:Size(Bar[i]:GetWidth(), 12)
            Bar[i].Icon:SetPoint("CENTER", 0, 15)
            Bar[i].Icon:SetTexCoord(0.05, 0.95, 0.1, 0.35)
            
            Bar[i].Icon.Backdrop = CreateFrame("Frame", nil, Bar[i])
            Bar[i].Icon.Backdrop:SetAllPoints(Bar[i].Icon)
            Bar[i].Icon.Backdrop:CreateShadow()
        end
    end
end
