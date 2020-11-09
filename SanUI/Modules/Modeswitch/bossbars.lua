local S = unpack(SanUI)

S.switchBossBars = function(profile)

  --[[Coloring here
  for i = 1,4 do

    if profile == "Suran" then
      local boss = _G["oUF_Boss"..i]

      if boss then
        boss.Health:SetStatusBarColor(178/255, 34/255, 34/255, 1)
        boss.Health.bg:SetBackdropBorderColor(.1,.1,.1,0)

        boss.Power:SetStatusBarColor(165/255, 73/255, 23/255, 1)
        boss.Power.bg:SetBackdropBorderColor(.1,.1,.1,0)

        boss.Castbar.bg:SetBackdropBorderColor(.1,.1,.1,0)

        boss.AltPowerBar.bg:SetBackdropBorderColor(.1,.1,.1,0)
        boss.AltPowerBar:SetStatusBarColor(178/255, 34/255, 34/255, 1)
      end

    elseif profile == "SanHeal" or profile == "SanChicken" then
      local boss = _G["oUF_Boss"..i]

      if boss then 
        boss.Health:SetStatusBarColor(.1,.1,.1,1)
        boss.Health.bg:SetAlpha(1)
        boss.Health.bg:CreateBackdrop()
        boss.Health.bg:SetBackdropColor(.2,.2,.2)

        boss.Power:SetStatusBarColor(.1,.1,.1, 1)
        boss.Power.bg:SetAlpha(1)
        boss.Power.bg:CreateBackdrop()
        boss.Power.bg.Backdrop:SetBackdropColor(.2,.2,.2)

        boss.Castbar.bg:CreateBackdrop()

        boss.AltPowerBar.bg:SetAlpha(1)
        boss.AltPowerBar.bg:CreateBackdrop()
        boss.AltPowerBar.bg.Backdrop:SetBackdropColor(.1,.1,.1)
        boss.AltPowerBar:SetStatusBarColor(0.1,0.1,0.1,1)
      end
    end
  end
  ]]

  --Placement here
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
