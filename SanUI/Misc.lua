-- Contains misc stuff that does not fit anywhere else:
--
-- Glue code that involves more than 1 addon
-- Modifications of savedvars (event ADDON_LOADED)
-- Things to execute on PLAYER_ENTERING_WORLD
local addonName, addon = ...
local S,C = unpack(addon)

local sanui_version = GetAddOnMetadata(addonName, "Version")

local f = CreateFrame("frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("ADDON_LOADED")

local sharedMedia = LibStub("LibSharedMedia-3.0")
sharedMedia:Register(sharedMedia.MediaType.STATUSBAR, "Tukui_Blank_Texture", [[Interface\AddOns\Tukui\Medias\Textures\Others\Blank]])

function S.misc(self,event,arg)
	if (event == "PLAYER_ENTERING_WORLD") then
		if WorldStateAlwaysUpFrame then
			WorldStateAlwaysUpFrame:ClearAllPoints()
			WorldStateAlwaysUpFrame:SetPoint("TOP", UIParent, "TOP", 0, -50)
		end
		
		S.disableBlizzard()

		S.modCoolLine(event)
			
		-- Most important call here
		S.switch2Mode(SanUIdb["Mode"])
		
		-- need to do those things only once
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		
		-- seems we can't register before pew, will error out on
		-- PLAYER_TALENT_UPDATE
		f:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		f:RegisterEvent("PLAYER_TALENT_UPDATE")
	end
		
	if(event == "ADDON_LOADED") then
		local name = arg
		
		if name == "SanUI" then 			
			if  not SanUIdb then
				SanUIdb = {}
			end
			
			if not SanUIdb["Mode"] then
			--at this point we know this exists, profiles was loaded and makes sure of it
				if S["profiles"][S.MyName] then
					SanUIdb["Mode"] = S["profiles"][S.MyName]["modes"][1] 
				else
					SanUIdb["Mode"] = S["profiles"]["DEFAULT"]["modes"][1]
				end
			end	
			
			if not SanUIGlobaldb then
				SanUIGlobaldb = {}
			end
		end	
	end
	
end

f:SetScript("OnEvent",S.misc)

local main = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
main.name = addonName

main:Hide()

function main.OnShow(self)
    local title = self:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText(addonName)

	local v = self:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
	v:SetWidth(75)
	v:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -6)
	v:SetJustifyH("LEFT")
	v:SetText(sanui_version)

	self:SetScript("OnShow", nil)
end

main:SetScript("OnShow", main.OnShow)
