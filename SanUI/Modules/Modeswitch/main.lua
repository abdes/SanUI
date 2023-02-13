local addonName, addon = ...
local S = unpack(addon)

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
	
  S.switchGCD(S["Modes"][mode]["gcd"])

	-- Need to call this even if no profile is set
	--if S["Modes"][mode]["classpower"] and IsAddOnLoaded("oUF_Hank") then
	if IsAddOnLoaded("oUF_Hank") then
		S.switchClassPower(S["Modes"][mode]["classpower"])
	else
		print("OUF_Hank is not loaded. Cannot load ClassPower profile!")
	end
	if S["Modes"][mode]["bossbars"] then
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
	end
	
	SanUIdb["Mode"] = mode
end
