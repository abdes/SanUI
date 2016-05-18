local T, C, L = select(2, ...):unpack()

--[[
C["NamePlates"] = {
    ["Enable"] = true,
    ["HealthText"] = false,
    ["Width"] = 150,
    ["Height"] = 6,
    ["CastHeight"] = 4,
    ["Spacing"] = 4,
    ["NonTargetAlpha"] = .5,
    ["Texture"] = "Tukui",
    ["Font"] = "Tukui Outline",
    ["NameTextColor"] = true,
}
--]]

local _G = _G
local unpack = unpack
local Plates = CreateFrame("Frame", nil, WorldFrame)

function Plates:SetName()
    -- QUESTION! NAME IN WHITE OR CLASSCOLORED? :X
    local Text = self:GetText()

    if Text then
        local Class = select(2, UnitClass(self:GetParent().unit))
        
        self:SetText("|cffffffff".. Text .."|r")
    end
end

function Plates:ColorHealth()
    if (self:GetName() and string.find(self:GetName(), "NamePlate")) then
        local r, g, b

        if not UnitIsConnected(self.unit) then
            r, g, b = unpack(T.Colors.disconnected)
        else
            if UnitIsPlayer(self.unit) then
                local Class = select(2, UnitClass(self.unit))
                    
                r, g, b = unpack(T.Colors.class[Class])
            else
                if (UnitIsFriend("player", self.unit)) then
                    r, g, b = unpack(T.Colors.reaction[5])
                else
                    r, g, b = unpack(T.Colors.reaction[1])
                end
            end
        end

        self.healthBar:SetStatusBarColor(r, g, b)
    end
end

function Plates:SetupPlate(options)
    local HealthBar = self.healthBar
    local Highlight = self.selectionHighlight
    local Aggro = self.aggroHighlight
    local CastBar = self.castBar
    local CastBarIcon = self.castBar.Icon
    local Shield = self.castBar.BorderShield
    local Name = self.name

    -- HEALTHBAR
    HealthBar:SetStatusBarTexture(C.Medias.Normal)
    HealthBar.background:ClearAllPoints()
    HealthBar.background:SetInside(0, 0)
    HealthBar:CreateShadow()
    HealthBar.border:SetAlpha(0)

    -- CASTBAR
    CastBar:SetStatusBarTexture(C.Medias.Normal)
    CastBar.background:ClearAllPoints()
    CastBar.background:SetInside(0, 0)
    CastBar:CreateShadow()
    
    if CastBar.border then
        CastBar.border:SetAlpha(0)
    end
    
    CastBar.Icon:SetTexCoord(.08, .92, .08, .92)
    CastBar.Icon:ClearAllPoints()
    CastBar.Icon:SetPoint("TOPRIGHT", HealthBar, "TOPLEFT", -4, 0)
    
    CastBar.IconBackdrop = CreateFrame("Frame", nil, CastBar)
    CastBar.IconBackdrop:SetSize(CastBar.Icon:GetSize())
    CastBar.IconBackdrop:SetPoint("TOPRIGHT", HealthBar, "TOPLEFT", -4, 0)
    CastBar.IconBackdrop:CreateShadow()
    CastBar.IconBackdrop:SetFrameLevel(CastBar:GetFrameLevel() - 1 or 0)
    
    -- Fix icon border displayed on empty icon, sometime castbar icon is not found on a cast? beta bug?
    hooksecurefunc(CastBar.Icon, "SetTexture", function(self)
        local CastBar = self:GetParent()
        local Icon = select(4, UnitCastingInfo(CastBar.unit))
        
        if Icon then
            CastBar.IconBackdrop:Show()
        else
            CastBar.IconBackdrop:Hide()
        end
    end)
    
    CastBar.Text:SetFont(C.Medias.Font, 9, "OUTLINE")
    
    CastBar.startCastColor.r, CastBar.startCastColor.g, CastBar.startCastColor.b = unpack(Plates.Options.CastBarColors.StartNormal)
    CastBar.startChannelColor.r, CastBar.startChannelColor.g, CastBar.startChannelColor.b = unpack(Plates.Options.CastBarColors.StartChannel)
    CastBar.failedCastColor.r, CastBar.failedCastColor.g, CastBar.failedCastColor.b = unpack(Plates.Options.CastBarColors.Failed)
    CastBar.nonInterruptibleColor.r, CastBar.nonInterruptibleColor.g, CastBar.nonInterruptibleColor.b = unpack(Plates.Options.CastBarColors.NonInterrupt)
    CastBar.finishedCastColor.r, CastBar.finishedCastColor.g, CastBar.finishedCastColor.b = unpack(Plates.Options.CastBarColors.Success)
    
    -- UNIT NAME
    Name:SetFont(C.Medias.Font, 10, "OUTLINE")
    hooksecurefunc(Name, "Show", Plates.SetName)
    
    -- WILL DO A BETTER VISUAL FOR THIS LATER
    Highlight:Kill()
    Shield:Kill()
    Aggro:Kill()
end

function Plates:Enable()
    local Enabled = C.NamePlates.Enable
    
    if not Enabled then
        return
    end
    
    self:RegisterOptions()
    
    DefaultCompactNamePlateFriendlyFrameOptions = Plates.Options.Friendly
    DefaultCompactNamePlateEnemyFrameOptions = Plates.Options.Enemy
    DefaultCompactNamePlatePlayerFrameOptions = Plates.Options.Player
    DefaultCompactNamePlateFrameSetUpOptions = Plates.Options.Size
    DefaultCompactNamePlatePlayerFrameSetUpOptions = Plates.Options.PlayerSize
    
    if ClassNameplateManaBarFrame then
        ClassNameplateManaBarFrame:SetStatusBarTexture(C.Medias.Normal)
        ClassNameplateManaBarFrame.ManaCostPredictionBar:SetTexture(C.Medias.Normal)
    end
    
    hooksecurefunc("DefaultCompactNamePlateFrameSetupInternal", self.SetupPlate)
    hooksecurefunc("CompactUnitFrame_UpdateHealthColor", self.ColorHealth)
end

T["NamePlates"] = Plates
