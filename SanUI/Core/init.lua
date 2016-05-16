--------------------------------------------------
-- How to Import Engine
--------------------------------------------------

-- Add the line below at the top of every created .lua file:	
-- local S, C, L, G = unpack(SanUI)


--we just import the full Tukui, and modify it to our hearts desire
local addon, engine = ...
engine[1] = Tukui[1] -- S, functions, constants, variables
engine[2] = Tukui[2] -- C, config
engine[3] = Tukui[3] -- L, localization
engine[4] = Tukui[4] -- G, globals (Optionnal)

SanUI = engine -- Allow other addons to use Engine

-- additional stuff
SanUI[1].myname = UnitName("player")
SanUI[1].MyName = UnitName("player")

SanUI[1].reload_checks = {} -- values are functions that return true if a mode 
			    -- reload is neccessary
