local S,C = unpack(SanUI)

local RaidButtonSize = 28

local Scale = Tukui[1].Toolkit.Functions.Scale

local function changeAuras(frame,auras)
	local nat = frame.NotAuraTrack
	
	if not nat then
		print("Frame "..frame:GetName().." not watched by NotAuraTrack, can't change Auras!")
		return
	end
	
	if not nat.nonwatched then  nat.nonwatched =  {} end
		
	if not auras then
		for k,v in pairs(nat.nonwatched) do
			nat.Icons[k] = v
			nat.nonwatched[k] = nil
		end

	else
		local icons = nat.Icons
		if icons then
			for _,spellID in ipairs(auras) do
				if icons[spellID] ~= nil then 
					nat.nonwatched[spellID] = icons[spellID]
					icons[spellID] = nil
					nat.nonwatched[spellID]:Hide()
				end
			end
		end
	end
end

local function SetAttributeByProxy(frame,name, value)
    if name == "point" or name == "columnAnchorPoint" or name == "unitsPerColumn" then
        local count = 1
        local uframe = frame:GetAttribute("child" .. count)
        while uframe do
            uframe:ClearAllPoints()
            count = count + 1
            uframe = frame:GetAttribute("child" .. count)
        end
    end
    frame:SetAttribute(name, value)
end

local function showRaidPets(show)
	local pets = SanUIRaidPets
	
	if not pets then
		print("No Pet frames, can't show/hide them")
		return
	end
	
	-- show == false mean hide, show = true means show up
	pets:SetAttribute("showSolo",show)
	pets:SetAttribute("showParty",show)
	pets:SetAttribute("showRaid",show)
	pets:SetAttribute("showPlayer",show)
end

S.ModRaidButton = function(button,unit,size,auras)
	button:SetHeight(Scale(size))
	button.Health:SetHeight(Scale(size))
	button.Health.bg:SetHeight(Scale(size))

	if button.HealPrediction then
		button.HealPrediction.myBar:SetHeight(Scale(size))
		button.HealPrediction.otherBar:SetHeight(Scale(size))
		button.HealPrediction.absorbBar:SetHeight(Scale(size))
	end
	
	changeAuras(button,auras)
end

local function changeRaidButtons(size,auras)
	local i = 1
	
	local frame = _G["SanUIRaidUnitButton1"]
	while frame do
		S.ModRaidButton(frame,"raid"..i,size,auras)
		i = i+1
		frame =  _G["SanUIRaidUnitButton" .. i]
	end
	
	frame = _G["SanUIRaidPetsUnitButton1"]
	while frame do
		S.ModRaidButton(frame,"raidpet"..i,size,auras)
		i = i+1
		frame =  _G["SanUIRaidUnitButton" .. i]
	end
	
end

local function changeRaid(numRaid) end

local dealWith40 = CreateFrame("Frame")
dealWith40:RegisterEvent("PLAYER_ENTERING_WORLD")
dealWith40:RegisterEvent("RAID_ROSTER_UPDATE")
dealWith40:RegisterEvent("GROUP_ROSTER_UPDATE")
dealWith40:RegisterEvent("PARTY_LEADER_CHANGED")
--dealWith40:RegisterEvent("PARTY_MEMBERS_CHANGED")
dealWith40:RegisterEvent("ZONE_CHANGED_NEW_AREA")

dealWith40:SetScript("OnEvent", function(self)
	if InCombatLockdown() then
		dealWith40:RegisterEvent("PLAYER_REGEN_ENABLED")
	else
		dealWith40:UnregisterEvent("PLAYER_REGEN_ENABLED")
		
		local inInstance, instanceType = IsInInstance()
		local _, _, _, _, maxPlayers, _, _ = GetInstanceInfo()
		local curPlayers = GetNumGroupMembers()
		
		if not inInstance or not maxPlayers then
			changeRaid(curPlayers)
		else
			changeRaid(min(maxPlayers,curPlayers))
		end
	end
end)



S.switchRaidFrames = function(profile)
	local frame = SanUIRaid
	local pets = SanUIRaidPets
	
	if not frame or not pets then
		print("Don't have Raid or Pet frames, can't switch to profile "..profile.."!")
		return
	end
	
	frame:ClearAllPoints()
	
	if profile == "SanHeal" then
		SetAttributeByProxy(frame,"columnAnchorPoint","TOP")
		frame:SetPoint("TOP",UIParent,"CENTER",0,-170)
		frame:SetAttribute("maxColumns", 8)
		SetAttributeByProxy(frame,"unitsPerColumn", 5)
		SetAttributeByProxy(frame,"point","LEFT")
		
		SetAttributeByProxy(pets,"columnAnchorPoint","TOP")
		pets:SetPoint("TOPLEFT",frame,"BOTTOMLEFT",0,-Scale(4))
		pets:SetAttribute("maxColumns", 8)
		SetAttributeByProxy(pets,"unitsPerColumn", 5)
		SetAttributeByProxy(pets,"point","LEFT")
			
		changeRaid = function(numraid) --executed when raid roster etc changes, supposed to deal with raid size 40
			if numraid > 25 then
				showRaidPets(false)
				frame:SetAttribute("initial-height", 24)
				pets:SetAttribute("initial-height", 24)
				changeRaidButtons(24)
			elseif  numraid < 26 then
				showRaidPets(true)
				frame:SetAttribute("initial-height", 28)
				pets:SetAttribute("initial-height", 28)
				changeRaidButtons(28)
			end
		end
		
		dealWith40:GetScript("OnEvent")()	
		
	elseif profile == "SanChicken" then
		SetAttributeByProxy(frame,"columnAnchorPoint","LEFT")
		frame:SetPoint("LEFT",UIParent,"LEFT",10,-10)
		frame:SetAttribute("maxColumns", 1)
		SetAttributeByProxy(frame,"unitsPerColumn", 25)
		SetAttributeByProxy(frame,"point","TOP")
		
		showRaidPets(false)
		
		changeRaid = function(numraid) --executed when raid roster etc changes, supposed to deal with raid size 40
			if numraid > 25 then
				frame:SetAttribute("maxColumns",2)
				SetAttributeByProxy(frame,"unitsPerColumn",20)
				frame:SetAttribute("initial-height", 23)
				pets:SetAttribute("initial-height", 23)
				changeRaidButtons(23,{18562})
			elseif numraid < 26 then
				frame:SetAttribute("maxColumns",1)
				SetAttributeByProxy(frame,"unitsPerColumn", 25)
				SetAttributeByProxy(frame,"point","TOP")
				frame:SetAttribute("initial-height", 23)
				pets:SetAttribute("initial-height", 23)
				changeRaidButtons(23,{18562})
			end
		end
		
		dealWith40:GetScript("OnEvent")()	

		--S.swiftmend_shown = false
	end
end

