local S = unpack(SanUI)

S.weakAuras = {
	["displays"] = {
		["SanUI_ClearcastingFeral"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					16870, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Clearcasting", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\panther1.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["disjunctive"] = "all",
			["width"] = 40,
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_ClearcastingFeral",
			["zoom"] = 0.3,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["stickyDuration"] = false,
			["inverse"] = false,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -20,
		},
		["SanUI_Rake"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 50,
			["stacksFlags"] = "None",
			["yOffset"] = -11.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0.3,
			["spark"] = false,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					1822, -- [1]
				},
				["debuffType"] = "HARMFUL",
				["unit"] = "target",
				["names"] = {
					"Rake", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["parent"] = "SanUI_FeralBleeds",
			["height"] = 23.9999370574951,
			["timerFlags"] = "None",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["timer"] = true,
			["numTriggers"] = 1,
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "LEFT",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["sparkHidden"] = "NEVER",
			["barInFront"] = true,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["timerSize"] = 16,
			["id"] = "SanUI_Rake",
			["textFlags"] = "None",
			["frameStrata"] = 1,
			["width"] = 120,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["textSize"] = 12,
			["borderOffset"] = 5,
		},
		["SanUI_CenarionWard"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Urgent",
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 102351,
				["charges_operator"] = ">=",
				["type"] = "status",
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unevent"] = "auto",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Cenarion Ward",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["charges"] = "2",
				["showOn"] = "showOnReady",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "SCT TwCenMT",
			["xOffset"] = -400.426605224609,
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 102351,
			},
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["id"] = "SanUI_CenarionWard",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["icon"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "spin",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_RakeRatio"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -90,
			["stacksFlags"] = "None",
			["yOffset"] = -217,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.725490196078431, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "2002",
			["load"] = {
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_zone"] = false,
				["name"] = "",
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = true,
			["texture"] = "DF Statusbar 3",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SnaUI_FeralBleedSnapshots",
			["customText"] = "function()\n    Rake_sDamage = Rake_sDamage or {}\n    if Rake_sDamage[UnitGUID(\"target\")] then\n        local RatioPercent = floor(WA_stats_RakeTick/Rake_sDamage[UnitGUID(\"target\")]*100 + .5)\n        if RatioPercent >= 110 then\n            return format(\"|cFF00FF00%d|r\", RatioPercent)\n        elseif RatioPercent <= 90 then\n            return format(\"|cFFFF0000%d|r\", RatioPercent)\n        else\n            return format(\"|cFF999999%d|r\", RatioPercent)\n        end\n    else return ''\n    end\nend",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "155722",
				["ownOnly"] = true,
				["names"] = {
					"Rake", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["custom_hide"] = "custom",
				["custom_type"] = "status",
				["type"] = "aura",
				["custom"] = "function()\n    if WA_rake then return true end\nend",
				["subeventSuffix"] = "_CAST_START",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["name"] = "Rake",
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["spellIds"] = {
				},
				["use_spellId"] = true,
				["check"] = "update",
				["name_operator"] = "==",
				["debuffType"] = "HARMFUL",
				["unit"] = "target",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 13.6533041000366,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["border"] = false,
			["borderEdge"] = "None",
			["icon"] = false,
			["borderSize"] = 16,
			["displayText"] = "%c",
			["icon_side"] = "RIGHT",
			["disjunctive"] = "all",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["do_custom"] = false,
					["custom"] = "\n\n",
				},
				["init"] = {
				},
			},
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_rake then return true end\nend",
			},
			["inverse"] = false,
			["justify"] = "CENTER",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_RakeRatio",
			["width"] = 6.82673835754395,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["timer"] = true,
			["displayTextRight"] = " ",
			["numTriggers"] = 1,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderOffset"] = 5,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_CakeOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Urgent",
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["itemName"] = 140793,
				["use_charges"] = false,
				["unit"] = "player",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["charges_operator"] = ">=",
				["charges"] = "2",
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["event"] = "Cooldown Progress (Item)",
				["use_itemName"] = true,
				["names"] = {
				},
				["realSpellName"] = "Cleansing Wisp",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
				["spellName"] = 221992,
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["xOffset"] = -400.426605224609,
			["text1Font"] = "SCT TwCenMT",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 140793,
				["spellName"] = 221992,
			},
			["text2FontSize"] = 24,
			["numTriggers"] = 2,
			["text1"] = "%c",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["itemName"] = 140793,
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
						["itemName"] = 140793,
					},
				}, -- [1]
			},
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_CakeOffCD",
			["icon"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "spin",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["conditions"] = {
			},
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
		},
		["SanUI_GatheringClouds"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 29,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					215294, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Gathering Clouds", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["xOffset"] = -20,
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["inverse"] = false,
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "%s",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_GatheringClouds",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
		},
		["SanUI_OverloadedWithLight"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					223166, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Overloaded with Light", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = -20,
			["numTriggers"] = 1,
			["text2FontSize"] = 24,
			["disjunctive"] = "all",
			["text1"] = "%c",
			["width"] = 40,
			["frameStrata"] = 1,
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_OverloadedWithLight",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["glow"] = false,
			["untrigger"] = {
			},
			["inverse"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\panther1.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["SanUI_PredatorySwiftness"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = -20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					16974, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Predatory Swiftness", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[20] = true,
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "2002",
			["icon"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%s",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_PredatorySwiftness",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["untrigger"] = {
			},
			["desaturate"] = false,
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["cooldownTextEnabled"] = true,
			["parent"] = "SanUI_Buffs",
			["cooldown"] = true,
			["disjunctive"] = "all",
		},
		["PhoGuild - Odyn Brand Green Up"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "231346",
				["unevent"] = "auto",
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "RANGE",
				["event"] = "Conditions",
				["names"] = {
				},
				["unit"] = "player",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["name"] = "Runic Brand",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1958",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 1323038,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2"] = "%p",
			["id"] = "PhoGuild - Odyn Brand Green Up",
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "229583",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "Branded",
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "227500",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "Branded",
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Runic Brand", -- [1]
						},
						["spellIds"] = {
							231344, -- [1]
						},
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_sound"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:PhoGuild - Odyn Brand Green Up",
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
			["parent"] = "SanUI_Trial",
			["disjunctive"] = "any",
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_SurvivalInstincts"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					61336, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Survival Instincts", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bear_polar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "SanUI_Buffs",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_SurvivalInstincts",
			["untrigger"] = {
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["glow"] = false,
			["text1Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_ThrashCat"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 50,
			["stacksFlags"] = "None",
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0.3,
			["spark"] = false,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
					106830, -- [1]
				},
				["debuffType"] = "HARMFUL",
				["names"] = {
					"Thrash", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["timer"] = true,
			["timerFlags"] = "None",
			["borderOffset"] = 5,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "LEFT",
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "SanUI_FeralBleeds",
			["sparkHeight"] = 30,
			["id"] = "SanUI_ThrashCat",
			["timerSize"] = 16,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkOffsetX"] = 0,
			["sparkHidden"] = "NEVER",
			["textFlags"] = "None",
			["frameStrata"] = 1,
			["width"] = 120,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["height"] = 23.9999370574951,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["textSize"] = 12,
			["icon"] = true,
		},
		["SanUI_SotF"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -20,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					158478, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Soul of the Forest", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_Buffs",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_SotF",
			["yOffset"] = 0,
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["cooldownTextEnabled"] = true,
			["disjunctive"] = "all",
			["cooldown"] = true,
			["icon"] = true,
		},
		["PhoGuild - Odyn Brand Blue Up"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_sound"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:PhoGuild - Odyn Brand Blue Up",
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "227499",
				["unevent"] = "auto",
				["custom_hide"] = "timed",
				["names"] = {
				},
				["event"] = "Conditions",
				["use_unit"] = true,
				["unit"] = "player",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["name"] = "Branded",
				["subeventSuffix"] = "_CAST_START",
				["custom_type"] = "event",
				["subeventPrefix"] = "RANGE",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1958",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 1323038,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2"] = "%p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "229582",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["fullscan"] = true,
						["name"] = "Branded",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "231345",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
						["use_spellId"] = true,
						["name"] = "Runic Brand",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["spellIds"] = {
							231344, -- [1]
						},
						["names"] = {
							"Runic Brand", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "PhoGuild - Odyn Brand Blue Up",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
			["parent"] = "SanUI_Trial",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["SanUI_FeralBleeds"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_Rake", -- [1]
				"SanUI_Rip", -- [2]
				"SanUI_ThrashCat", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["expanded"] = false,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_FeralBleeds",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -205,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = -133,
		},
		["Resto Druid Stat Weights"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Dr - R - RDSW Core", -- [1]
				"Dr - R - RDSW Display - Current", -- [2]
				"Dr - R - RDSW Display - Total", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 500,
			["border"] = false,
			["yOffset"] = 0,
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = 0,
			["expanded"] = false,
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["untrigger"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Resto Druid Stat Weights",
			["additional_triggers"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["trigger"] = {
				["subeventPrefix"] = "SPELL",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["unit"] = "player",
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["Dr - R - RDSW Display - Current"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -15.62646484375,
			["stacksFlags"] = "None",
			["yOffset"] = -289.280502319336,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "Armory",
			["textFont"] = "Vixar",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["disjunctive"] = "any",
			["customText"] = "function()\n    return string.format(\"RDSW: Current\"\n        .. \"\\n   INT: %-.3f\"\n        .. \"\\n   CRT: %-.3f\"\n        .. \"\\n   HST: %-.3f\"\n        .. \"\\n   MST: %-.3f\"\n        .. \"\\n   VRS: %-.3f\",\n        LEAFUI_CUR_SP,\n        LEAFUI_CUR_CRT, \n        LEAFUI_CUR_HST, \n        LEAFUI_CUR_MST, \n    LEAFUI_CUR_VRS)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["parent"] = "Resto Druid Stat Weights",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Current\"\n        .. \"\\n   INT: %-.3f\"\n        .. \"\\n   CRT: %-.3f\"\n        .. \"\\n   HST: %-.3f\"\n        .. \"\\n   MST: %-.3f\"\n        .. \"\\n   VRS: %-.3f\",\n        LEAFUI_CUR_SP,\n        LEAFUI_CUR_CRT, \n        LEAFUI_CUR_HST, \n        LEAFUI_CUR_MST, \n    LEAFUI_CUR_VRS))\n    return true\nend",
				["subeventSuffix"] = "_CAST_START",
				["check"] = "event",
				["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
				["spellIds"] = {
				},
				["custom_hide"] = "custom",
			},
			["text"] = true,
			["untrigger"] = {
			},
			["stickyDuration"] = false,
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%c",
			["inverse"] = false,
			["timer"] = false,
			["timerFlags"] = "None",
			["borderOffset"] = 5,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["sparkWidth"] = 10,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "LEAFUI_CUR_SP = LEAFUI_CUR_SP or 0\nLEAFUI_CUR_MST = LEAFUI_CUR_MST or 0\nLEAFUI_CUR_HST = LEAFUI_CUR_HST or 0\nLEAFUI_CUR_CRT = LEAFUI_CUR_CRT or 0\nLEAFUI_CUR_VRS = LEAFUI_CUR_VRS or 0\n\n",
				},
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["id"] = "Dr - R - RDSW Display - Current",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%p",
			["justify"] = "RIGHT",
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["icon"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["displayText"] = "%c",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["use_unit"] = true,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Conditions",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["customTextUpdate"] = "event",
			["frameStrata"] = 3,
			["width"] = 6.82662296295166,
			["spark"] = false,
			["height"] = 11.946647644043,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderInset"] = 11,
			["stacksFont"] = "Vixar",
		},
		["SanUI_BerserkOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 106951,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 106951,
				["charges_operator"] = ">=",
				["charges"] = "2",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Berserk",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["unevent"] = "auto",
				["use_unit"] = true,
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["xOffset"] = -400.426605224609,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["yOffset"] = 170.666564941406,
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_Urgent",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["id"] = "SanUI_BerserkOffCD",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["width"] = 40,
			["stickyDuration"] = false,
			["glow"] = false,
			["numTriggers"] = 1,
			["text1Font"] = "SCT TwCenMT",
			["text1FontFlags"] = "OUTLINE",
			["conditions"] = {
			},
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_ConctractOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 140807,
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 221992,
				["custom_hide"] = "timed",
				["charges_operator"] = ">=",
				["charges"] = "2",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["event"] = "Cooldown Progress (Item)",
				["names"] = {
				},
				["realSpellName"] = "Cleansing Wisp",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["use_itemName"] = true,
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 140807,
				["spellName"] = 221992,
			},
			["text1Font"] = "SCT TwCenMT",
			["parent"] = "SanUI_Urgent",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["xOffset"] = -400.426605224609,
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["itemName"] = 140807,
						["use_itemName"] = true,
					},
					["untrigger"] = {
						["itemName"] = 140807,
					},
				}, -- [1]
			},
			["width"] = 40,
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_ConctractOffCD",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["conditions"] = {
			},
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
		},
		["PhoGuild - Odyn Brand Orange Up"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_sound"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:PhoGuild - Odyn Brand Orange Up",
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "227491",
				["unevent"] = "auto",
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "RANGE",
				["event"] = "Conditions",
				["names"] = {
				},
				["unit"] = "player",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["name"] = "Branded",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1958",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 1323038,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2"] = "%p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "229580",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["unit"] = "player",
						["names"] = {
						},
						["name"] = "Branded",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "231342",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["use_spellId"] = true,
						["name"] = "Runic Brand",
						["names"] = {
							"Runic Brand", -- [1]
						},
						["fullscan"] = true,
						["spellIds"] = {
							231344, -- [1]
						},
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "PhoGuild - Odyn Brand Orange Up",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
			["parent"] = "SanUI_Trial",
			["disjunctive"] = "any",
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["SanUI_Barkskin"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					22812, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Barkskin", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bear_polar.ogg",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Barkskin",
			["zoom"] = 0.3,
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["glow"] = false,
			["numTriggers"] = 1,
			["xOffset"] = -20,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["Illusionary Night 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "10.5",
				["event"] = "Health",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["names"] = {
					"Illusionary Night", -- [1]
				},
				["name"] = "",
				["spellIds"] = {
					206311, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1862",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 607852,
			["text2Containment"] = "INSIDE",
			["icon"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2FontSize"] = 24,
			["width"] = 80,
			["text1"] = "Time left",
			["text2"] = "%p",
			["additional_triggers"] = {
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["glow"] = false,
			["id"] = "Illusionary Night 3",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "THICKOUTLINE",
			["text1Font"] = "Accidental Presidency",
			["inverse"] = false,
			["parent"] = "SanUI_NH",
			["yOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["SanUI_Innervate"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					29166, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Innervate", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["disjunctive"] = "all",
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Innervate",
			["zoom"] = 0.3,
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["inverse"] = false,
			["stickyDuration"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = -20,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["SanUI_Berserk"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SanUI_FeralRota",
			["customText"] = "return \"\"",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					106951, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
				["names"] = {
					"Berserk", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["timer"] = true,
			["timerFlags"] = "None",
			["icon"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["sparkRotation"] = 0,
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["id"] = "SanUI_Berserk",
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["textSize"] = 16,
			["height"] = 23.9999370574951,
		},
		["Dr - R - RDSW Display - Total"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 152.160278320313,
			["stacksFlags"] = "None",
			["yOffset"] = -287.573974609375,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_realm"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "Armory",
			["textFont"] = "Vixar",
			["stacksFont"] = "Vixar",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "function()\n    return string.format(\"RDSW: Total\"\n        .. \"\\n   INT: %-.3f\"\n        .. \"\\n   CRT: %-.3f\"\n        .. \"\\n   HST: %-.3f\"\n        .. \"\\n   MST: %-.3f\"\n        .. \"\\n   VRS: %-.3f\",\n        LEAFUI_TTL_SP,\n        LEAFUI_TTL_CRT,\n        LEAFUI_TTL_HST, \n        LEAFUI_TTL_MST, \n    LEAFUI_TTL_VRS)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["parent"] = "Resto Druid Stat Weights",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
				["subeventSuffix"] = "_CAST_START",
				["check"] = "event",
				["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Total\"\n        .. \"\\n   INT: %-.3f\"\n        .. \"\\n   CRT: %-.3f\"\n        .. \"\\n   HST: %-.3f\"\n        .. \"\\n   MST: %-.3f\"\n        .. \"\\n   VRS: %-.3f\",\n        LEAFUI_TTL_SP,\n        LEAFUI_TTL_CRT,\n        LEAFUI_TTL_HST, \n        LEAFUI_TTL_MST, \n    LEAFUI_TTL_VRS))\n    return true\nend",
				["spellIds"] = {
				},
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["untrigger"] = {
			},
			["stickyDuration"] = false,
			["sparkRotation"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextLeft"] = "%c",
			["numTriggers"] = 2,
			["height"] = 11.946647644043,
			["timerFlags"] = "None",
			["timer"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["customTextUpdate"] = "event",
			["textFlags"] = "None",
			["border"] = false,
			["borderEdge"] = "None",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Conditions",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["names"] = {
						},
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["borderSize"] = 16,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "RIGHT",
			["justify"] = "RIGHT",
			["timerSize"] = 12,
			["sparkHeight"] = 30,
			["displayText"] = "%c",
			["sparkOffsetX"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["icon"] = false,
			["id"] = "Dr - R - RDSW Display - Total",
			["borderOffset"] = 5,
			["frameStrata"] = 3,
			["width"] = 6.82662296295166,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "LEAFUI_TTL_SP = LEAFUI_TTL_SP or 0\nLEAFUI_TTL_MST = LEAFUI_TTL_MST or 0\nLEAFUI_TTL_HST = LEAFUI_TTL_HST or 0\nLEAFUI_TTL_CRT = LEAFUI_TTL_CRT or 0\nLEAFUI_TTL_VRS = LEAFUI_TTL_VRS or 0\n\n\n",
				},
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["spark"] = false,
		},
		["Feast of Blood 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "2",
				["event"] = "Combat Log",
				["use_unit"] = true,
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					208230, -- [1]
				},
				["name"] = "",
				["names"] = {
					"Feast of Blood", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["encounterid"] = "1862",
				["role"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 538039,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["parent"] = "SanUI_NH",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "THICKOUTLINE",
			["text1"] = "Bloods",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = false,
			["id"] = "Feast of Blood 3",
			["additional_triggers"] = {
			},
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["glow"] = false,
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "Accidental Presidency",
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["glow_frame"] = "WeakAuras:Artillery",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_Efflo"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["do_sound"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["remaining_operator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["remaining"] = "2",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["use_inverse"] = true,
				["event"] = "Totem",
				["totemType"] = 1,
				["totemName"] = 145205,
				["use_totemName"] = true,
				["spellIds"] = {
					189870, -- [1]
				},
				["use_remaining"] = false,
				["names"] = {
					"Power of the Archdruid", -- [1]
				},
				["unevent"] = "auto",
				["use_unit"] = true,
				["unit"] = "player",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 134222,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%c",
			["text2"] = "%p",
			["additional_triggers"] = {
			},
			["zoom"] = 0.3,
			["auto"] = false,
			["glow"] = false,
			["id"] = "SanUI_Efflo",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["inverse"] = true,
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "SanUI_Urgent",
		},
		["Dr - R - RDSW Core"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "  ",
			["customText"] = "function()\n    local mstTrunc\n    local hstTrunc\n    local crtTrunc\n    local vrsTrunc\n    --print(WA_SW_ENC_MST_HEAL, WA_SW_ENC_HST_HEAL, WA_SW_ENC_CRT_HEAL, WA_SW_ENC_VRS_HEAL)\n    if WA_SW_ENC_MST_HEAL > 1000000 then\n        mstTrunc = format(\"%.2fM\", WA_SW_ENC_MST_HEAL / 1000000)\n    elseif  WA_SW_ENC_MST_HEAL > 1000 then\n        mstTrunc = format(\"%.2fk\", WA_SW_ENC_MST_HEAL / 1000)\n    else mstTrunc = format(\"%.2f\", WA_SW_ENC_MST_HEAL) end\n    \n    if WA_SW_ENC_HST_HEAL > 1000000 then\n        hstTrunc = format(\"%.2fM\", WA_SW_ENC_HST_HEAL / 1000000)\n    elseif  WA_SW_ENC_HST_HEAL > 1000 then\n        hstTrunc = format(\"%.2fk\", WA_SW_ENC_HST_HEAL / 1000)\n    else hstTrunc = format(\"%.2f\", WA_SW_ENC_HST_HEAL) end\n    \n    if WA_SW_ENC_CRT_HEAL > 1000000 then\n        crtTrunc = format(\"%.2fM\", WA_SW_ENC_CRT_HEAL / 1000000)\n    elseif  WA_SW_ENC_CRT_HEAL > 1000 then\n        crtTrunc = format(\"%.2fk\", WA_SW_ENC_CRT_HEAL / 1000)\n    else crtTrunc = format(\"%.2f\", WA_SW_ENC_CRT_HEAL) end\n    \n    if WA_SW_ENC_VRS_HEAL > 1000000 then\n        vrsTrunc = format(\"%.2fM\", WA_SW_ENC_VRS_HEAL / 1000000)\n    elseif  WA_SW_ENC_VRS_HEAL > 1000 then\n        vrsTrunc = format(\"%.2fk\", WA_SW_ENC_VRS_HEAL / 1000)\n    else vrsTrunc = format(\"%.2f\", WA_SW_ENC_VRS_HEAL) end\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    return string.format(\"Encounter Only Stat Values:\"\n        .. \"\\n   MST: %.2f\"\n        .. \"\\n   HST: %.2f\"\n        .. \"\\n   CRT: %.2f\"\n        .. \"\\n   VRS: %.2f\"\n        .. \"\\n\\nHealing Done:\"\n        .. \"\\n   H-MST: %s\"\n        .. \"\\n   H-HST: %s\"\n        .. \"\\n   H-CRT: %s\"\n        .. \"\\n   H-VRS: %s\",\n        WA_SW_ENC_MST, \n        WA_SW_ENC_HST, \n        WA_SW_ENC_CRT, \n        WA_SW_ENC_VRS,  \n        mstTrunc,\n        hstTrunc,\n        crtTrunc,\n    vrsTrunc)\n    \n    \nend",
			["untrigger"] = {
				["custom"] = "function()\nreturn true\nend",
			},
			["regionType"] = "text",
			["parent"] = "Resto Druid Stat Weights",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "--Set Rating Per 1% value here.\naura_env.MSTRATINGCONV = 66666.66666\naura_env.HSTRATINGCONV = 37500\naura_env.CRTRATINGCONV = 40000\naura_env.VRSRATINGCONV = 47500\n--Set Regrowth Passive Bonus Crit here.\naura_env.REGROWTHBASECRT = 0.4\naura_env.LIVINGSEEDBASEPERCENT = 0.25\n\n--List of Hots for hCount()\naura_env.hotList = \n{774,       --Rejuvenation \n    155777, --Germination\n    33763,  --Lifebloom\n    8936,   --Regrowth\n    48438,  --Wild Growth\n    207386, --Spring Blossoms\n    200389, --Cultivation\n102352}     --Cenarion Ward\n\nLeaf_RDSW = Leaf_RDSW or {}\n\n\n\n--Setting spell names for all client versions.\naura_env.spells = {}\naura_env.spells.rejuvenation   = select(1, GetSpellInfo(774))\naura_env.spells.germination    = select(1, GetSpellInfo(155777))\naura_env.spells.lifebloom      = select(1, GetSpellInfo(33763))\naura_env.spells.regrowth       = select(1, GetSpellInfo(8936))\naura_env.spells.wildgrowth     = select(1, GetSpellInfo(48438))\naura_env.spells.springblossoms = select(1, GetSpellInfo(207386))\naura_env.spells.cultivation    = select(1, GetSpellInfo(200389))\naura_env.spells.cenarionward   = select(1, GetSpellInfo(102352))\naura_env.spells.efflorescence  = select(1, GetSpellInfo(145205))\naura_env.spells.livingseed     = select(1, GetSpellInfo(48500))\naura_env.spells.swiftmend      = select(1, GetSpellInfo(18562))\naura_env.spells.healingtouch   = select(1, GetSpellInfo(5185))\naura_env.spells.tranquility    = select(1, GetSpellInfo(740))\naura_env.spells.renewal        = select(1, GetSpellInfo(108238))\n\n\n--Initializing Combat Stats (updated on event)\n--[[\naura_env.mstRating = GetCombatRating(CR_MASTERY)\naura_env.hstRating = GetCombatRating(CR_HASTE_SPELL)\naura_env.crtRating = GetCombatRating(CR_CRIT_SPELL)\naura_env.vrsRating = GetCombatRating(CR_VERSATILITY_DAMAGE_DONE)\n\naura_env.bonusMst = aura_env.mstRating / aura_env.MSTRATINGCONV\naura_env.bonusHst = aura_env.hstRating / aura_env.HSTRATINGCONV\naura_env.bonusCrt = aura_env.crtRating / aura_env.CRTRATINGCONV \naura_env.bonusVrs = aura_env.vrsRating / aura_env.VRSRATINGCONV\naura_env.bonusSpellPower = aura_env.spellPower - select(3, UnitStat('player', 4))\n]]\n\naura_env.mstPerc = GetMasteryEffect() / 100--GetCombatRatingBonus(26) / 100 * hCount  \naura_env.hstPerc = UnitSpellHaste(\"player\") / 100\naura_env.crtPerc = GetCritChance() / 100\naura_env.vrsPerc = (GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)) / 100\naura_env.spellPower = GetSpellBonusDamage(4)\n\n\n\n\n--Initializing output values\nLEAFUI_CUR_SP = LEAFUI_CUR_SP or 0\nLEAFUI_CUR_MST = LEAFUI_CUR_MST or 0\nLEAFUI_CUR_HST = LEAFUI_CUR_HST or 0\nLEAFUI_CUR_CRT = LEAFUI_CUR_CRT or 0\nLEAFUI_CUR_VRS = LEAFUI_CUR_VRS or 0\nLEAFUI_CUR_SP_HEAL = LEAFUI_CUR_SP_HEAL or 0\nLEAFUI_CUR_MST_HEAL = LEAFUI_CUR_MST_HEAL or 0\nLEAFUI_CUR_HST_HEAL = LEAFUI_CUR_HST_HEAL or 0\nLEAFUI_CUR_CRT_HEAL = LEAFUI_CUR_CRT_HEAL or 0\nLEAFUI_CUR_VRS_HEAL = LEAFUI_CUR_VRS_HEAL or 0\nLEAFUI_TTL_SP = LEAFUI_TTL_SP or 0\nLEAFUI_TTL_MST = LEAFUI_TTL_MST or 0\nLEAFUI_TTL_HST = LEAFUI_TTL_HST or 0\nLEAFUI_TTL_CRT = LEAFUI_TTL_CRT or 0\nLEAFUI_TTL_VRS = LEAFUI_TTL_VRS or 0\nLEAFUI_TTL_SP_HEAL = LEAFUI_TTL_SP_HEAL or 0\nLEAFUI_TTL_MST_HEAL = LEAFUI_TTL_MST_HEAL or 0\nLEAFUI_TTL_HST_HEAL = LEAFUI_TTL_HST_HEAL or 0\nLEAFUI_TTL_CRT_HEAL = LEAFUI_TTL_CRT_HEAL or 0\nLEAFUI_TTL_VRS_HEAL = LEAFUI_TTL_VRS_HEAL or 0\nWeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n\n\n\n--Initialize flags\nif aura_env.encounter == nil then aura_env.encounter = false end\nif WA_RDSW_expire  == nil then WA_RDSW_expire = {} end\nif WA_RDSW_guid  == nil then WA_RDSW_guid = {} end\nif WA_RDSW_reduce  == nil then WA_RDSW_reduce = {} end\n\n\n\n\n--Set Race Based Characteristics\nif select(1, UnitRace(\"player\")) == \"Tauren\" then \n    aura_env.taurenRacial = 0.04\nelse aura_env.taurenRacial = 0\nend\n\naura_env.critBonusOutput = aura_env.critBonusOutput or 0\nif IsEquippedItem(\"Drape of Shame\") then aura_env.critBonusOutput = 0.1 end\n--Tauren: 7326\n--Worgen: 7328\n--NE    : 7325\n--Troll : 7324 \n-------------------\n\n\n\n\n\n\n",
				},
			},
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "Dr - R - RDSW Core",
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["additional_triggers"] = {
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["event"] = "Health",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED ENCOUNTER_START ENCOUNTER_END COMBAT_RATING_UPDATE UNIT_STATS PLAYER_ENTERING_WORLD",
				["custom"] = "--Author Manaleaf - Sargeras, leaf#1485 if you have any questions.\n\nfunction(e,...)\n    local timeStamp = GetTime()\n    \n    --Returns the current number of Player casted hots on the unit\n    local function hotCounter(name)\n        local destUnit\n        local grpCount = GetNumGroupMembers()\n        if UnitInRaid(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"raid\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"raid\" .. i\n                    break\n                end\n            end   \n        elseif UnitInParty(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"party\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"party\" .. i\n                    break\n                end\n            end \n        elseif UnitName(\"player\") == name then\n            \n            destUnit = \"player\" \n        end\n        if not destUnit then\n            return -1 --Failure Flag\n        end\n        local hCount = 0 \n        for k,v in ipairs(aura_env.hotList) do\n            local spellName = GetSpellInfo(v)\n            if UnitBuff(destUnit, spellName, nil, \"PLAYER\") then hCount = hCount + 1 end \n        end\n        return hCount\n    end\n    \n    --Inserts a row into a chain of tables.\n    local function insert(i, t1, t2, t3)\n        tinsert(WA_RDSW_expire, i, t1)\n        tinsert(WA_RDSW_guid, i, t2)\n        tinsert(WA_RDSW_reduce, i, t3)\n    end\n    \n    --Removes a row into a chain of tables.\n    local function removet(i, t1, t2, t3)\n        table.remove(t1, i)\n        table.remove(t2, i)\n        table.remove(t3, i)\n    end\n    \n    \n    --Function finds the lowest non-zero, non-negative value\n    --Still returns 0 if all arguements are 0.\n    local function maxButNotZero(n1, n2, n3, n4, n5)\n        local max = 1\n        if n1 ~= nil and n1 > max then max = n1 end\n        if n2 ~= nil and n2 > max then max = n2 end\n        if n3 ~= nil and n3 > max then max = n3 end\n        if n4 ~= nil and n4 > max then max = n4 end\n        if n5 ~= nil and n5 > max then max = n5 end\n        return max\n    end\n    \n    --[[\n    Returns 1 if player is inside instance and player is in a party.\n    Returns 2 if player is inside instance and player is in not in a party (is in a raid).\n    Returns 3 if player is not inside instance.\n    ]]\n    local function instanceCheck()\n        local instanced, instanceType = IsInInstance()\n        if instanced then\n            if instanceType == \"party\" then\n                return 1\n            else\n                return 2\n            end\n        end\n        return 0\n    end\n    \n    --Allocates stat values\n    local function allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal)\n        \n        --Total Healing Score Allocation\n        LEAFUI_TTL_SP_HEAL = LEAFUI_TTL_SP_HEAL + spHeal\n        LEAFUI_TTL_MST_HEAL = LEAFUI_TTL_MST_HEAL + mstHeal\n        LEAFUI_TTL_HST_HEAL = LEAFUI_TTL_HST_HEAL + hstHeal\n        LEAFUI_TTL_CRT_HEAL = LEAFUI_TTL_CRT_HEAL + crtHeal\n        LEAFUI_TTL_VRS_HEAL = LEAFUI_TTL_VRS_HEAL + vrsHeal\n        \n        --Current Encounter Healing Score Allocation\n        LEAFUI_CUR_SP_HEAL = LEAFUI_CUR_SP_HEAL + spHeal\n        LEAFUI_CUR_MST_HEAL = LEAFUI_CUR_MST_HEAL + mstHeal\n        LEAFUI_CUR_HST_HEAL = LEAFUI_CUR_HST_HEAL + hstHeal\n        LEAFUI_CUR_CRT_HEAL = LEAFUI_CUR_CRT_HEAL + crtHeal\n        LEAFUI_CUR_VRS_HEAL = LEAFUI_CUR_VRS_HEAL + vrsHeal\n        \n        --Stat Value Score Allocation\n        \n        local maxCurHeal = maxButNotZero(LEAFUI_CUR_SP_HEAL, LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL) \n        local maxTtlHeal = maxButNotZero(LEAFUI_TTL_SP_HEAL, LEAFUI_TTL_MST_HEAL, LEAFUI_TTL_HST_HEAL, LEAFUI_TTL_CRT_HEAL, LEAFUI_TTL_VRS_HEAL) \n        \n        LEAFUI_CUR_SP = LEAFUI_CUR_SP_HEAL / maxCurHeal\n        LEAFUI_CUR_MST = LEAFUI_CUR_MST_HEAL / maxCurHeal\n        LEAFUI_CUR_HST = LEAFUI_CUR_HST_HEAL / maxCurHeal\n        LEAFUI_CUR_CRT = LEAFUI_CUR_CRT_HEAL / maxCurHeal\n        LEAFUI_CUR_VRS = LEAFUI_CUR_VRS_HEAL / maxCurHeal    \n        \n        LEAFUI_TTL_SP =  LEAFUI_TTL_SP_HEAL / maxTtlHeal\n        LEAFUI_TTL_MST = LEAFUI_TTL_MST_HEAL / maxTtlHeal\n        LEAFUI_TTL_HST = LEAFUI_TTL_HST_HEAL / maxTtlHeal\n        LEAFUI_TTL_CRT = LEAFUI_TTL_CRT_HEAL / maxTtlHeal\n        LEAFUI_TTL_VRS = LEAFUI_TTL_VRS_HEAL / maxTtlHeal   \n        \n        --[[\n        print(\"------------------\")\n        print(LEAFUI_CUR_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        print(\"------------------\")\n        print(LEAFUI_TTL_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        ]]\n        \n    end\n    \n    \n    \n    --Calculates and Sets stat weight values\n    local function decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid)\n        \n        --Mastery Percentage\n        local hCount = hotCounter(name)\n        if hCount == -1 then return true end\n        local mstPerc = aura_env.mstPerc * hCount\n        \n        --Haste Percentage \n        local hstPerc --Only for Hots\n        if hstFlag then\n            hstPerc = aura_env.hstPerc\n        else \n            hstPerc = 0\n        end\n        \n        --Get Base Heal\n        if crtFlag == true then\n            heal = heal / (2 + aura_env.taurenRacial + aura_env.critBonusOutput)\n        end\n        \n        --Crit Percentage (Bonus)\n        local crtPerc \n        if sklFlag == 1 then \n            if overHeal ~= 0 then return true end\n            crtPerc = aura_env.crtPerc +  aura_env.REGROWTHBASECRT * (1 + aura_env.taurenRacial + aura_env.critBonusOutput)\n        else\n            crtPerc = aura_env.crtPerc * (1 + aura_env.taurenRacial + aura_env.critBonusOutput)\n        end\n        \n        \n        --Spell Coeff.\n        local sce = heal / ( aura_env.spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) )\n        \n        local spellPower  = sce * aura_env.spellPower\n        --Haste Calc (Only for Hots)\n        if hstFlag then\n            hstHeal = spellPower * (1 + mstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) / aura_env.HSTRATINGCONV \n        else \n            hstHeal = 0\n        end\n        \n        --Mastery Calc\n        mstHeal = spellPower * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * hCount / aura_env.MSTRATINGCONV\n        \n        --Crit Calc\n        crtHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + aura_env.taurenRacial + aura_env.critBonusOutput) / aura_env.CRTRATINGCONV\n        \n        --Versatility calc\n        vrsHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + crtPerc) / aura_env.VRSRATINGCONV\n        \n        --Spell Power Calc\n        --1.05 = Primary Stat Bonus from Armor\n        spHeal = sce * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * 1.05\n        \n        --[[\n        print(\"---------------\")\n        print(\"spHeal:\", spHeal)\n        print(\"mstHeal:\", mstHeal)\n        print(\"vrsHeal:\", vrsHeal)\n        print(\"hstHeal:\", hstHeal)\n        print(\"crtHeal:\", crtHeal)\n        print(\"---------------\")\n        ]]\n        \n        allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal)\n    end\n    \n    --Sets Encounter data to be printed to file.\n    --Para mode: sets print out to stat either \"WIPE\" if mode - 0 or \"KILL\" if mode = 1\n    local function printToFile(eID, eName, difficulty, raidSize, mode) \n        local outcome\n        if mode == 0 or mode == 1 then\n            if mode == 0 then outcome = \"WIPE\"\n            elseif mode == 1 then outcome = \"KILL\"\n            end\n            \n            local outString = \"ENCOUNTER: %s eID: %d \" \n            .. \"Time: %s \"\n            .. \"Player: %s \"\n            .. \"Difficulty: %d raidSize: %d \"\n            .. \"Outcome: %s \"\n            .. \"+_ \"\n            .. \"INT: %.4f \"\n            .. \"MST: %.4f \"\n            .. \"HST: %.4f \"\n            .. \"CRT: %.4f \"\n            .. \"VRS: %.4f \"\n            \n            \n            \n            tinsert(Leaf_RDSW, format(outString,\n                    eName, \n                    eID, \n                    aura_env.time,\n                    UnitName(\"player\"),\n                    difficulty, \n                    raidSize, \n                    outcome, \n                    LEAFUI_CUR_SP,\n                    LEAFUI_CUR_MST,\n                    LEAFUI_CUR_HST,\n                    LEAFUI_CUR_CRT,\n            LEAFUI_CUR_VRS))\n        end    \n    end\n    \n    --Clears the current healing and stat values\n    local function clearStats()\n        LEAFUI_CUR_SP = 0\n        LEAFUI_CUR_MST = 0\n        LEAFUI_CUR_HST = 0\n        LEAFUI_CUR_CRT = 0\n        LEAFUI_CUR_VRS = 0\n        LEAFUI_CUR_SP_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_HST_HEAL = 0\n        LEAFUI_CUR_CRT_HEAL = 0\n        LEAFUI_CUR_VRS_HEAL = 0\n    end\n    \n    \n    --MAIN--\n    if e == \"ARTIFACT_UPDATE\" then\n        updateArtifact()\n        return true\n    end\n    \n    local function updateArtifact()\n        if IsEquippedItem(128306) == true and aura_env.apUpdated == false then\n            SocketInventoryItem(16)\n            seedsPoints, _ = select(3,C_ArtifactUI.GetPowerInfo(131))\n            aura_env.apUpdated = true\n            aura_env.REGROWTHBASECRT = .4 + .08 * seedsPoints\n        end\n    end\n    \n    --Updates Character Stats\n    local function updateStats()\n        aura_env.mstPerc = GetMasteryEffect() / 100--GetCombatRatingBonus(26) / 100 * hCount  \n        aura_env.hstPerc = UnitSpellHaste(\"player\") / 100\n        aura_env.crtPerc = GetCritChance() / 100\n        aura_env.vrsPerc = (GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)) / 100\n        aura_env.spellPower = GetSpellBonusDamage(4)\n        \n        updateArtifact()\n        \n        if IsEquippedItem(\"Drape of Shame\") then \n            aura_env.critBonusOutput = 0.1 \n        end\n    end\n    \n    if e == \"PLAYER_ENTERING_WORLD\" then\n        updateStats()\n        if instanceCheck() == 1 then\n            aura_env.encounter = true\n        elseif instanceCheck() == 0 then\n            aura_env.encounter = false\n        end\n    elseif e == \"UNIT_STATS\" or e == \"COMBAT_RATING_UPDATE\" then      \n        updateStats()\n    elseif e == \"ENCOUNTER_START\" then \n        if instanceCheck() == 2 then\n            print(\"RDSW: Boss Encounter has Begun. Recording.\")\n            aura_env.time = date(\"%m/%d/%y %H:%M:%S\")\n            aura_env.encounter = true\n            clearStats()\n        end\n    elseif  e == \"ENCOUNTER_END\" then \n        if instanceCheck() == 2 then\n            if IsAddOnLoaded(\"RDSW\") then \n                print(\"RDSW: Boss Encounter has Ended. Recording to file.\")\n            else\n                print(\"RDSW: Boss Encounter has Ended.\")\n            end\n            printToFile(...) \n            aura_env.encounter = false\n        end\n    elseif e == \"COMBAT_LOG_EVENT_UNFILTERED\" and aura_env.encounter == true then \n        --If overheal is present and Living Seed table does not need to be updated. Cancel operation.\n        if select(16,...) ~= 0 and (sName ~= aura_env.spells.livingseed or sName ~= aura_env.spells.regrowth) then\n            WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n            return true\n        end\n        \n        local heal, overHeal, crtFlag, effHeal, sName, hstFlag, sklFlag, tGuid\n        sklFlag = 0\n        local sType = select(2, ...)\n        if select(4, ...) == UnitGUID(\"player\") then \n            sName = select(13,...)\n            \n            --Hot Spells (haste effected)\n            if sType == \"SPELL_PERIODIC_HEAL\" then\n                if sName == aura_env.spells.rejuvenation\n                or sName == aura_env.spells.germination\n                or sName == aura_env.spells.lifebloom\n                or sName == aura_env.spells.regrowth\n                or sName == aura_env.spells.wildgrowth\n                or sName == aura_env.spells.springblossoms\n                or sName == aura_env.spells.cultivation\n                or sName == aura_env.spells.cenarionward\n                then hstFlag = true end\n                \n                --Direct Healing Spells (Mostly not Haste Effected)   \n            elseif sType == \"SPELL_HEAL\" then \n                sName,_= select(13,...)\n                if sName == aura_env.spells.efflorescence then hstFlag = true\n                    \n                elseif sName == aura_env.spells.regrowth then \n                    sklFlag = 1\n                    hstFlag = false\n                    \n                elseif sName == aura_env.spells.livingseed then\n                    sklFlag = 2\n                    hstFlag = false\n                    \n                elseif sName == aura_env.spells.swiftmend\n                or sName == aura_env.spells.healingtouch\n                or sName == aura_env.spells.lifebloom\n                or sName == aura_env.spells.tranquility\n                then hstFlag = false end\n            end\n            \n            if hstFlag ~= nil then    --If hstFlag == nil, healing was not done by a spell in the above listing. ie: Ysera's gift is uneffected by secondaries\n                tGuid, name,_= select(8,...)\n                heal,overHeal,_,crtFlag,_ = select(15,...)\n                decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid)\n            end         \n        end\n        WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n    end\n    return true\nend\n\n",
				["custom_hide"] = "custom",
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorPoint"] = "CENTER",
			["font"] = "Vixar",
			["numTriggers"] = 1,
			["width"] = 10.2399921417236,
			["height"] = 11.9466772079468,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = false,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -124.999908447266,
		},
		["Brand of Argus 2"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "2",
				["event"] = "Combat Log",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["spellIds"] = {
					212794, -- [1]
				},
				["name"] = "",
				["names"] = {
					"Brand of Argus", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1862",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 841219,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_NH",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["text1Font"] = "Accidental Presidency",
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "Brand",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = false,
			["id"] = "Brand of Argus 2",
			["additional_triggers"] = {
			},
			["text1FontFlags"] = "THICKOUTLINE",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["glow"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_taint-of-sea"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["disjunctive"] = "all",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Taint of the Sea", -- [1]
				},
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 103.931533813477,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = -27.569091796875,
			["text2Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = -357.874755859375,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["text2FontSize"] = 24,
			["cooldownTextEnabled"] = true,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_taint-of-sea",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 108.920211791992,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_Trial",
		},
		["SanUI_TFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -400.426605224609,
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["use_unit"] = true,
				["spellName"] = 5217,
				["charges_operator"] = ">=",
				["charges"] = "2",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Tiger's Fury",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["parent"] = "SanUI_Urgent",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 5217,
			},
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["id"] = "SanUI_TFoffCD",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["selfPoint"] = "CENTER",
			["glow"] = false,
			["inverse"] = false,
			["text1Font"] = "SCT TwCenMT",
			["text1FontFlags"] = "OUTLINE",
			["conditions"] = {
			},
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_HornOfCenarius"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Urgent",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 139333,
				["spellName"] = 221992,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 139333,
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["spellName"] = 221992,
				["charges_operator"] = ">=",
				["charges"] = "2",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["unit"] = "player",
				["use_itemName"] = true,
				["names"] = {
				},
				["realSpellName"] = "Cleansing Wisp",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["event"] = "Cooldown Progress (Item)",
				["unevent"] = "auto",
				["use_unit"] = true,
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["yOffset"] = 170.666564941406,
			["text1Font"] = "SCT TwCenMT",
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["xOffset"] = -400.426605224609,
			["text2FontSize"] = 24,
			["numTriggers"] = 2,
			["text1"] = "%c",
			["id"] = "SanUI_HornOfCenarius",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["itemName"] = 139333,
						["use_itemName"] = true,
					},
					["untrigger"] = {
						["itemName"] = 139333,
					},
				}, -- [1]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["conditions"] = {
			},
			["cooldownTextEnabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_TigersFury"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -44.9999685287476,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SanUI_FeralRota",
			["customText"] = "return \"\"",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["names"] = {
					"Tiger's Fury", -- [1]
				},
				["custom_hide"] = "timed",
				["type"] = "status",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["use_unit"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["unevent"] = "auto",
				["realSpellName"] = "Tiger's Fury",
				["use_spellName"] = true,
				["spellIds"] = {
					5217, -- [1]
				},
				["spellName"] = 5217,
				["showOn"] = "showOnCooldown",
				["use_specific_unit"] = false,
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["timer"] = true,
			["timerFlags"] = "None",
			["icon"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["spark"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["untrigger"] = {
				["spellName"] = 5217,
			},
			["numTriggers"] = 1,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["sparkRotation"] = 0,
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["id"] = "SanUI_TigersFury",
			["textFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["textSize"] = 16,
			["height"] = 23.9999370574951,
		},
		["SanUI_SavageRoar"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -11.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "SanUI_FeralRota",
			["customText"] = "return \"\"",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					52610, -- [1]
				},
				["custom_hide"] = "timed",
				["use_specific_unit"] = false,
				["names"] = {
					"Savage Roar", -- [1]
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["textSize"] = 16,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["height"] = 23.9999370574951,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "RIGHT",
			["untrigger"] = {
			},
			["disjunctive"] = "all",
			["sparkHeight"] = 30,
			["sparkHidden"] = "NEVER",
			["borderBackdrop"] = "Blizzard Tooltip",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["displayTextRight"] = "%p",
			["id"] = "SanUI_SavageRoar",
			["sparkWidth"] = 10,
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
		},
		["SanUI_ThrashCatRatio"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -90,
			["displayText"] = "%c",
			["yOffset"] = -283,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.725490196078431, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "2002",
			["load"] = {
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = true,
			["texture"] = "DF Statusbar 3",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    Thrash_sDamage = Thrash_sDamage or {}\n    if Thrash_sDamage[UnitGUID(\"target\")] then\n        local RatioPercent = floor(WA_stats_ThrashTick/Thrash_sDamage[UnitGUID(\"target\")]*100 + .5)\n        if RatioPercent >= 110 then\n            return format(\"|cFF00FF00%d|r\", RatioPercent)\n        elseif RatioPercent <= 90 then\n            return format(\"|cFFFF0000%d|r\", RatioPercent)\n        else\n            return format(\"|cFF999999%d|r\", RatioPercent)\n        end        \n    else return ''\n    end\nend\n\n\n\n\n",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["spellId"] = "106830",
				["ownOnly"] = true,
				["names"] = {
					"Thrash", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_type"] = "status",
				["custom_hide"] = "custom",
				["unevent"] = "auto",
				["type"] = "aura",
				["custom"] = "function()\n    if WA_thrashc then return true end\nend",
				["subeventSuffix"] = "_CAST_START",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["name"] = "Thrash",
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["spellIds"] = {
				},
				["use_spellId"] = true,
				["check"] = "update",
				["name_operator"] = "==",
				["debuffType"] = "HARMFUL",
				["unit"] = "target",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["border"] = false,
			["borderEdge"] = "None",
			["disjunctive"] = "all",
			["borderSize"] = 16,
			["stacksFlags"] = "None",
			["icon_side"] = "RIGHT",
			["displayTextLeft"] = " ",
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["height"] = 13.6533327102661,
			["inverse"] = false,
			["timerSize"] = 12,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_thrashc then return true end\nend",
			},
			["id"] = "SanUI_ThrashCatRatio",
			["width"] = 6.82673835754395,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["additional_triggers"] = {
			},
			["displayTextRight"] = " ",
			["numTriggers"] = 1,
			["parent"] = "SnaUI_FeralBleedSnapshots",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderOffset"] = 5,
			["icon"] = false,
		},
		["SanUI_FeralStatLogic"] = {
			["textFlags"] = "None",
			["stacksSize"] = 13,
			["xOffset"] = 0,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.345098039215686, -- [1]
				0.317647058823529, -- [2]
				0.749019607843137, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 1,
			["font"] = "Micron55",
			["load"] = {
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["arena"] = true,
						["pvp"] = true,
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = false,
			["texture"] = "fer25",
			["textFont"] = "MARKEN",
			["borderOffset"] = 2,
			["auto"] = true,
			["timerFont"] = "MARKEN",
			["alpha"] = 1,
			["borderInset"] = 1,
			["displayIcon"] = "Interface\\Icons\\Ability_Druid_Berserk",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "None",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if WA_calcStats_feral then\n        WA_calcStats_feral()\n    end\n    \n    return \"\"\nend\n\n\n\n\n\n\n\n\n",
			["barInFront"] = false,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["textSize"] = 8,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["autoclone"] = false,
				["spellId"] = "108381",
				["use_unit"] = true,
				["unit"] = "player",
				["custom_hide"] = "custom",
				["unevent"] = "auto",
				["type"] = "custom",
				["subeventSuffix"] = "_CAST_START",
				["custom_type"] = "event",
				["event"] = "Chat Message",
				["count"] = "0",
				["countOperator"] = "~=",
				["events"] = "PLAYER_ENTERING_WORLD,ACTIVE_TALENT_GROUP_CHANGED,PLAYER_REGEN_DISABLED",
				["name_operator"] = "==",
				["use_spellId"] = true,
				["custom"] = "function()\n    \n    local tf = GetSpellInfo(5217)\n    local sr = GetSpellInfo(52610)\n    local bt = GetSpellInfo(155672)\n    local inc = GetSpellInfo(102543)\n    local prowl = GetSpellInfo(5215)\n    local sm = GetSpellInfo(58984)\n    \n    function WA_calcStats_feral()\n        local DamageMult = 1 --select(7, UnitDamage(\"player\"))\n        \n        local CP = GetComboPoints(\"player\", \"target\")\n        if CP == 0 then CP = 5 end\n        \n        if UnitBuff(\"player\", tf) then\n            DamageMult = DamageMult * 1.15\n        end\n        \n        if UnitBuff(\"player\", sr) then\n            DamageMult = DamageMult * 1.4\n        end\n        \n        WA_stats_BTactive = WA_stats_BTactive or  0\n        if UnitBuff(\"player\", bt) then\n            WA_stats_BTactive = GetTime()\n            DamageMult = DamageMult * 1.3\n        elseif GetTime() - WA_stats_BTactive < .2 then\n            DamageMult = DamageMult * 1.3\n        end\n        \n        local RakeMult = 1\n        WA_stats_prowlactive = WA_stats_prowlactive or  0\n        if UnitBuff(\"player\", inc) then\n            RakeMult = 2\n        elseif UnitBuff(\"player\", prowl) or UnitBuff(\"player\", sm) then\n            WA_stats_prowlactive = GetTime()\n            RakeMult = 2\n        elseif GetTime() - WA_stats_prowlactive < .2 then\n            RakeMult = 2\n        end\n        \n        WA_stats_RipTick = CP*DamageMult\n        WA_stats_RipTick5 = 5*DamageMult\n        WA_stats_RakeTick = DamageMult*RakeMult\n        WA_stats_ThrashTick = DamageMult\n    end\n    \n    return true\nend",
				["spellIds"] = {
				},
				["check"] = "event",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontSize"] = 8,
			["border"] = true,
			["borderEdge"] = "fer09",
			["borderSize"] = 11,
			["backgroundColor"] = {
				0.203921568627451, -- [1]
				0.203921568627451, -- [2]
				0.203921568627451, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["stacksFlags"] = "None",
			["untrigger"] = {
			},
			["stacksFont"] = "Emblem",
			["height"] = 7.68008089065552,
			["inverse"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["id"] = "SanUI_FeralStatLogic",
			["additional_triggers"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["width"] = 5.97339582443237,
			["timerSize"] = 8,
			["justify"] = "CENTER",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "SnaUI_FeralBleedSnapshots",
			["displayTextLeft"] = "Dream of Cenarius [%s]",
		},
		["SanUI_NH"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Brand of Argus 2", -- [1]
				"Burning Soul 3", -- [2]
				"Carrion Plague 3", -- [3]
				"Essence of Night 3", -- [4]
				"Illusionary Night 3", -- [5]
				"Vampiric Aura 2", -- [6]
				"Feast of Blood 3", -- [7]
				"Volatile Wound 3", -- [8]
			},
			["disjunctive"] = "all",
			["yOffset"] = 190,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["backgroundInset"] = 0,
			["selfPoint"] = "LEFT",
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["stagger"] = 0,
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_NH",
			["frameStrata"] = 1,
			["width"] = 653.999969482422,
			["anchorFrameType"] = "SCREEN",
			["radius"] = 200,
			["numTriggers"] = 1,
			["xOffset"] = -485.000244140625,
			["rotation"] = 0,
			["align"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["untrigger"] = {
			},
		},
		["SanUI_PurgeTheWicked"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 19.9999942779541,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
					204197, -- [1]
				},
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Purge the Wicked", -- [1]
				},
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 16,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_name"] = false,
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["parent"] = "SanUI_TargetDebuffs",
			["text1Font"] = "Friz Quadrata TT",
			["untrigger"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["text2"] = "%p",
			["width"] = 39.9999885559082,
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_PurgeTheWicked",
			["glow"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["SanUI_BloodTalons"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					155672, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Bloodtalons", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "2002",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%s",
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_BloodTalons",
			["zoom"] = 0.3,
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["xOffset"] = -20,
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["PhoGuild - Odyn Brand Yellow Up"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:PhoGuild - Odyn Brand Yellow Up",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
					["do_custom"] = false,
					["sound_channel"] = "Master",
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "227498",
				["unevent"] = "auto",
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "RANGE",
				["event"] = "Conditions",
				["names"] = {
				},
				["unit"] = "player",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["name"] = "Branded",
				["subeventSuffix"] = "_CAST_START",
				["use_unit"] = true,
				["custom_type"] = "event",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1958",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 1323038,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2"] = "%p",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "229581",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["unit"] = "player",
						["names"] = {
						},
						["name"] = "Branded",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "231344",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "Runic Brand",
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Runic Brand", -- [1]
						},
						["spellIds"] = {
							231344, -- [1]
						},
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "PhoGuild - Odyn Brand Yellow Up",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
			["selfPoint"] = "CENTER",
			["disjunctive"] = "any",
			["conditions"] = {
			},
			["cooldown"] = false,
			["parent"] = "SanUI_Trial",
		},
		["SanUI_Clearcasting 2"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					117679, -- [1]
				},
				["custom_hide"] = "timed",
				["unit"] = "player",
				["names"] = {
					"Incarnation", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["yOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Clearcasting 2",
			["zoom"] = 0.3,
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldown"] = true,
			["xOffset"] = -20,
		},
		["SanUI_PowerArchdruid"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					189870, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Power of the Archdruid", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "SanUI_Buffs",
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["disjunctive"] = "all",
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_PowerArchdruid",
			["untrigger"] = {
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["SanUI_Buffs"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"SanUI_Clearcasting", -- [1]
				"SanUI_OverloadedWithLight", -- [2]
				"SanUI_ClearcastingFeral", -- [3]
				"SanUI_Barkskin", -- [4]
				"SanUI_RageOfTheSleeper", -- [5]
				"SanUI_SurvivalInstincts", -- [6]
				"SanUI_Clearcasting 2", -- [7]
				"SanUI_Innervate", -- [8]
				"SanUI_PowerArchdruid", -- [9]
				"SanUI_SotF", -- [10]
				"SanUI_BloodTalons", -- [11]
				"SanUI_PredatorySwiftness", -- [12]
				"SanUI_GatheringClouds", -- [13]
			},
			["disjunctive"] = "all",
			["yOffset"] = -128.853515625,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 7,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["radius"] = 200,
			["selfPoint"] = "RIGHT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["rotation"] = 0,
			["height"] = 39.9999694824219,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Buffs",
			["frameStrata"] = 1,
			["width"] = 603.99996727705,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -215.893615722656,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["backgroundInset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
		},
		["SanUI_RipRatio"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -90,
			["displayText"] = "%c",
			["yOffset"] = -250,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["finish"] = {
					["do_custom"] = false,
					["custom"] = "",
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.725490196078431, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "2002",
			["load"] = {
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_zone"] = false,
				["name"] = "",
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["stacks"] = true,
			["texture"] = "DF Statusbar 3",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SnaUI_FeralBleedSnapshots",
			["customText"] = "function()\n    Rip_sDamage = Rip_sDamage or {}\n    if Rip_sDamage[UnitGUID(\"target\")] then\n        local RatioPercent = floor(WA_stats_RipTick5/Rip_sDamage[UnitGUID(\"target\")]*100 + .5)\n        if RatioPercent >= 110 then\n            return format(\"|cFF00FF00%d|r\", RatioPercent+.01)\n        elseif RatioPercent <= 90 then\n            return format(\"|cFFFF0000%d|r\", RatioPercent+.01)\n        else\n            return format(\"|cFF999999%d|r\", RatioPercent+.01)\n        end        \n    else return ''\n    end\nend\n\n\n\n\n",
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend",
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["ownOnly"] = true,
				["names"] = {
					"Rip", -- [1]
				},
				["custom_hide"] = "custom",
				["type"] = "aura",
				["unit"] = "target",
				["custom_type"] = "status",
				["unevent"] = "auto",
				["custom"] = "function()\n    return true\nend",
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["check"] = "update",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["stacksFlags"] = "None",
			["icon_side"] = "RIGHT",
			["disjunctive"] = "all",
			["icon"] = false,
			["barInFront"] = true,
			["numTriggers"] = 1,
			["displayTextRight"] = " ",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["id"] = "SanUI_RipRatio",
			["additional_triggers"] = {
			},
			["width"] = 6.82673835754395,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["height"] = 13.6533041000366,
			["justify"] = "CENTER",
			["inverse"] = false,
			["textSize"] = 12,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_AFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -400.426605224609,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 217363,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["use_unit"] = true,
				["spellName"] = 217363,
				["charges_operator"] = ">=",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Ashamane's Frenzy",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["charges"] = "2",
				["showOn"] = "showOnReady",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["use_name"] = false,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["parent"] = "SanUI_Urgent",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["yOffset"] = 170.666564941406,
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["id"] = "SanUI_AFoffCD",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["icon"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "spin",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glow"] = false,
			["inverse"] = false,
			["text1Font"] = "SCT TwCenMT",
			["text1FontFlags"] = "OUTLINE",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_FeralRota"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_SavageRoar", -- [1]
				"SanUI_TigersFury", -- [2]
				"SanUI_Berserk", -- [3]
				"SanUI_Inc", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["expanded"] = false,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_FeralRota",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -205,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["anchorPoint"] = "CENTER",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 83,
		},
		["SanUI_FoamMark"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 24,
			["xOffset"] = 6.826171875,
			["customText"] = "function()\n    local raid_mark = GetRaidTargetIndex(\"target\")\n    local mark = \"No Mark\"\n    if UnitExists(\"target\") == true then\n        if raid_mark == 1 then\n            mark = \"Star\"\n        elseif raid_mark == 2 then\n            mark = \"Circle\"\n        elseif raid_mark == 3 then\n            mark = \"Diamond\"\n        elseif raid_mark == 4 then\n            mark = \"Triangle\"\n        elseif raid_mark == 5 then\n            mark = \"Moon\"\n        elseif raid_mark == 6 then\n            mark = \"Square\"\n        elseif raid_mark == 7 then\n            mark = \"Cross\"\n        elseif raid_mark == 8 then\n            mark = \"Skull\"\n        elseif raid_mark == nil then\n            mark = \"No Mark\"\n        end\n        return mark\n    end\nend    \n\n",
			["untrigger"] = {
				["custom"] = "function()\n    return true\nend",
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["custom"] = "local raid_mark = GetRaidTargetIndex(\"player\")\nif raid_mark ~= nil then \n    SendChatMessage(\"Go to {rt\"..raid_mark..\"}\", SAY)\nend",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["debuffType"] = "HELPFUL",
				["custom_type"] = "status",
				["unit"] = "player",
				["spellIds"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["customDuration"] = "",
				["customTexture"] = "function()\n    local mark = GetRaidTargetIndex(\"player\")\n    if UnitExists(\"player\") == true and mark ~= nil then\n        return    [[Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_]]..mark..[[.blp]]\n    end\nend \n\n",
				["custom"] = "function()\n    local raid_mark = GetRaidTargetIndex(\"player\")\n    if raid_mark ~= nil then \n        return true\n    end\nend",
				["customIcon"] = "function()\n    local mark = GetRaidTargetIndex(\"player\")\n    if UnitExists(\"player\") == true and mark ~= nil then\n        return    [[Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_]]..mark..[[.blp]]\n    end\nend \n\n",
				["check"] = "update",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 72,
			["load"] = {
				["use_never"] = false,
				["zone"] = "Trial of Valor",
				["encounterid"] = "1962",
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["name"] = "Ankhwart",
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
			},
			["text2"] = "%p",
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["text1Font"] = "ElvUI Font",
			["cooldownTextEnabled"] = true,
			["yOffset"] = -120.799987792969,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = " ",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["names"] = {
							"Flaming Volatile Foam", -- [1]
							"Briney Volatile Foam", -- [2]
							"Shadowy Volatile Foam", -- [3]
						},
						["type"] = "aura",
						["spellIds"] = {
							228744, -- [1]
							228810, -- [2]
							228818, -- [3]
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["id"] = "SanUI_FoamMark",
			["icon"] = true,
			["text2Enabled"] = false,
			["width"] = 72,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_Trial",
		},
		["SanUI_Clearcasting"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					16870, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Clearcasting", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["parent"] = "SanUI_Buffs",
			["text1Font"] = "Friz Quadrata TT",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Clearcasting",
			["yOffset"] = 0,
			["text2Enabled"] = false,
			["width"] = 40,
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["xOffset"] = -20,
			["text1FontFlags"] = "OUTLINE",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\panther1.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["SanUI_Inc"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["stacksFont"] = "Friz Quadrata TT",
			["auto"] = true,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["customText"] = "return \"\"",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
					102543, -- [1]
				},
				["custom_hide"] = "timed",
				["use_specific_unit"] = false,
				["names"] = {
					"Incarnation: King of the Jungle", -- [1]
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["borderOffset"] = 5,
			["timer"] = true,
			["timerFlags"] = "None",
			["textSize"] = 16,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["height"] = 23.9999370574951,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["barInFront"] = true,
			["borderSize"] = 16,
			["width"] = 120,
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkWidth"] = 10,
			["sparkHeight"] = 30,
			["sparkHidden"] = "NEVER",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["sparkOffsetX"] = 0,
			["id"] = "SanUI_Inc",
			["parent"] = "SanUI_FeralRota",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["spark"] = false,
		},
		["Carrion Plague 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "2",
				["event"] = "Combat Log",
				["names"] = {
					"Carrion Plague", -- [1]
				},
				["custom_hide"] = "timed",
				["spellIds"] = {
					206480, -- [1]
				},
				["name"] = "",
				["use_unit"] = true,
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1862",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 1029009,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_NH",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["text1Font"] = "Accidental Presidency",
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "Plague",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = false,
			["id"] = "Carrion Plague 3",
			["additional_triggers"] = {
			},
			["text1FontFlags"] = "THICKOUTLINE",
			["text2Enabled"] = false,
			["width"] = 80,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["glow_frame"] = "WeakAuras:Artillery",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["glow"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_Swiftmend2Charges"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["use_charges"] = true,
				["use_unit"] = true,
				["spellName"] = 18562,
				["charges_operator"] = ">=",
				["type"] = "status",
				["custom_hide"] = "timed",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Swiftmend",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnReady",
				["names"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["charges"] = "2",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["zoom"] = 0.3,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Font"] = "SCT TwCenMT",
			["untrigger"] = {
				["spellName"] = 18562,
			},
			["cooldownTextEnabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = -400.426605224609,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["id"] = "SanUI_Swiftmend2Charges",
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["parent"] = "SanUI_Urgent",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_Urgent"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"SanUI_Efflo", -- [1]
				"SanUI_Swiftmend2Charges", -- [2]
				"SanUI_CenarionWard", -- [3]
				"SanUI_TFoffCD", -- [4]
				"SanUI_AFoffCD", -- [5]
				"SanUI_BerserkOffCD", -- [6]
				"SanUI_HornOfCenarius", -- [7]
				"SanUI_CakeOffCD", -- [8]
				"SanUI_LegOffCD", -- [9]
				"SanUI_ConctractOffCD", -- [10]
			},
			["disjunctive"] = "all",
			["yOffset"] = 28.1597900390625,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["space"] = 6,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["rotation"] = 0,
			["height"] = 453.999984741211,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Urgent",
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -244.053344726563,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["backgroundInset"] = 0,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
		},
		["SanUI_TargetDebuffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"SanUI_Thrash", -- [1]
				"SanUI_Moonfire", -- [2]
				"SanUI_Sunfire", -- [3]
				"SanUI_PurgeTheWicked", -- [4]
			},
			["animate"] = false,
			["regionType"] = "dynamicgroup",
			["xOffset"] = 199.679946018324,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["border"] = "None",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["backgroundInset"] = 0,
			["sort"] = "none",
			["activeTriggerMode"] = 0,
			["space"] = 8,
			["background"] = "None",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderOffset"] = 16,
			["width"] = 183.999877929688,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["align"] = "CENTER",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stagger"] = 0,
			["selfPoint"] = "LEFT",
			["numTriggers"] = 1,
			["id"] = "SanUI_TargetDebuffs",
			["height"] = 40,
			["radius"] = 200,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = -113.493018440225,
		},
		["SanUI_RageOfTheSleeper"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -20,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					200851, -- [1]
				},
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rage of the Sleeper", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\bear_polar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["parent"] = "SanUI_Buffs",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["numTriggers"] = 1,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_RageOfTheSleeper",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["untrigger"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["cooldown"] = true,
			["disjunctive"] = "all",
		},
		["Vampiric Aura 2"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "2",
				["event"] = "Combat Log",
				["names"] = {
					"Vampiric Aura", -- [1]
				},
				["custom_hide"] = "timed",
				["unit"] = "target",
				["name"] = "",
				["spellIds"] = {
					206893, -- [1]
				},
				["use_unit"] = true,
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["zone"] = "Hellfire Citadel",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_role"] = true,
				["encounterid"] = "1862",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["single"] = "TANK",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 136231,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_NH",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["text1Font"] = "Accidental Presidency",
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "Aura",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = false,
			["id"] = "Vampiric Aura 2",
			["additional_triggers"] = {
			},
			["text1FontFlags"] = "THICKOUTLINE",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["glow"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["Essence of Night 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "10.5",
				["event"] = "Health",
				["names"] = {
					"Essence of Night", -- [1]
				},
				["custom_hide"] = "timed",
				["use_unit"] = true,
				["name"] = "",
				["spellIds"] = {
					206466, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["encounterid"] = "1862",
				["role"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 607513,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["parent"] = "SanUI_NH",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "THICKOUTLINE",
			["text1"] = "Buffed",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Essence of Night 3",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["width"] = 80,
			["text1Containment"] = "OUTSIDE",
			["glow"] = false,
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "Accidental Presidency",
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["glow_frame"] = "WeakAuras:Artillery",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_Rip"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 50,
			["stacksFlags"] = "None",
			["yOffset"] = -44.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "2002",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "SanUI_FeralBleeds",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
					1079, -- [1]
				},
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Rip", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["textSize"] = 12,
			["timer"] = true,
			["timerFlags"] = "None",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["icon"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["height"] = 23.9999370574951,
			["inverse"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "LEFT",
			["untrigger"] = {
			},
			["disjunctive"] = "all",
			["sparkHeight"] = 30,
			["sparkHidden"] = "NEVER",
			["borderBackdrop"] = "Blizzard Tooltip",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["displayTextRight"] = "%p",
			["id"] = "SanUI_Rip",
			["sparkWidth"] = 10,
			["frameStrata"] = 1,
			["width"] = 120,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
		},
		["SanUI_CombatTime"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 72,
			["xOffset"] = -18.5867919921875,
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.StartTime then\n        local combatTime = GetTime() - aura_env.StartTime\n        return string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n    else\n        return \"13:37\"\n    end\nend\n\n\n\n",
			["yOffset"] = -444.694442749023,
			["regionType"] = "text",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_custom"] = true,
					["custom"] = "aura_env.StartTime = GetTime()",
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "aura_env.StartTime = nil",
				},
				["finish"] = {
					["do_custom"] = true,
					["custom"] = "aura_env.StartTime = nil",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "BOTTOM",
			["trigger"] = {
				["type"] = "status",
				["use_alwaystrue"] = true,
				["unevent"] = "auto",
				["event"] = "Conditions",
				["use_unit"] = true,
				["spellIds"] = {
				},
				["subeventPrefix"] = "SPELL",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["additional_triggers"] = {
			},
			["id"] = "SanUI_CombatTime",
			["frameStrata"] = 1,
			["width"] = 21.3333282470703,
			["anchorFrameType"] = "SCREEN",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["height"] = 71.6800003051758,
			["conditions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["SanUI_BearMitigation"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_Ironfur", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 5,
			["xOffset"] = 0,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_BearMitigation",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["yOffset"] = -0.5,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["SanUI_Ironfur"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 17.9202880859375,
			["stacksFlags"] = "None",
			["yOffset"] = -217,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "DGround",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
					192081, -- [1]
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
					"Ironfur", -- [1]
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["height"] = 23.9999923706055,
			["timerFlags"] = "None",
			["borderOffset"] = 5,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksFont"] = "Friz Quadrata TT",
			["textSize"] = 12,
			["numTriggers"] = 1,
			["icon"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["anchorFrameType"] = "SCREEN",
			["icon_side"] = "LEFT",
			["textFlags"] = "None",
			["barInFront"] = true,
			["sparkHeight"] = 30,
			["id"] = "SanUI_Ironfur",
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["displayTextRight"] = "%p",
			["sparkHidden"] = "NEVER",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 113.653327941895,
			["sparkOffsetX"] = 0,
			["timer"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "SanUI_BearMitigation",
			["auto"] = true,
		},
		["SanUI_Moonfire"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 19.9999942779541,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
					8921, -- [1]
				},
				["debuffType"] = "HARMFUL",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Moonfire", -- [1]
				},
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_name"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["untrigger"] = {
			},
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_TargetDebuffs",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Moonfire",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Volatile Wound 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "10.5",
				["event"] = "Health",
				["use_unit"] = true,
				["custom_hide"] = "timed",
				["names"] = {
					"Volatile Wound", -- [1]
				},
				["name"] = "",
				["spellIds"] = {
					216024, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1862",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["zone"] = "Hellfire Citadel",
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 135734,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_NH",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["text1Font"] = "Accidental Presidency",
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "Drop Void",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Volatile Wound 3",
			["text1FontFlags"] = "THICKOUTLINE",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_glow"] = false,
					["do_message"] = false,
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["glow"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_LegOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = -400.426605224609,
			["yOffset"] = 170.666564941406,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 144258,
				["use_charges"] = false,
				["use_unit"] = true,
				["spellName"] = 221992,
				["custom_hide"] = "timed",
				["charges_operator"] = ">=",
				["charges"] = "2",
				["debuffType"] = "HELPFUL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
				["use_itemName"] = true,
				["names"] = {
				},
				["realSpellName"] = "Cleansing Wisp",
				["use_spellName"] = true,
				["spellIds"] = {
				},
				["type"] = "status",
				["showOn"] = "showOnReady",
				["event"] = "Cooldown Progress (Item)",
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
			},
			["text2"] = "%p",
			["text2Containment"] = "INSIDE",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 144258,
				["spellName"] = 221992,
			},
			["text1Font"] = "SCT TwCenMT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_Urgent",
			["stickyDuration"] = false,
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 144258,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["unevent"] = "auto",
						["type"] = "status",
						["use_unit"] = true,
						["use_itemName"] = true,
					},
					["untrigger"] = {
						["itemName"] = 144258,
					},
				}, -- [1]
			},
			["width"] = 40,
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_LegOffCD",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["numTriggers"] = 2,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["conditions"] = {
			},
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
		},
		["Burning Soul 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 20,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "spiral",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["unevent"] = "timed",
				["duration"] = "10.5",
				["event"] = "Health",
				["names"] = {
					"Burning Soul", -- [1]
				},
				["debuffType"] = "HARMFUL",
				["use_unit"] = true,
				["name"] = "",
				["spellIds"] = {
					216040, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["zone"] = "Hellfire Citadel",
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1862",
				["role"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["displayIcon"] = 841221,
			["text1Font"] = "Accidental Presidency",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["parent"] = "SanUI_NH",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "THICKOUTLINE",
			["text1"] = "exploding",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = false,
			["additional_triggers"] = {
			},
			["id"] = "Burning Soul 3",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "OUTSIDE",
			["glow"] = false,
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\Prat-3.0\\Sounds\\Link.ogg",
					["glow_frame"] = "WeakAuras:Artillery",
					["message_type"] = "SAY",
					["glow_action"] = "show",
					["do_message"] = false,
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_FeralSnapshotLogic"] = {
			["user_y"] = 0,
			["user_x"] = -0.0200000107288361,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["untrigger"] = {
				["custom"] = "",
			},
			["foregroundColor"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0.0549019607843137, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["activeTriggerMode"] = 0,
			["sameTexture"] = false,
			["backgroundColor"] = {
				0.101960784313726, -- [1]
				0.101960784313726, -- [2]
				0.101960784313726, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["crop_x"] = 0.459999978542328,
			["desaturateForeground"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "custom",
				["custom_hide"] = "custom",
				["unevent"] = "auto",
				["custom_type"] = "event",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["custom"] = "function (event, _, param, _, source, ...)\n    Rip_sDamage = Rip_sDamage or {}\n    Rake_sDamage = Rake_sDamage or {}\n    Thrash_sDamage = Thrash_sDamage or {}\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and source == UnitGUID(\"player\") then\n        local _, _, _, destination, _, _, _, spell = ...\n        \n        -- snapshot on spellcast\n        if spell == 1079 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Rip_sDamage_cast = WA_stats_RipTick\n        elseif spell == 1822 and (param == \"SPELL_CAST_SUCCESS\" or param == \"SPELL_DAMAGE\" or param == \"SPELL_MISSED\") then\n            WA_calcStats_feral()\n            Rake_sDamage_cast = WA_stats_RakeTick\n        elseif spell == 106830 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Thrash_sDamage_cast = WA_stats_ThrashTick\n        end\n        \n        -- but only record the snapshot if it successfully applied\n        if spell == 1079 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rip_sDamage[destination] = Rip_sDamage_cast\n        elseif spell == 155722 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rake_sDamage[destination] = Rake_sDamage_cast\n        elseif spell == 106830 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Thrash_sDamage[destination] = Thrash_sDamage_cast\n        end\n        \n        -- clean up out of combat\n    elseif (not UnitAffectingCombat(\"player\")) and (not IsEncounterInProgress()) then\n        Rip_sDamage = {}\n        Rake_sDamage = {}\n        Thrash_sDamage = {}\n    end\nend",
				["spellIds"] = {
				},
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED,PLAYER_REGEN_ENABLED,PLAYER_ENTERING_WORLD,PLAYER_ALIVE",
				["check"] = "event",
				["use_unit"] = true,
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["desaturate"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["outline"] = "OUTLINE",
			["height"] = 0.999942064285278,
			["rotate"] = true,
			["load"] = {
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["additional_triggers"] = {
			},
			["mirror"] = false,
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["auto"] = true,
			["blendMode"] = "BLEND",
			["crop_y"] = 0,
			["yOffset"] = 0,
			["icon"] = true,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "SanUI_FeralSnapshotLogic",
			["conditions"] = {
			},
			["alpha"] = 1,
			["width"] = 0.999942064285278,
			["rotation"] = 0,
			["parent"] = "SnaUI_FeralBleedSnapshots",
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Icons\\",
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundOffset"] = 2,
		},
		["PhoGuild - Odyn Brand Purple Up"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_sound"] = true,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:PhoGuild - Odyn Brand Purple Up",
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["spellId"] = "227490",
				["custom_type"] = "event",
				["custom_hide"] = "timed",
				["names"] = {
				},
				["event"] = "Conditions",
				["use_unit"] = true,
				["unit"] = "player",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["name"] = "Branded",
				["subeventSuffix"] = "_CAST_START",
				["unevent"] = "auto",
				["subeventPrefix"] = "RANGE",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["frameStrata"] = 1,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1958",
				["use_zone"] = false,
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 1323038,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%s",
			["text2"] = "%p",
			["id"] = "PhoGuild - Odyn Brand Purple Up",
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "229579",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "Branded",
						["fullscan"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "231311",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
						["use_spellId"] = true,
						["name"] = "Runic Brand",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["spellIds"] = {
							231344, -- [1]
						},
						["names"] = {
							"Runic Brand", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 64,
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 3,
			["parent"] = "SanUI_Trial",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = false,
			["selfPoint"] = "CENTER",
		},
		["SanUI_Thrash"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 19,
			["xOffset"] = 224.266584007226,
			["yOffset"] = -103.253054428009,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["names"] = {
					"Thrash", -- [1]
				},
				["spellIds"] = {
					106832, -- [1]
				},
				["custom_hide"] = "timed",
				["unit"] = "target",
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["untrigger"] = {
			},
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_TargetDebuffs",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "     %s",
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Thrash",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["SnaUI_FeralBleedSnapshots"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_FeralSnapshotLogic", -- [1]
				"SanUI_FeralStatLogic", -- [2]
				"SanUI_RipRatio", -- [3]
				"SanUI_RakeRatio", -- [4]
				"SanUI_ThrashCatRatio", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 0,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["expanded"] = false,
			["activeTriggerMode"] = 0,
			["borderOffset"] = 5,
			["additional_triggers"] = {
			},
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SnaUI_FeralBleedSnapshots",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["unit"] = "player",
				["type"] = "aura",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
			},
			["borderEdge"] = "None",
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["untrigger"] = {
			},
		},
		["SanUI_Trial"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_taint-of-sea", -- [1]
				"SanUI_FoamMark", -- [2]
				"PhoGuild - Odyn Brand Blue Up", -- [3]
				"PhoGuild - Odyn Brand Green Up", -- [4]
				"PhoGuild - Odyn Brand Orange Up", -- [5]
				"PhoGuild - Odyn Brand Purple Up", -- [6]
				"PhoGuild - Odyn Brand Yellow Up", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 0,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "SanUI_Trial",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["yOffset"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = false,
		},
		["SanUI_Sunfire"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["ownOnly"] = true,
				["event"] = "Health",
				["unit"] = "target",
				["spellIds"] = {
					93402, -- [1]
				},
				["custom_hide"] = "timed",
				["names"] = {
					"Sunfire", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "SanUI_TargetDebuffs",
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["xOffset"] = 19.9999942779541,
			["text2FontSize"] = 24,
			["inverse"] = false,
			["text1"] = "%c",
			["yOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Sunfire",
			["text2"] = "%p",
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
	},	
	}
