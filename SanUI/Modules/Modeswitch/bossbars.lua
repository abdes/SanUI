local addonName, addon = ...
local S = unpack(addon)

S.switchBossBars = function(profile)

  for i = 1,4 do
    local boss = _G["oUF_Boss"..i]
    boss:ClearAllPoints()
    boss.Castbar:ClearAllPoints()
  end

  if profile == "SanChicken" then
    oUF_Boss1:SetPoint("LEFT",oUF_target,"LEFT",0,150)
    oUF_Boss2:SetPoint("LEFT",oUF_Boss1,"LEFT",0,50)
    oUF_Boss3:SetPoint("LEFT",oUF_Boss2,"LEFT",0,50)
    oUF_Boss4:SetPoint("LEFT",oUF_Boss3,"LEFT",0,50)

    oUF_Boss1.Castbar:SetPoint("LEFT",oUF_Boss1,"RIGHT",8,0)
    oUF_Boss2.Castbar:SetPoint("LEFT",oUF_Boss2,"RIGHT",8,0)
    oUF_Boss3.Castbar:SetPoint("LEFT",oUF_Boss3,"RIGHT",8,0)
    oUF_Boss4.Castbar:SetPoint("LEFT",oUF_Boss4,"RIGHT",8,0)

  else
    oUF_Boss1:SetPoint("TOPRIGHT",UIParent,"TOP",-5,-5)
    oUF_Boss2:SetPoint("LEFT", oUF_Boss1, "RIGHT", 20, 0)
    oUF_Boss3:SetPoint("RIGHT", oUF_Boss1, "LEFT",-20,0)
    oUF_Boss4:SetPoint("LEFT", oUF_Boss2, "RIGHT", 20,0)

    oUF_Boss1.Castbar:SetPoint("TOP",oUF_Boss1.Power,"BOTTOM",0,2)
    oUF_Boss2.Castbar:SetPoint("TOP",oUF_Boss2.Power,"BOTTOM",0,2)
    oUF_Boss3.Castbar:SetPoint("TOP",oUF_Boss3.Power,"BOTTOM",0,2)
    oUF_Boss4.Castbar:SetPoint("TOP",oUF_Boss4.Power,"BOTTOM",0,2)
  end

end
