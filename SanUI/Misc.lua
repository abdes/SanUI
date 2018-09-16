-- Contains misc stuff that does not fit anywhere else:
--
-- Glue code that involves more than 1 addon
-- Modifications of savedvars (event ADDON_LOADED)
-- Things to execute on PLAYER_ENTERING_WORLD

local S,C = unpack(SanUI)
local f = CreateFrame("frame")
local sharedMedia = LibStub("LibSharedMedia-3.0")
sharedMedia:Register(sharedMedia.MediaType.STATUSBAR, "Tukui_Blank_Texture", [[Interface\AddOns\Tukui\Medias\Textures\Others\Blank]])

function S.misc(self,event,arg)
	if (event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_TALENT_UPDATE") then
		if S.reload_needed(event) then
			S.switch2Mode(SanUIdb["Mode"])
		end
	end
	
	if (event == "PLAYER_ENTERING_WORLD") then
		BuffFrame:ClearAllPoints()
		BuffFrame:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT",-5,-5)
		
		hooksecurefunc("UIParent_UpdateTopFramePositions", function()
			BuffFrame:ClearAllPoints()
			BuffFrame:SetPoint("TOPRIGHT",UIParent,"TOPRIGHT",-5,-5)
		end)
		
		if WorldStateAlwaysUpFrame then
			WorldStateAlwaysUpFrame:ClearAllPoints()
			WorldStateAlwaysUpFrame:SetPoint("TOP", UIParent, "TOP", 0, -50)
		end

		S.disableBlizzard()
	
		S.modCoolLine(event)
		
		S.CreateUtilities(nil,event,"SanUI")
			
		-- Most important call here
		S.switch2Mode(SanUIdb["Mode"])
		
		-- need to do those things only once
		self:UnregisterEvent("PLAYER_ENTERING_WORLD")
		
		-- seems we can't register before pew, will error out on
		-- PLAYER_TALENT_UPDATE
		f:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		f:RegisterEvent("PLAYER_TALENT_UPDATE")
		
		if IsAddOnLoaded("Details") then
			S.modDetails(event)
		end
		
		--this should be last, it might induce a reloadui
		if not SanUIdb.addedWeakAuras and TukuiData[GetRealmName()][UnitName("Player")].InstallDone then
			S.weakAurasDialog()
		end
		
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
		end	
		
		-- Hide the annoying taling head frame, together with the audio and the
		-- chat lines
		if addon == "Blizzard_TalkingHeadUI" then
			hooksecurefunc("TalkingHeadFrame_PlayCurrent", function()
				--Query subzone text when the talkinghead plays
				zoneName = GetSubZoneText();
				--If we are not doing withered training, suppress the talkinghead
				if zoneName ~= "Temple of Fal'adora" and
				   zoneName ~= "Falanaar Tunnels" and
				   zoneName ~= "Shattered Locus" then
					TalkingHeadFrame_CloseImmediately()
				end
			end)
		end
	end
	
end

f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent",S.misc)