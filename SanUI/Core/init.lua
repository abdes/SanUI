--we just import the full Tukui, and modify it to our hearts desire
local addonName, addon = ...
addon[1] = Tukui[1] -- S, functions, constants, variables
addon[2] = Tukui[2] -- C, config
addon[3] = Tukui[3] -- L, localization
addon[4] = Tukui[4] -- G, globals (Optionnal)

-- additional stuff
addon[1].myname = UnitName("player")
addon[1].MyName = UnitName("player")
				
addon.oUF = Tukui.oUF

SanUI = addon -- Allow other addons to use SanUI

local Scale = addon[1].Toolkit.Functions.Scale
addon[1].scale1 = Scale(1)
addon[1].scale2 = Scale(2)
addon[1].scale4 = Scale(4)
addon[1].scale6 = Scale(6)
addon[1].scale10 = Scale(10)