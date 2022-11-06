local addonName, addon = ...
local T, C, L = unpack(addon)

local Auras = T["Auras"]

Auras.HeaderNames = {
	"SanUIBuffHeader",
	"SanUIDebuffHeader",
}

function Auras:CreateHeaders()
	local Movers = T["Movers"]
	local Headers = Auras.Headers

	for i = 1, 2 do
		local Header

		Header = CreateFrame("Frame", Auras.HeaderNames[i], T.PetHider, "SecureAuraHeaderTemplate")
		Header:SetClampedToScreen(true)
		Header:SetMovable(true)
		Header:SetAttribute("minHeight", 30)
		Header:SetAttribute("wrapAfter", C["Auras"].BuffsPerRow)
		Header:SetAttribute("wrapYOffset", C.Auras.ClassicTimer and -51 or -40)
		Header:SetAttribute("xOffset", -35)
		Header:CreateBackdrop()
		Header.Backdrop:SetBorderColor(1, 0, 0)
		Header.Backdrop:Hide()
		Header.Backdrop.Text = Header.Backdrop:CreateFontString(nil, "OVERLAY")
		Header.Backdrop.Text:SetFontTemplate(C.Medias.Font, 12)
		Header.Backdrop.Text:SetPoint("CENTER")

		if (i == 1) then
			Header.Backdrop.Text:SetText(L.Auras.MoveBuffs)
		else
			Header.Backdrop.Text:SetText(L.Auras.MoveDebuffs)
		end


		Header:SetAttribute("minWidth", C["Auras"].BuffsPerRow * 35)
		Header:SetAttribute("template", "AurasTemplate")
		Header:SetAttribute("weaponTemplate", "AurasTemplate")
		Header:SetSize(30, 30)
		Header:SetFrameStrata("BACKGROUND")

		RegisterAttributeDriver(Header, "unit", "[vehicleui] vehicle; player")

		table.insert(Headers, Header)
	end

	local Buffs = Headers[1]
	local Debuffs = Headers[2]
	
	Buffs:CreateBackdrop()
	Debuffs:CreateBackdrop()

	Buffs:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -5)
	Buffs:SetAttribute("filter", "HELPFUL")
	Buffs:SetAttribute("includeWeapons", 1)
	Buffs:Show()

	Movers:RegisterFrame(Buffs, "Buffs")

	Debuffs:SetPoint("TOPRIGHT", Buffs, "BOTTOMRIGHT", 0, -5)
	Debuffs:SetAttribute("filter", "HARMFUL")
	Debuffs:Show()

	Movers:RegisterFrame(Debuffs, "Debuffs")
end
