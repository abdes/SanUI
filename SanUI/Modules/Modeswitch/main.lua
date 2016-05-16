local S = unpack(SanUI)

-- Main modeswitch function of SanUI
-- Checks: * S["Modes"][mode] exists
--         * The appropriate addon is loaded

S.switch2Mode = function(mode)

	if InCombatLockdown() then
		print("Can't change modes in combat!")
		return
	end
	
	if not S or not S["Modes"] or not S["Modes"][mode] then
		print("Something wrong, can't change to mode "..mode.."!")
		if not S then print("not S") end
		if not S["Modes"] then print("not S.Modes") end
		if not S["Modes"][mode] then print("last") end
	end

	--print("Loading SanUI mode "..mode..".")
	
	if S["Modes"][mode]["SimpleAuraFilter"] and IsAddOnLoaded("SimpleAuraFilter") then
		SimpleAuraFilter.db:SetProfile(S["Modes"][mode]["SimpleAuraFilter"])
	else
		print("Either you didn't set the SimpleAuraFilter profile for mode "..mode.." or SimpleAuraFilter is not loaded. Either way, cannot load SimpleAuraFilter profile!")
	end
	
	if S["Modes"][mode]["Skada"] and IsAddOnLoaded("Skada") then
		Skada.db:SetProfile(S["Modes"][mode]["Skada"])
	else
		print("Either you didn't set the Skada profile for mode "..mode.." or Skada is not loaded. Either way, cannot load Skada profile!")
	end	
	
	if S["Modes"][mode]["castbar"] and IsAddOnLoaded("oUF_Hank") then
		S.switchCastbar(S["Modes"][mode]["castbar"])
	else
		print("Either you didn't set the castbar profile for mode "..mode.." or oUF_Hank is not loaded. Either way, cannot load castbar profile!")
	end	
	
	if S["Modes"][mode]["raidframes"] then
		S.switchRaidFrames(S["Modes"][mode]["raidframes"])
	end
	
	if S["Modes"][mode]["powerbar"] and IsAddOnLoaded("oUF_Hank") then
		S.switchPowerbar(S["Modes"][mode]["powerbar"])
	else
		print("Either you didn't set the powerbar profile for mode "..mode.." or oUF_Hank is not loaded. Either way, cannot load powerbar profile!")
	end	
	
	if S["Modes"][mode]["eclipsebar"] then
		S.switchEclipsebar(S["Modes"][mode]["eclipsebar"])
	else
		print("No eclipsebar profile for mode "..mode.."! Can't Switch!")
	end
	
	-- if S["Modes"][mode]["Filger"] and IsAddOnLoaded("Tukui_Filger") then
		-- S.switchFilger(S["Modes"][mode]["Filger"])
	-- else
		-- print("Either you didn't set the filger profile for mode "..mode.." or Tukui_Filger is not loaded. Either way, cannot load BossBars profile!")
	-- end
	
	if S["Modes"][mode]["gcd"] and IsAddOnLoaded("oUF_GCD") then
		S.switchGCD(S["Modes"][mode]["gcd"])
	else
		print("Either you didn't set the bcd profile for mode "..mode.." or oUF_GCD is not loaded. Either way, cannot load BossBars profile!")
	end
	
	
	if S["Modes"][mode]["bossbars"] and IsAddOnLoaded("oUF_BossBars") then
		S.switchBossBars(S["Modes"][mode]["bossbars"])
	else
		print("Either you didn't set the bossbars profile for mode "..mode.." or oUF_BossBars is not loaded. Either way, cannot load BossBars profile!")
	end
	
	if S["Modes"][mode]["coolline"] and IsAddOnLoaded("CoolLine") then
		S.switchCoolLine(S["Modes"][mode]["coolline"])
	else
		print("Either you didn't set the cooline profile for mode ".. mode .." or CoolLine is not loaded. Either way, cannot load CoolLine profile!")
	end
	
	if S["Modes"][mode]["ActionButtons"] then
		S.switchActionButtons(S["Modes"][mode]["ActionButtons"])
	else
		print("No ActionButtons profile for mode "..mode.."! Can't Switch!")
	end
	
	if S["Modes"][mode]["DBM"] and IsAddOnLoaded("DBM-Core") then 
		DBM:ApplyProfile(S["Modes"][mode]["DBM"])
	else
		print("No DBM profile for mode "..mode.."! Can't Switch!")
	end
	
	SanUIdb["Mode"] = mode
end

S.reload_needed = function(event)
	
	for k, f in pairs(S.reload_checks) do
		if f(event) then
			return true
		end
	end

	return false

end
