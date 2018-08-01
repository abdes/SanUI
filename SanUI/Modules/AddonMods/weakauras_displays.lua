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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["text1Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["disjunctive"] = "all",
			["text2FontSize"] = 24,
			["width"] = 40,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_ClearcastingFeral",
			["text1Font"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["yOffset"] = 0,
			["inverse"] = false,
			["xOffset"] = 0,
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["Raidmark"] = {
			["user_y"] = 0,
			["modelIsUnit"] = false,
			["init_started"] = 1,
			["text1FontSize"] = 14,
			["cooldownTextEnabled"] = true,
			["stacksFlags"] = "None",
			["yOffset"] = -24.4229431152344,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorPoint"] = "CENTER",
			["wordWrap"] = "WordWrap",
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/NknEUCGFZ",
			["actions"] = {
				["start"] = {
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["sound_channel"] = "Master",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["text1Point"] = "BOTTOMRIGHT",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0,
			["crop_y"] = 0.41,
			["anchorFrameType"] = "SCREEN",
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sequence"] = 1,
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["scale"] = 1,
			["id"] = "Raidmark",
			["stacksFont"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["timerSize"] = 12,
			["init_completed"] = 1,
			["auto"] = true,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["textFont"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["spark"] = false,
			["compress"] = false,
			["text2Enabled"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["text1"] = " ",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["displayText"] = "%i",
			["fixedWidth"] = 200,
			["glow"] = true,
			["iconInset"] = 1,
			["outline"] = "None",
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkOffsetX"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
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
			["border"] = false,
			["untrigger"] = {
				["custom"] = "function()\n    return true\nend",
			},
			["desaturateBackground"] = false,
			["model_x"] = 0,
			["text1Font"] = "Friz Quadrata TT",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%n",
			["user_x"] = 0,
			["textSize"] = 12,
			["internalVersion"] = 3,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "bounce",
					["type"] = "preset",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "status",
				["debuffType"] = "HELPFUL",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["unit"] = "player",
				["custom"] = "function()\n    local raid_mark = GetRaidTargetIndex(\"player\")\n    if raid_mark ~= nil then \n        return true\n    end\nend",
				["customIcon"] = "function()\n    local mark = GetRaidTargetIndex(\"player\")\n    if UnitExists(\"player\") == true and mark ~= nil then\n        return    [[Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_]].. mark ..[[.blp]]\n    end\nend",
				["check"] = "update",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
			},
			["text"] = true,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["textFlags"] = "None",
			["barInFront"] = true,
			["height"] = 131.082672119141,
			["timer"] = true,
			["timerFlags"] = "None",
			["rotate"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 130,
			["text2Containment"] = "INSIDE",
			["sparkRotationMode"] = "AUTO",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateForeground"] = false,
			["mirror"] = false,
			["borderEdge"] = "None",
			["sparkWidth"] = 10,
			["borderSize"] = 16,
			["backgroundOffset"] = 2,
			["icon_side"] = "RIGHT",
			["icon"] = true,
			["text2Point"] = "CENTER",
			["sparkHeight"] = 30,
			["xOffset"] = -362.6923828125,
			["rotateText"] = "NONE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["borderOffset"] = 5,
			["additional_triggers"] = {
			},
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 136.08268737793,
			["model_z"] = 0,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_realm"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["text1Enabled"] = false,
			["stacksSize"] = 12,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["internalVersion"] = 3,
			["glow"] = false,
			["parent"] = "SanUI_Buffs",
			["text2Containment"] = "INSIDE",
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
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%s",
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_GatheringClouds",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["untrigger"] = {
			},
			["disjunctive"] = "all",
			["numTriggers"] = 1,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["text1Containment"] = "INSIDE",
		},
		["SanUI_PredatorySwiftness"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
				["use_spec"] = true,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["icon"] = true,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Font"] = "2002",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
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
			["parent"] = "SanUI_Buffs",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["untrigger"] = {
			},
			["id"] = "SanUI_PredatorySwiftness",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["inverse"] = false,
			["disjunctive"] = "all",
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["desaturate"] = false,
		},
		["SanUI_SotF"] = {
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
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
			["internalVersion"] = 3,
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
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 4,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["icon"] = true,
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
			["yOffset"] = 0,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
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
			["id"] = "SanUI_SotF",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
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
			["scale"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderEdge"] = "None",
			["internalVersion"] = 3,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
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
			["xOffset"] = -133,
		},
		["SanUI_SunfireC 2"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -233,
			["stacksFlags"] = "None",
			["yOffset"] = -11.9999685287476,
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
				0.568627450980392, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Tukui_Blank_Texture",
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
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
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
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					93402, -- [1]
				},
				["unit"] = "target",
				["showOn"] = "showOnActive",
				["names"] = {
					"Sunfire", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["parent"] = "SanUI_ChickenDots",
			["auto"] = true,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["textSize"] = 12,
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["height"] = 25,
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderSize"] = 16,
			["borderInFront"] = false,
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["sparkHeight"] = 30,
			["displayTextRight"] = "%p",
			["customTextUpdate"] = "update",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["sparkOffsetX"] = 0,
			["id"] = "SanUI_SunfireC 2",
			["sparkWidth"] = 10,
			["frameStrata"] = 1,
			["width"] = 110,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["keepAspectRatio"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
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
			["text2Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["parent"] = "SanUI_Urgent",
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_BerserkOffCD",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["numTriggers"] = 1,
			["text1Font"] = "SCT TwCenMT",
			["init_started"] = 1,
			["conditions"] = {
			},
			["text1Containment"] = "INSIDE",
			["yOffset"] = 0,
		},
		["SanUI_LunarEmpowerment"] = {
			["glow"] = false,
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					164547, -- [1]
				},
				["custom_hide"] = "timed",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Lunar Empowerment", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Enabled"] = true,
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = false,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "    %s",
			["text2Point"] = "BOTTOMRIGHT",
			["text2"] = "%s",
			["zoom"] = 0.3,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_LunarEmpowerment",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["parent"] = "SanUI_Buffs",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["internalVersion"] = 3,
		},
		["Dr - R - RDSW2 Core"] = {
			["outline"] = "OUTLINE",
			["parent"] = "Resto Druid Stat Weights 2.1",
			["displayText"] = "  ",
			["customText"] = "function()\n    local mstTrunc\n    local hstTrunc\n    local crtTrunc\n    local vrsTrunc\n    --print(WA_SW_ENC_MST_HEAL, WA_SW_ENC_HST_HEAL, WA_SW_ENC_CRT_HEAL, WA_SW_ENC_VRS_HEAL)\n    if WA_SW_ENC_MST_HEAL > 1000000 then\n        mstTrunc = format(\"%.2fM\", WA_SW_ENC_MST_HEAL / 1000000)\n    elseif  WA_SW_ENC_MST_HEAL > 1000 then\n        mstTrunc = format(\"%.2fk\", WA_SW_ENC_MST_HEAL / 1000)\n    else mstTrunc = format(\"%.2f\", WA_SW_ENC_MST_HEAL) end\n    \n    if WA_SW_ENC_HST_HEAL > 1000000 then\n        hstTrunc = format(\"%.2fM\", WA_SW_ENC_HST_HEAL / 1000000)\n    elseif  WA_SW_ENC_HST_HEAL > 1000 then\n        hstTrunc = format(\"%.2fk\", WA_SW_ENC_HST_HEAL / 1000)\n    else hstTrunc = format(\"%.2f\", WA_SW_ENC_HST_HEAL) end\n    \n    if WA_SW_ENC_CRT_HEAL > 1000000 then\n        crtTrunc = format(\"%.2fM\", WA_SW_ENC_CRT_HEAL / 1000000)\n    elseif  WA_SW_ENC_CRT_HEAL > 1000 then\n        crtTrunc = format(\"%.2fk\", WA_SW_ENC_CRT_HEAL / 1000)\n    else crtTrunc = format(\"%.2f\", WA_SW_ENC_CRT_HEAL) end\n    \n    if WA_SW_ENC_VRS_HEAL > 1000000 then\n        vrsTrunc = format(\"%.2fM\", WA_SW_ENC_VRS_HEAL / 1000000)\n    elseif  WA_SW_ENC_VRS_HEAL > 1000 then\n        vrsTrunc = format(\"%.2fk\", WA_SW_ENC_VRS_HEAL / 1000)\n    else vrsTrunc = format(\"%.2f\", WA_SW_ENC_VRS_HEAL) end\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    return string.format(\"Encounter Only Stat Values:\"\n        .. \"\\n   MST: %.2f\"\n        .. \"\\n   HST: %.2f\"\n        .. \"\\n   CRT: %.2f\"\n        .. \"\\n   VRS: %.2f\"\n        .. \"\\n\\nHealing Done:\"\n        .. \"\\n   H-MST: %s\"\n        .. \"\\n   H-HST: %s\"\n        .. \"\\n   H-CRT: %s\"\n        .. \"\\n   H-VRS: %s\",\n        WA_SW_ENC_MST, \n        WA_SW_ENC_HST, \n        WA_SW_ENC_CRT, \n        WA_SW_ENC_VRS,  \n        mstTrunc,\n        hstTrunc,\n        crtTrunc,\n    vrsTrunc)\n    \n    \nend",
			["untrigger"] = {
				["custom"] = "function()\nreturn true\nend",
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["custom"] = "--Set Rating Per 1% value here.\naura_env.MSTRATINGCONV = 66666.66666\naura_env.HSTRATINGCONV = 37500\naura_env.CRTRATINGCONV = 40000\naura_env.VRSRATINGCONV = 47500\naura_env.LEERATINGCONV = 23000\n--Set Regrowth Passive Bonus Crit here.\naura_env.REGROWTHBASECRT = 0.4\naura_env.LIVINGSEEDBASEPERCENT = 0.25\n\n--List of Hots for hCount()\naura_env.hotList = \n{774,       --Rejuvenation \n    155777, --Germination\n    33763,  --Lifebloom\n    8936,   --Regrowth\n    48438,  --Wild Growth\n    207386, --Spring Blossoms\n    200389, --Cultivation\n    102352, --Cenarion Ward\n    253432  --Dreamer (T21)\n}     \n\nLeaf_RDSW = Leaf_RDSW or {}\n\n\n\n--Setting spell names for all client versions.\naura_env.spells = {}\naura_env.spells.rejuvenation   = select(1, GetSpellInfo(774))\naura_env.spells.germination    = select(1, GetSpellInfo(155777))\naura_env.spells.lifebloom      = select(1, GetSpellInfo(33763))\naura_env.spells.regrowth       = select(1, GetSpellInfo(8936))\naura_env.spells.wildgrowth     = select(1, GetSpellInfo(48438))\naura_env.spells.springblossoms = select(1, GetSpellInfo(207386))\naura_env.spells.cultivation    = select(1, GetSpellInfo(200389))\naura_env.spells.cenarionward   = select(1, GetSpellInfo(102352))\naura_env.spells.efflorescence  = select(1, GetSpellInfo(145205))\naura_env.spells.livingseed     = select(1, GetSpellInfo(48500))\naura_env.spells.swiftmend      = select(1, GetSpellInfo(18562))\naura_env.spells.healingtouch   = select(1, GetSpellInfo(5185))\naura_env.spells.tranquility    = select(1, GetSpellInfo(740))\naura_env.spells.renewal        = select(1, GetSpellInfo(108238))\naura_env.spells.leech          = select(1, GetSpellInfo(143924))\naura_env.spells.dreamer        = select(1, GetSpellInfo(253432))\n--aura_env.spells.refractiveShell = select(1, GetSpellInfo(252207))\n\n\n\n--Initializing Combat Stats (updated on event)\n--[[\naura_env.mstRating = GetCombatRating(CR_MASTERY)\naura_env.hstRating = GetCombatRating(CR_HASTE_SPELL)\naura_env.crtRating = GetCombatRating(CR_CRIT_SPELL)\naura_env.vrsRating = GetCombatRating(CR_VERSATILITY_DAMAGE_DONE)\n\naura_env.bonusMst = aura_env.mstRating / aura_env.MSTRATINGCONV\naura_env.bonusHst = aura_env.hstRating / aura_env.HSTRATINGCONV\naura_env.bonusCrt = aura_env.crtRating / aura_env.CRTRATINGCONV \naura_env.bonusVrs = aura_env.vrsRating / aura_env.VRSRATINGCONV\naura_env.bonusSpellPower = aura_env.spellPower - select(3, UnitStat('player', 4))\n]]\n\naura_env.mstPerc = GetMasteryEffect() / 100--GetCombatRatingBonus(26) / 100 * hCount  \naura_env.hstPerc = UnitSpellHaste(\"player\") / 100\naura_env.crtPerc = GetCritChance() / 100\naura_env.vrsPerc = (GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)) / 100\naura_env.leePerc = GetLifesteal() / 100\naura_env.spellPower = GetSpellBonusDamage(4)\n\n\n\n\n--Initializing output values\nLEAFUI_CUR_SP = LEAFUI_CUR_SP or 0\nLEAFUI_CUR_MST = LEAFUI_CUR_MST or 0\nLEAFUI_CUR_HST = LEAFUI_CUR_HST or 0\nLEAFUI_CUR_CRT = LEAFUI_CUR_CRT or 0\nLEAFUI_CUR_VRS = LEAFUI_CUR_VRS or 0\nLEAFUI_CUR_LEE = LEAFUI_CUR_LEE or 0\n\nLEAFUI_CUR_SP_HEAL = LEAFUI_CUR_SP_HEAL or 0\nLEAFUI_CUR_MST_HEAL = LEAFUI_CUR_MST_HEAL or 0\nLEAFUI_CUR_HST_HEAL = LEAFUI_CUR_HST_HEAL or 0\nLEAFUI_CUR_CRT_HEAL = LEAFUI_CUR_CRT_HEAL or 0\nLEAFUI_CUR_VRS_HEAL = LEAFUI_CUR_VRS_HEAL or 0\nLEAFUI_CUR_LEE_HEAL = LEAFUI_CUR_LEE_HEAL or 0\n\nLEAFUI_TTL_SP = LEAFUI_TTL_SP or 0\nLEAFUI_TTL_MST = LEAFUI_TTL_MST or 0\nLEAFUI_TTL_HST = LEAFUI_TTL_HST or 0\nLEAFUI_TTL_CRT = LEAFUI_TTL_CRT or 0\nLEAFUI_TTL_VRS = LEAFUI_TTL_VRS or 0\nLEAFUI_TTL_LEE = LEAFUI_TTL_LEE or 0\n\nLEAFUI_TTL_SP_HEAL = LEAFUI_TTL_SP_HEAL or 0\nLEAFUI_TTL_MST_HEAL = LEAFUI_TTL_MST_HEAL or 0\nLEAFUI_TTL_HST_HEAL = LEAFUI_TTL_HST_HEAL or 0\nLEAFUI_TTL_CRT_HEAL = LEAFUI_TTL_CRT_HEAL or 0\nLEAFUI_TTL_VRS_HEAL = LEAFUI_TTL_VRS_HEAL or 0\nLEAFUI_TTL_LEE_HEAL = LEAFUI_TTL_LEE_HEAL or 0\nWeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n\n\n\n--Initialize flags\nif aura_env.encounter == nil then aura_env.encounter = false end\nif WA_RDSW_expire  == nil then WA_RDSW_expire = {} end\nif WA_RDSW_guid  == nil then WA_RDSW_guid = {} end\nif WA_RDSW_reduce  == nil then WA_RDSW_reduce = {} end\n\n\n\n\n--Set Race Based Characteristics\nif select(1, UnitRace(\"player\")) == \"Tauren\" then \n    aura_env.taurenRacial = 0.02\nelse aura_env.taurenRacial = 0\nend\n\naura_env.critBonusOutput = aura_env.critBonusOutput or 0\nif IsEquippedItem(\"Drape of Shame\") then aura_env.critBonusOutput = 0.1 end\n--Tauren: 7326\n--Worgen: 7328\n--NE    : 7325\n--Troll : 7324 \n-------------------",
					["do_custom"] = true,
				},
			},
			["internalVersion"] = 3,
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
				["custom_type"] = "event",
				["event"] = "Health",
				["unit"] = "player",
				["custom_hide"] = "custom",
				["spellIds"] = {
				},
				["events"] = "COMBAT_LOG_EVENT_UNFILTERED ENCOUNTER_START ENCOUNTER_END COMBAT_RATING_UPDATE UNIT_STATS PLAYER_ENTERING_WORLD",
				["custom"] = "--Original Author Manaleaf - Sargeras\n--Updated for patch 7.3.2 by Voulk (Voulk#1858 on discord)\n\n--[[ \nVERSION 2.1\n- Dreamer now scales correctly with all secondary stats.\n- Corrected Leech calculations\n\n\nVERSION 2.0\n- Leech stat weight added.\n- Added normalization around int = 1 instead of highest stat weight\n- Added support for the T21 dreamer HoT\n- Added support for wide monitor resolutions\n\n--]]\n\nfunction(e,...)\n    local timeStamp = GetTime()\n    \n    --Returns the current number of Player casted hots on the unit\n    local function hotCounter(name)\n        local destUnit\n        local grpCount = GetNumGroupMembers()\n        if UnitInRaid(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"raid\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"raid\" .. i\n                    break\n                end\n            end   \n        elseif UnitInParty(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"party\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"party\" .. i\n                    break\n                end\n            end \n        elseif UnitName(\"player\") == name then\n            \n            destUnit = \"player\" \n        end\n        if not destUnit then\n            return -1 --Failure Flag\n        end\n        local hCount = 0 \n        for k,v in ipairs(aura_env.hotList) do\n            local spellName = GetSpellInfo(v)\n            if UnitBuff(destUnit, spellName, nil, \"PLAYER\") then hCount = hCount + 1 end \n        end\n        return hCount\n    end\n    \n    --Inserts a row into a chain of tables.\n    local function insert(i, t1, t2, t3)\n        tinsert(WA_RDSW_expire, i, t1)\n        tinsert(WA_RDSW_guid, i, t2)\n        tinsert(WA_RDSW_reduce, i, t3)\n    end\n    \n    --Removes a row into a chain of tables.\n    local function removet(i, t1, t2, t3)\n        table.remove(t1, i)\n        table.remove(t2, i)\n        table.remove(t3, i)\n    end\n    \n    \n    --Function finds the lowest non-zero, non-negative value\n    --Still returns 0 if all arguements are 0.\n    local function maxButNotZero(n1, n2, n3, n4, n5)\n        local max = 1\n        if n1 ~= nil and n1 > max then max = n1 end\n        if n2 ~= nil and n2 > max then max = n2 end\n        if n3 ~= nil and n3 > max then max = n3 end\n        if n4 ~= nil and n4 > max then max = n4 end\n        if n5 ~= nil and n5 > max then max = n5 end\n        return max\n    end\n    \n    --[[\n    Returns 1 if player is inside instance and player is in a party.\n    Returns 2 if player is inside instance and player is in not in a party (is in a raid).\n    Returns 3 if player is not inside instance.\n    ]]\n    local function instanceCheck()\n        local instanced, instanceType = IsInInstance()\n        if instanced then\n            if instanceType == \"party\" then\n                return 1\n            else\n                return 2\n            end\n        end\n        return 0\n    end\n    \n    --Allocates stat values\n    local function allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal, leeHeal)\n        \n        --Total Healing Score Allocation\n        LEAFUI_TTL_SP_HEAL = LEAFUI_TTL_SP_HEAL + spHeal\n        LEAFUI_TTL_MST_HEAL = LEAFUI_TTL_MST_HEAL + mstHeal\n        LEAFUI_TTL_HST_HEAL = LEAFUI_TTL_HST_HEAL + hstHeal\n        LEAFUI_TTL_CRT_HEAL = LEAFUI_TTL_CRT_HEAL + crtHeal\n        LEAFUI_TTL_VRS_HEAL = LEAFUI_TTL_VRS_HEAL + vrsHeal\n        LEAFUI_TTL_LEE_HEAL = LEAFUI_TTL_LEE_HEAL + leeHeal\n        \n        --Current Encounter Healing Score Allocation\n        LEAFUI_CUR_SP_HEAL = LEAFUI_CUR_SP_HEAL + spHeal\n        LEAFUI_CUR_MST_HEAL = LEAFUI_CUR_MST_HEAL + mstHeal\n        LEAFUI_CUR_HST_HEAL = LEAFUI_CUR_HST_HEAL + hstHeal\n        LEAFUI_CUR_CRT_HEAL = LEAFUI_CUR_CRT_HEAL + crtHeal\n        LEAFUI_CUR_VRS_HEAL = LEAFUI_CUR_VRS_HEAL + vrsHeal\n        LEAFUI_CUR_LEE_HEAL = LEAFUI_CUR_LEE_HEAL + leeHeal\n        \n        --Stat Value Score Allocation\n        \n        --local maxCurHeal = maxButNotZero(LEAFUI_CUR_SP_HEAL, LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL) \n        --local maxTtlHeal = maxButNotZero(LEAFUI_TTL_SP_HEAL, LEAFUI_TTL_MST_HEAL, LEAFUI_TTL_HST_HEAL, LEAFUI_TTL_CRT_HEAL, LEAFUI_TTL_VRS_HEAL) \n        \n        LEAFUI_CUR_SP =  max(LEAFUI_CUR_SP_HEAL, 1)\n        LEAFUI_CUR_MST = LEAFUI_CUR_MST_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_HST = LEAFUI_CUR_HST_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_CRT = LEAFUI_CUR_CRT_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_VRS = LEAFUI_CUR_VRS_HEAL / LEAFUI_CUR_SP \n        LEAFUI_CUR_LEE = LEAFUI_CUR_LEE_HEAL / LEAFUI_CUR_SP\n        \n        LEAFUI_TTL_SP =  max(LEAFUI_TTL_SP_HEAL, 1)\n        LEAFUI_TTL_MST = LEAFUI_TTL_MST_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_HST = LEAFUI_TTL_HST_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_CRT = LEAFUI_TTL_CRT_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_VRS = LEAFUI_TTL_VRS_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_LEE = LEAFUI_TTL_LEE_HEAL / LEAFUI_TTL_SP\n        \n        --[[LEAFUI_CUR_SP = LEAFUI_CUR_SP_HEAL / maxCurHeal\n        LEAFUI_CUR_MST = LEAFUI_CUR_MST_HEAL / maxCurHeal\n        LEAFUI_CUR_HST = LEAFUI_CUR_HST_HEAL / maxCurHeal\n        LEAFUI_CUR_CRT = LEAFUI_CUR_CRT_HEAL / maxCurHeal\n        LEAFUI_CUR_VRS = LEAFUI_CUR_VRS_HEAL / maxCurHeal    \n        \n        LEAFUI_TTL_SP =  LEAFUI_TTL_SP_HEAL / maxTtlHeal\n        LEAFUI_TTL_MST = LEAFUI_TTL_MST_HEAL / maxTtlHeal\n        LEAFUI_TTL_HST = LEAFUI_TTL_HST_HEAL / maxTtlHeal\n        LEAFUI_TTL_CRT = LEAFUI_TTL_CRT_HEAL / maxTtlHeal\n        LEAFUI_TTL_VRS = LEAFUI_TTL_VRS_HEAL / maxTtlHeal ]]  \n        \n        --[[\n        print(\"------------------\")\n        print(LEAFUI_CUR_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        print(\"------------------\")\n        print(LEAFUI_TTL_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        ]]\n        \n    end\n    \n    \n    \n    --Calculates and Sets stat weight values\n    local function decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid, overhealFlag)\n        \n        \n        --Mastery Percentage\n        local hCount = hotCounter(name)\n        if hCount == -1 then return true end\n        local mstPerc = aura_env.mstPerc * hCount\n        \n        --Haste Percentage \n        local hstPerc --Only for Hots\n        if hstFlag then\n            hstPerc = aura_env.hstPerc\n        else \n            hstPerc = 0\n        end\n        \n        --Get Base Heal\n        if crtFlag == true then\n            heal = heal / (2 + aura_env.critBonusOutput)\n        end\n        \n        --Crit Percentage (Bonus)\n        local crtPerc \n        if sklFlag == 1 then \n            if overHeal ~= 0 then return true end\n            crtPerc = (aura_env.crtPerc +  aura_env.REGROWTHBASECRT) * (1 + aura_env.critBonusOutput)\n        else\n            crtPerc = aura_env.crtPerc * (1 + aura_env.critBonusOutput)\n        end\n        \n        \n        --Spell Coeff.\n        local sce = heal / ( aura_env.spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) )\n        \n        local spellPower  = sce * aura_env.spellPower\n        --Haste Calc (Only for Hots)\n        if hstFlag then\n            hstHeal = spellPower * (1 + mstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) / aura_env.HSTRATINGCONV \n        else \n            hstHeal = 0\n        end\n        \n        --Mastery Calc\n        mstHeal = spellPower * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * hCount / aura_env.MSTRATINGCONV\n        \n        --Crit Calc\n        crtHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + aura_env.critBonusOutput) / aura_env.CRTRATINGCONV\n        \n        --Versatility calc\n        vrsHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + crtPerc) / aura_env.VRSRATINGCONV\n        \n        -- Leech calc\n        if UnitHealth(\"player\") ~= UnitHealthMax(\"player\") and tGuid ~= UnitGUID(\"player\") then \n            leeHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + crtPerc) * (1 + aura_env.vrsPerc) / aura_env.LEERATINGCONV\n            -- 4.5 * 70000 * 1.25 * 1.3 * 1.2 * 1.05 / 23000 = 28\n            --print(\"Heal\" .. heal .. \". LeeHeal: \" .. leeHeal .. \". spHeal \" .. spHeal)\n        else\n            leeHeal = 0\n        end\n        \n        --Spell Power Calc\n        --1.05 = Primary Stat Bonus from Armor\n        spHeal = sce * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * 1.05\n        -- 4.5 * 1.25 * 1.3 * 1.2 * 1.05 * 1.05 = 9.6\n        \n        --[[\n        print(\"---------------\")\n        print(\"spHeal:\", spHeal)\n        print(\"mstHeal:\", mstHeal)\n        print(\"vrsHeal:\", vrsHeal)\n        print(\"hstHeal:\", hstHeal)\n        print(\"crtHeal:\", crtHeal)\n        print(\"---------------\")\n        ]]\n        --print(overhealFlag)\n        if (overhealFlag) then allocate(0, 0, 0, 0, 0, leeHeal)\n        else allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal, leeHeal)\n        end\n    end\n    \n    --Sets Encounter data to be printed to file.\n    --Para mode: sets print out to stat either \"WIPE\" if mode - 0 or \"KILL\" if mode = 1\n    local function printToFile(eID, eName, difficulty, raidSize, mode) \n        local outcome\n        if mode == 0 or mode == 1 then\n            if mode == 0 then outcome = \"WIPE\"\n            elseif mode == 1 then outcome = \"KILL\"\n            end\n            \n            local outString = \"ENCOUNTER: %s eID: %d \" \n            .. \"Time: %s \"\n            .. \"Player: %s \"\n            .. \"Difficulty: %d raidSize: %d \"\n            .. \"Outcome: %s \"\n            .. \"+_ \"\n            .. \"INT: %.4f \"\n            .. \"MST: %.4f \"\n            .. \"HST: %.4f \"\n            .. \"CRT: %.4f \"\n            .. \"VRS: %.4f \"\n            .. \"LEE: %.4f \"\n            \n            \n            \n            tinsert(Leaf_RDSW, string.format(outString,\n                    eName, \n                    eID, \n                    aura_env.time,\n                    UnitName(\"player\"),\n                    difficulty, \n                    raidSize, \n                    outcome, \n                    LEAFUI_CUR_SP,\n                    LEAFUI_CUR_MST,\n                    LEAFUI_CUR_HST,\n                    LEAFUI_CUR_CRT,\n                    LEAFUI_CUR_VRS,\n            LEAFUI_CUR_LEE))\n        end    \n    end\n    \n    --Clears the current healing and stat values\n    local function clearStats()\n        LEAFUI_CUR_SP = 0\n        LEAFUI_CUR_MST = 0\n        LEAFUI_CUR_HST = 0\n        LEAFUI_CUR_CRT = 0\n        LEAFUI_CUR_VRS = 0\n        LEAFUI_CUR_LEE = 0\n        \n        LEAFUI_CUR_SP_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_HST_HEAL = 0\n        LEAFUI_CUR_CRT_HEAL = 0\n        LEAFUI_CUR_VRS_HEAL = 0\n        LEAFUI_CUR_LEE_HEAL = 0\n    end\n    \n    \n    --MAIN--\n    if e == \"ARTIFACT_UPDATE\" then\n        updateArtifact()\n        return true\n    end\n    \n    local function updateArtifact()\n        if IsEquippedItem(128306) == true and aura_env.apUpdated == false then\n            SocketInventoryItem(16)\n            seedsPoints, _ = select(3,C_ArtifactUI.GetPowerInfo(131))\n            aura_env.apUpdated = true\n            aura_env.REGROWTHBASECRT = .4 + .08 * seedsPoints\n        end\n    end\n    \n    --Updates Character Stats\n    local function updateStats()\n        aura_env.mstPerc = GetMasteryEffect() / 100 --GetCombatRatingBonus(26) / 100 * hCount  \n        aura_env.hstPerc = UnitSpellHaste(\"player\") / 100\n        aura_env.crtPerc = GetCritChance() / 100\n        aura_env.vrsPerc = (GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)) / 100\n        aura_env.spellPower = GetSpellBonusDamage(4)\n        aura_env.leePerc = GetLifesteal() / 100\n        \n        updateArtifact()\n        \n        if IsEquippedItem(\"Drape of Shame\") then \n            aura_env.critBonusOutput = 0.05 * (1 + aura_env.taurenRacial)\n        end\n    end\n    \n    if e == \"PLAYER_ENTERING_WORLD\" then\n        updateStats()\n        if instanceCheck() == 1 then\n            aura_env.encounter = true\n        elseif instanceCheck() == 0 then\n            aura_env.encounter = false\n        end\n    elseif e == \"UNIT_STATS\" or e == \"COMBAT_RATING_UPDATE\" then      \n        updateStats()\n    elseif e == \"ENCOUNTER_START\" then \n        if instanceCheck() == 2 then\n            print(\"RDSW2: Boss Encounter has Begun. Recording.\")\n            aura_env.time = date(\"%m/%d/%y %H:%M:%S\")\n            aura_env.encounter = true\n            clearStats()\n        end\n    elseif  e == \"ENCOUNTER_END\" then \n        if instanceCheck() == 2 then\n            if IsAddOnLoaded(\"RDSW\") then \n                print(\"RDSW2: Boss Encounter has Ended. Recording to file.\")\n            else\n                print(\"RDSW2: Boss Encounter has Ended.\")\n            end\n            printToFile(...) \n            if UnitExists(\"boss1\") == false and (UnitHealth(\"boss1\") == 0 or  UnitIsEnemy(\"player\",\"boss1\") == false) then \n                aura_env.encounter = false\n            end\n        end\n    elseif e == \"COMBAT_LOG_EVENT_UNFILTERED\" and aura_env.encounter == true then \n        --If overheal is present and Living Seed table does not need to be updated. Cancel operation.\n        --if select(16,...) ~= 0 and (sName ~= aura_env.spells.livingseed or sName ~= aura_env.spells.regrowth) then\n        --    WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n        --    return true\n        --end\n        \n        local heal, overHeal, crtFlag, effHeal, sName, hstFlag, sklFlag, tGuid, overhealFlag\n        sklFlag = 0\n        local sType = select(2, ...)\n        if select(4, ...) == UnitGUID(\"player\") then \n            sName = select(13,...)\n            heal = select(15, ...)\n            \n            if sType == \"SPELL_DAMAGE\" or sType == \"SPELL_PERIODIC_DAMAGE\" and UnitHealth(\"player\") ~= UnitHealthMax(\"player\") then\n                -- Perform Leech calculations on damage dealt.\n                local missingHealth, leeHeal, damage\n                damage = select(15, ...)\n                missingHealth = UnitHealthMax(\"player\") - UnitHealth(\"player\")       \n                leeHeal = min(damage * 0.005, missingHealth) / 115   \n                LEAFUI_CUR_LEE_HEAL = LEAFUI_CUR_LEE_HEAL + leeHeal\n                LEAFUI_TTL_LEE_HEAL = LEAFUI_TTL_LEE_HEAL + leeHeal\n                --print(\"Damage Leech\")\n                \n                --Hot Spells (haste effected)\n            elseif sType == \"SPELL_PERIODIC_HEAL\" then\n                if sName == aura_env.spells.rejuvenation\n                or sName == aura_env.spells.germination\n                or sName == aura_env.spells.lifebloom\n                or sName == aura_env.spells.regrowth\n                or sName == aura_env.spells.wildgrowth\n                or sName == aura_env.spells.springblossoms\n                or sName == aura_env.spells.cultivation\n                or sName == aura_env.spells.cenarionward\n                or sName == aura_env.spells.dreamer\n                then hstFlag = true end\n                \n                --Direct Healing Spells (Mostly not Haste Effected)   \n            elseif sType == \"SPELL_HEAL\" then \n                sName,_= select(13,...)\n                if sName == aura_env.spells.tranquility then\n                    return true\n                elseif sName == aura_env.spells.efflorescence then hstFlag = true\n                    \n                elseif sName == aura_env.spells.regrowth then \n                    sklFlag = 1\n                    hstFlag = false\n                    \n                elseif sName == aura_env.spells.livingseed then\n                    sklFlag = 2\n                    hstFlag = false\n                    --elseif sName == aura_env.spells.refractiveShell then\n                    --    sklFlag = 3\n                    --    hstFlag = false\n                    \n                elseif sName == aura_env.spells.swiftmend\n                or sName == aura_env.spells.healingtouch\n                or sName == aura_env.spells.lifebloom\n                then hstFlag = false end\n            end\n            \n            if hstFlag ~= nil then    --If hstFlag == nil, healing was not done by a spell in the above listing. ie: Ysera's gift is uneffected by secondaries\n                tGuid, name,_= select(8,...)\n                heal,_,_,crtFlag,_ = select(15,...)\n                overheal = select(16, ...)\n                \n                if overheal ~= nil and overheal ~= 0 then \n                    overhealFlag = true\n                    --print(\"Overheal: \" .. overheal)\n                else overhealFlag = false end\n                \n                decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid, overhealFlag)\n            end         \n        end\n        WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n    end\n    return true\nend",
				["subeventSuffix"] = "_CAST_START",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["font"] = "Vixar",
			["height"] = 11.789478302002,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
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
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_realm"] = false,
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["init_completed"] = 1,
			["width"] = 10.1052560806274,
			["justify"] = "LEFT",
			["xOffset"] = 0,
			["additional_triggers"] = {
			},
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["yOffset"] = -125,
			["numTriggers"] = 1,
			["id"] = "Dr - R - RDSW2 Core",
			["conditions"] = {
			},
			["selfPoint"] = "BOTTOM",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_LegOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "slidetop",
				},
				["main"] = {
					["preset"] = "spin",
					["type"] = "preset",
					["duration_type"] = "seconds",
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
				["custom_hide"] = "timed",
				["spellName"] = 221992,
				["charges_operator"] = ">=",
				["charges"] = "2",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["subeventPrefix"] = "SPELL",
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
				["unevent"] = "auto",
				["unit"] = "player",
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_spellknown"] = false,
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 235966,
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
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 144258,
				["spellName"] = 221992,
			},
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Font"] = "SCT TwCenMT",
			["glow"] = false,
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["text2FontSize"] = 24,
			["width"] = 40,
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["id"] = "SanUI_LegOffCD",
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
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["cooldownTextEnabled"] = true,
			["init_started"] = 1,
			["conditions"] = {
			},
			["parent"] = "SanUI_Urgent",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_Clearcasting 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					223819, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnActive",
				["names"] = {
					"Divine Purpose", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 19,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[4] = true,
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["icon"] = true,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["width"] = 40,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "%c",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_Clearcasting 3",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["inverse"] = false,
			["glow"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_Lazy Apex Predator"] = {
			["glow"] = true,
			["text1FontSize"] = 12,
			["disjunctive"] = "any",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["names"] = {
					"Apex Predator", -- [1]
				},
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["load"] = {
				["ingroup"] = {
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
				["use_class"] = true,
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
				["use_spec"] = true,
				["use_combat"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["parent"] = "SanUI_Buffs",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["inverse"] = false,
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
			["yOffset"] = 0,
			["text2FontSize"] = 24,
			["width"] = 64,
			["frameStrata"] = 1,
			["text1"] = "%s",
			["text2Point"] = "CENTER",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = false,
			["stickyDuration"] = false,
			["id"] = "SanUI_Lazy Apex Predator",
			["text2Font"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["cooldownTextEnabled"] = true,
			["init_started"] = 1,
			["displayIcon"] = 132127,
			["internalVersion"] = 3,
			["xOffset"] = 0,
		},
		["SanUI_Judgement"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
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
			["keepAspectRatio"] = false,
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
					20271, -- [1]
				},
				["custom_hide"] = "timed",
				["showOn"] = "showOnActive",
				["names"] = {
					"Judgment", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["debuffType"] = "HARMFUL",
			},
			["text1Containment"] = "INSIDE",
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
						[16] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
					},
				},
				["class"] = {
					["single"] = "PALADIN",
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 3,
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_TargetDebuffs",
			["yOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["icon"] = true,
			["id"] = "SanUI_Judgement",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 39.9999885559082,
			["glow"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["desaturate"] = false,
		},
		["SanUI_BlessingOfTheAshbringer"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Urgent",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["preset"] = "slidetop",
				},
				["main"] = {
					["preset"] = "spin",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["itemName"] = 151960,
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["charges_operator"] = ">=",
				["charges"] = "2",
				["spellName"] = 221992,
				["unevent"] = "auto",
				["use_showOn"] = true,
				["unit"] = "player",
				["use_itemName"] = true,
				["event"] = "Cooldown Progress (Item)",
				["realSpellName"] = "Cleansing Wisp",
				["use_spellName"] = true,
				["spellIds"] = {
					238098, -- [1]
				},
				["type"] = "aura",
				["showOn"] = "showOnMissing",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
					"Blessing of the Ashbringer", -- [1]
				},
				["use_unit"] = true,
			},
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PALADIN",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["arena"] = true,
						["twentyfive"] = true,
						["pvp"] = true,
					},
				},
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
				["spec"] = {
					["single"] = 3,
					["multi"] = {
						[4] = true,
					},
				},
				["use_name"] = false,
				["use_spellknown"] = false,
				["name"] = "Affinity",
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
				["spellknown"] = 253284,
				["difficulty"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 151960,
				["spellName"] = 221992,
			},
			["internalVersion"] = 3,
			["text2Containment"] = "INSIDE",
			["text1Enabled"] = true,
			["text1Font"] = "SCT TwCenMT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["width"] = 40,
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_BlessingOfTheAshbringer",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Point"] = "CENTER",
			["xOffset"] = 0,
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
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
				0.552941176470588, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["untrigger"] = {
				["spellName"] = 5217,
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
			["init_started"] = 1,
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
			["backdropInFront"] = false,
			["zoom"] = 0.3,
			["height"] = 23.9999370574951,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["id"] = "SanUI_TigersFury",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["timerSize"] = 16,
			["sparkRotationMode"] = "AUTO",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["icon"] = true,
			["textSize"] = 16,
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
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
			["xOffset"] = 0,
			["untrigger"] = {
				["spellName"] = 18562,
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_Swiftmend2Charges",
			["parent"] = "SanUI_Urgent",
			["text2Enabled"] = false,
			["width"] = 40,
			["glow"] = false,
			["text1Font"] = "SCT TwCenMT",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["internalVersion"] = 3,
			["stickyDuration"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["arena"] = true,
						["pvp"] = true,
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
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
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
			["automaticWidth"] = "Auto",
			["textSize"] = 8,
			["internalVersion"] = 3,
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
				["events"] = "PLAYER_ENTERING_WORLD,ACTIVE_TALENT_GROUP_CHANGED,PLAYER_REGEN_DISABLED",
				["countOperator"] = "~=",
				["count"] = "0",
				["name_operator"] = "==",
				["use_spellId"] = true,
				["spellIds"] = {
				},
				["custom"] = "function()\n    \n    local tf = GetSpellInfo(5217)\n    local sr = GetSpellInfo(52610)\n    local bt = GetSpellInfo(155672)\n    local inc = GetSpellInfo(102543)\n    local prowl = GetSpellInfo(5215)\n    local sm = GetSpellInfo(58984)\n    \n    function WA_calcStats_feral()\n        local DamageMult = 1 --select(7, UnitDamage(\"player\"))\n        \n        local CP = GetComboPoints(\"player\", \"target\")\n        if CP == 0 then CP = 5 end\n        \n        if UnitBuff(\"player\", tf) then\n            DamageMult = DamageMult * 1.15\n        end\n        \n        if UnitBuff(\"player\", sr) then\n            DamageMult = DamageMult * 1.4\n        end\n        \n        WA_stats_BTactive = WA_stats_BTactive or  0\n        if UnitBuff(\"player\", bt) then\n            WA_stats_BTactive = GetTime()\n            DamageMult = DamageMult * 1.3\n        elseif GetTime() - WA_stats_BTactive < .2 then\n            DamageMult = DamageMult * 1.3\n        end\n        \n        local RakeMult = 1\n        WA_stats_prowlactive = WA_stats_prowlactive or  0\n        if UnitBuff(\"player\", inc) then\n            RakeMult = 2\n        elseif UnitBuff(\"player\", prowl) or UnitBuff(\"player\", sm) then\n            WA_stats_prowlactive = GetTime()\n            RakeMult = 2\n        elseif GetTime() - WA_stats_prowlactive < .2 then\n            RakeMult = 2\n        end\n        \n        WA_stats_RipTick = CP*DamageMult\n        WA_stats_RipTick5 = 5*DamageMult\n        WA_stats_RakeTick = DamageMult*RakeMult\n        WA_stats_ThrashTick = DamageMult\n    end\n    \n    return true\nend",
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
			["fixedWidth"] = 200,
			["border"] = true,
			["borderEdge"] = "fer09",
			["wordWrap"] = "WordWrap",
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
			["inverse"] = false,
			["height"] = 8.42102813720703,
			["id"] = "SanUI_FeralStatLogic",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 8,
			["width"] = 10.8948659896851,
			["additional_triggers"] = {
			},
			["displayTextRight"] = "%p",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "CENTER",
			["stacksFont"] = "Emblem",
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
			["parent"] = "SanUI_FeralBleedSnapshots",
			["displayTextLeft"] = "Dream of Cenarius [%s]",
		},
		["SanUI_Buffs"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"SanUI_Clearcasting", -- [1]
				"SanUI_Clearcasting 3", -- [2]
				"SanUI_ChosenOfElune", -- [3]
				"SanUI_OnethsOverconfidence", -- [4]
				"SanUI_OnethsIntuition", -- [5]
				"SanUI_LunarEmpowerment", -- [6]
				"SanUI_SolarEmpowerment", -- [7]
				"SanUI_OverloadedWithLight", -- [8]
				"SanUI_ClearcastingFeral", -- [9]
				"SanUI_Barkskin", -- [10]
				"SanUI_RageOfTheSleeper", -- [11]
				"SanUI_SurvivalInstincts", -- [12]
				"SanUI_Clearcasting 2", -- [13]
				"SanUI_Innervate", -- [14]
				"SanUI_PowerArchdruid", -- [15]
				"SanUI_SotF", -- [16]
				"SanUI_BloodTalons", -- [17]
				"SanUI_PredatorySwiftness", -- [18]
				"SanUI_GatheringClouds", -- [19]
				"SanUI_Lazy Apex Predator", -- [20]
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
			["align"] = "CENTER",
			["stagger"] = 0,
			["height"] = 64,
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
				["ingroup"] = {
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
				["faction"] = {
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
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Buffs",
			["internalVersion"] = 3,
			["frameStrata"] = 1,
			["width"] = 956.999969482422,
			["xOffset"] = -215.893615722656,
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
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
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
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
			["scale"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderEdge"] = "None",
			["internalVersion"] = 3,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
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
			["xOffset"] = 83,
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
				0.580392156862745, -- [1]
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
				["ingroup"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["internalVersion"] = 3,
			["init_started"] = 1,
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
					192081, -- [1]
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["names"] = {
					"Ironfur", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["height"] = 23.9999923706055,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksFont"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["icon"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderInFront"] = false,
			["id"] = "SanUI_Ironfur",
			["icon_side"] = "LEFT",
			["borderSize"] = 16,
			["timerSize"] = 12,
			["sparkHeight"] = 30,
			["sparkOffsetX"] = 0,
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["textFlags"] = "None",
			["frameStrata"] = 1,
			["width"] = 113.653327941895,
			["timer"] = true,
			["textSize"] = 12,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "SanUI_BearMitigation",
			["auto"] = true,
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
				0.607843137254902, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["internalVersion"] = 3,
			["init_started"] = 1,
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
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					1822, -- [1]
				},
				["unit"] = "target",
				["showOn"] = "showOnActive",
				["names"] = {
					"Rake", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["parent"] = "SanUI_FeralBleeds",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["height"] = 23.9999370574951,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["numTriggers"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "LEFT",
			["borderSize"] = 16,
			["displayTextRight"] = "%p",
			["sparkHeight"] = 30,
			["sparkOffsetX"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["textFlags"] = "None",
			["id"] = "SanUI_Rake",
			["stacksFont"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["width"] = 120,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["timer"] = true,
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
			["yOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
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
				["use_spec"] = true,
				["use_talent"] = true,
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
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
			["xOffset"] = 0,
			["cooldownTextEnabled"] = true,
			["internalVersion"] = 3,
			["text2Containment"] = "INSIDE",
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
			["stickyDuration"] = false,
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["icon"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 102351,
			},
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_CenarionWard",
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "spin",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["glow"] = false,
			["text1Font"] = "SCT TwCenMT",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_zone"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SanUI_FeralBleedSnapshots",
			["customText"] = "function()\n    Rake_sDamage = Rake_sDamage or {}\n    if Rake_sDamage[UnitGUID(\"target\")] then\n        local RatioPercent = floor(WA_stats_RakeTick/Rake_sDamage[UnitGUID(\"target\")]*100 + .5)\n        if RatioPercent >= 110 then\n            return format(\"|cFF00FF00%d|r\", RatioPercent)\n        elseif RatioPercent <= 90 then\n            return format(\"|cFFFF0000%d|r\", RatioPercent)\n        else\n            return format(\"|cFF999999%d|r\", RatioPercent)\n        end\n    else return ''\n    end\nend",
			["barInFront"] = true,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = " ",
			["internalVersion"] = 3,
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
				["custom_type"] = "status",
				["debuffType"] = "HARMFUL",
				["showOn"] = "showOnActive",
				["name_operator"] = "==",
				["name"] = "Rake",
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["use_spellId"] = true,
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["custom"] = "function()\n    if WA_rake then return true end\nend",
				["check"] = "update",
				["type"] = "aura",
				["custom_hide"] = "custom",
				["unit"] = "target",
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 14.3158273696899,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["wordWrap"] = "WordWrap",
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
			["inverse"] = false,
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_rake then return true end\nend",
			},
			["displayTextRight"] = " ",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["width"] = 12.5790948867798,
			["id"] = "SanUI_RakeRatio",
			["additional_triggers"] = {
			},
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["timerSize"] = 12,
			["timer"] = true,
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
				0.619607843137255, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
			["init_started"] = 1,
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
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					1079, -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["showOn"] = "showOnActive",
				["names"] = {
					"Rip", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["inverse"] = false,
			["icon"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderInFront"] = false,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "LEFT",
			["borderSize"] = 16,
			["timerSize"] = 16,
			["sparkHeight"] = 30,
			["disjunctive"] = "all",
			["customTextUpdate"] = "update",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "SanUI_Rip",
			["sparkWidth"] = 10,
			["frameStrata"] = 1,
			["width"] = 120,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["height"] = 23.9999370574951,
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
		},
		["SanUI_ChosenOfElune"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					102560, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnActive",
				["names"] = {
					"Incarnation: Chosen of Elune", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
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
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["icon"] = true,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["width"] = 40,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "%c",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_ChosenOfElune",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["inverse"] = false,
			["glow"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_MoonfireC"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = -55,
			["stacksFlags"] = "None",
			["yOffset"] = -11.9999685287476,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.588235294117647, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["ingroup"] = {
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
				["use_spec"] = true,
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
				["pvptalent"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Tukui_Blank_Texture",
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
			["sparkOffsetX"] = 0,
			["parent"] = "SanUI_ChickenDots",
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
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
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
				["spellIds"] = {
					8921, -- [1]
				},
				["use_specific_unit"] = false,
				["showOn"] = "showOnActive",
				["names"] = {
					"Moonfire", -- [1]
				},
				["unit"] = "target",
				["debuffType"] = "HARMFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["borderOffset"] = 5,
			["textSize"] = 12,
			["height"] = 25,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
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
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["timer"] = true,
			["width"] = 110,
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["borderInFront"] = false,
			["icon_side"] = "RIGHT",
			["id"] = "SanUI_MoonfireC",
			["stacksFont"] = "Friz Quadrata TT",
			["sparkHeight"] = 30,
			["displayTextRight"] = "%p",
			["borderBackdrop"] = "Blizzard Tooltip",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["numTriggers"] = 1,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
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
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 3,
			["untrigger"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["width"] = 40,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_OverloadedWithLight",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
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
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["Dr - R - RDSW2 Display - Total"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 60,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
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
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_realm"] = false,
				["use_class"] = true,
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
			["init_completed"] = 1,
			["texture"] = "Armory",
			["textFont"] = "Vixar",
			["borderOffset"] = 5,
			["auto"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "function()\n    return string.format(\"RDSW: Total\"\n        .. \"\\n   INT: %-.2f\"\n        .. \"\\n   CRT: %-.2f\"\n        .. \"\\n   HST: %-.2f\"\n        .. \"\\n   MST: %-.2f\"\n        .. \"\\n   VRS: %-.2f\"\n        .. \"\\n   LEE: %-.2f\",\n        1.00,\n        LEAFUI_TTL_CRT,\n        LEAFUI_TTL_HST, \n        LEAFUI_TTL_MST, \n        LEAFUI_TTL_VRS,\n    LEAFUI_TTL_LEE)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%c",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["custom_hide"] = "timed",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
				["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Total\"\n            .. \"\\n   INT: %-.2f\"\n            .. \"\\n   CRT: %-.2f\"\n            .. \"\\n   HST: %-.2f\"\n            .. \"\\n   MST: %-.2f\"\n            .. \"\\n   VRS: %-.2f\"\n            .. \"\\n   LEE: %-.2f\",\n            1.00,\n            LEAFUI_TTL_CRT,\n            LEAFUI_TTL_HST, \n            LEAFUI_TTL_MST, \n            LEAFUI_TTL_VRS,\n    LEAFUI_TTL_LEE))\n    return true\nend",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["check"] = "event",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stickyDuration"] = false,
			["untrigger"] = {
			},
			["spark"] = false,
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["height"] = 11.7894687652588,
			["timerFlags"] = "None",
			["textSize"] = 12,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["width"] = 11.7367525100708,
			["timer"] = false,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["id"] = "Dr - R - RDSW2 Display - Total",
			["border"] = false,
			["borderEdge"] = "None",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["timerSize"] = 12,
			["icon_side"] = "RIGHT",
			["sparkRotationMode"] = "AUTO",
			["justify"] = "RIGHT",
			["sparkHeight"] = 30,
			["zoom"] = 0,
			["stacksFlags"] = "None",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksFont"] = "Vixar",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["event"] = "Conditions",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["sparkHidden"] = "NEVER",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["sparkOffsetX"] = 0,
			["sparkWidth"] = 10,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["custom"] = "LEAFUI_TTL_SP = LEAFUI_TTL_SP or 0\nLEAFUI_TTL_MST = LEAFUI_TTL_MST or 0\nLEAFUI_TTL_HST = LEAFUI_TTL_HST or 0\nLEAFUI_TTL_CRT = LEAFUI_TTL_CRT or 0\nLEAFUI_TTL_VRS = LEAFUI_TTL_VRS or 0\nLEAFUI_TTL_LEE = LEAFUI_TTL_LEE or 0\n\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Resto Druid Stat Weights 2.1",
		},
		["SanUI_RageOfTheSleeper"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["internalVersion"] = 3,
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text2Containment"] = "INSIDE",
			["disjunctive"] = "all",
			["text1Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%c",
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
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["untrigger"] = {
			},
			["id"] = "SanUI_RageOfTheSleeper",
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
			["text2Enabled"] = false,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_PurgeTheWicked"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_class"] = true,
				["use_talent"] = true,
				["use_name"] = false,
				["role"] = {
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 3,
			["parent"] = "SanUI_TargetDebuffs",
			["text2Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["inverse"] = false,
			["untrigger"] = {
			},
			["text2FontSize"] = 24,
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 39.9999885559082,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["glow"] = false,
			["id"] = "SanUI_PurgeTheWicked",
			["icon"] = true,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
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
			["scale"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 3,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["expanded"] = true,
		},
		["SanUI_Urgent"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"SanUI_Efflo", -- [1]
				"SanUI_AtonementSelf", -- [2]
				"SanUI_Swiftmend2Charges", -- [3]
				"SanUI_CenarionWard", -- [4]
				"SanUI_CenarionWard 2", -- [5]
				"SanUI_TFoffCD", -- [6]
				"SanUI_AFoffCD", -- [7]
				"SanUI_BerserkOffCD", -- [8]
				"SanUI_CelestialAlignmentOffCD", -- [9]
				"SanUI_LegOffCD", -- [10]
				"SanUI_CaraffeOffCD", -- [11]
				"SanUI_BlessingOfTheAshbringer", -- [12]
			},
			["disjunctive"] = "all",
			["yOffset"] = 151.039916992188,
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
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["rotation"] = 0,
			["height"] = 545.999984741211,
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
				["ingroup"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Urgent",
			["internalVersion"] = 3,
			["frameStrata"] = 1,
			["width"] = 40.0000610351563,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -252.586791992188,
			["numTriggers"] = 1,
			["untrigger"] = {
			},
			["backgroundInset"] = 0,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["stagger"] = 0,
		},
		["SanUI_CombatTime"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.StartTime then\n        local combatTime = GetTime() - aura_env.StartTime\n        return string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n    else\n        return \"13:37\"\n    end\nend\n\n\n\n",
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
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
			["internalVersion"] = 3,
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
			["font"] = "Friz Quadrata TT",
			["height"] = 71.5789566040039,
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
				["ingroup"] = {
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
				["use_combat"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 72,
			["regionType"] = "text",
			["init_completed"] = 1,
			["justify"] = "LEFT",
			["fixedWidth"] = 200,
			["id"] = "SanUI_CombatTime",
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
			["wordWrap"] = "WordWrap",
			["xOffset"] = -18.5867919921875,
			["numTriggers"] = 1,
			["yOffset"] = -444.694442749023,
			["conditions"] = {
			},
			["additional_triggers"] = {
			},
			["width"] = 26.8947486877441,
		},
		["SanUI_SurvivalInstincts"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["internalVersion"] = 3,
			["cooldownTextEnabled"] = true,
			["parent"] = "SanUI_Buffs",
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%c",
			["untrigger"] = {
			},
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
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
			["id"] = "SanUI_SurvivalInstincts",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
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
			["conditions"] = {
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["SanUI_CaraffeOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["itemName"] = 151960,
				["spellName"] = 221992,
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "preset",
					["preset"] = "spin",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["itemName"] = 151960,
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
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_name"] = false,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_spellknown"] = false,
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
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 253284,
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
			["parent"] = "SanUI_Urgent",
			["yOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Font"] = "SCT TwCenMT",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 2,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text2Point"] = "CENTER",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_itemName"] = true,
						["use_unit"] = true,
						["itemName"] = 151960,
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
						["itemName"] = 151960,
					},
				}, -- [1]
			},
			["id"] = "SanUI_CaraffeOffCD",
			["text2"] = "%p",
			["frameStrata"] = 1,
			["width"] = 40,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["init_started"] = 1,
			["conditions"] = {
			},
			["desaturate"] = false,
			["text2Font"] = "Friz Quadrata TT",
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["internalVersion"] = 3,
			["xOffset"] = 0,
			["yOffset"] = 0,
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
			["glow"] = false,
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%s",
			["disjunctive"] = "all",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_BloodTalons",
			["text1Font"] = "2002",
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Font"] = "Friz Quadrata TT",
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
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
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
				0.588235294117647, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["internalVersion"] = 3,
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
				["debuffType"] = "HARMFUL",
				["spellIds"] = {
					106830, -- [1]
				},
				["names"] = {
					"Thrash", -- [1]
				},
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "LEFT",
			["id"] = "SanUI_ThrashCat",
			["parent"] = "SanUI_FeralBleeds",
			["sparkHeight"] = 30,
			["displayTextRight"] = "%p",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["sparkOffsetX"] = 0,
			["sparkHidden"] = "NEVER",
			["textFlags"] = "None",
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkRotationMode"] = "AUTO",
			["height"] = 23.9999370574951,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["textSize"] = 12,
			["icon"] = true,
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
				0.619607843137255, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["internalVersion"] = 3,
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
				["custom_hide"] = "timed",
				["spellIds"] = {
					102543, -- [1]
				},
				["use_specific_unit"] = false,
				["showOn"] = "showOnActive",
				["names"] = {
					"Incarnation: King of the Jungle", -- [1]
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["borderOffset"] = 5,
			["textSize"] = 16,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = true,
			["inverse"] = false,
			["height"] = 23.9999370574951,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["width"] = 120,
			["border"] = false,
			["borderEdge"] = "None",
			["borderInFront"] = false,
			["borderSize"] = 16,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["sparkWidth"] = 10,
			["sparkHeight"] = 30,
			["timerSize"] = 16,
			["sparkOffsetX"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["parent"] = "SanUI_FeralRota",
			["id"] = "SanUI_Inc",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["spark"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_zone"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
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
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SanUI_FeralBleedSnapshots",
			["customText"] = "function()\n    Rip_sDamage = Rip_sDamage or {}\n    if Rip_sDamage[UnitGUID(\"target\")] then\n        local RatioPercent = floor(WA_stats_RipTick5/Rip_sDamage[UnitGUID(\"target\")]*100 + .5)\n        if RatioPercent >= 110 then\n            return format(\"|cFF00FF00%d|r\", RatioPercent+.01)\n        elseif RatioPercent <= 90 then\n            return format(\"|cFFFF0000%d|r\", RatioPercent+.01)\n        else\n            return format(\"|cFF999999%d|r\", RatioPercent+.01)\n        end        \n    else return ''\n    end\nend\n\n\n\n\n",
			["untrigger"] = {
				["custom"] = "function()\n    return false\nend",
			},
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = " ",
			["internalVersion"] = 3,
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
				["unit"] = "target",
				["type"] = "aura",
				["unevent"] = "auto",
				["subeventSuffix"] = "_CAST_START",
				["custom"] = "function()\n    return true\nend",
				["showOn"] = "showOnActive",
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["spellIds"] = {
				},
				["debuffType"] = "HARMFUL",
				["check"] = "update",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["custom_type"] = "status",
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
			["wordWrap"] = "WordWrap",
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
			["numTriggers"] = 1,
			["barInFront"] = true,
			["justify"] = "CENTER",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["width"] = 12.5790948867798,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_RipRatio",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["timerSize"] = 12,
			["height"] = 14.3158273696899,
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
		["SanUI_Thrash"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 19,
			["xOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
				["use_class"] = true,
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
				["use_name"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "SanUI_TargetDebuffs",
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["inverse"] = false,
			["icon"] = true,
			["text2FontSize"] = 24,
			["cooldownTextEnabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "     %s",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "SanUI_Thrash",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["desaturate"] = false,
			["text1Containment"] = "INSIDE",
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 3,
		},
		["Dr - R - RDSW2 Display - Current"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = -41.226806640625,
			["displayText"] = "%c",
			["yOffset"] = 0.853286743164063,
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
				["finish"] = {
					["do_glow"] = true,
				},
				["init"] = {
					["custom"] = "LEAFUI_CUR_SP = LEAFUI_CUR_SP or 0\nLEAFUI_CUR_MST = LEAFUI_CUR_MST or 0\nLEAFUI_CUR_HST = LEAFUI_CUR_HST or 0\nLEAFUI_CUR_CRT = LEAFUI_CUR_CRT or 0\nLEAFUI_CUR_VRS = LEAFUI_CUR_VRS or 0\nLEAFUI_CUR_LEE = LEAFUI_CUR_LEE or 0",
					["do_custom"] = true,
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
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
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
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_realm"] = false,
				["use_class"] = true,
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
			["init_completed"] = 1,
			["texture"] = "Armory",
			["textFont"] = "Vixar",
			["borderOffset"] = 5,
			["spark"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["borderInset"] = 11,
			["fixedWidth"] = 200,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "any",
			["customText"] = "function()\n    return string.format(\"RDSW: Current\"\n        .. \"\\n   INT: %-.2f\"\n        .. \"\\n   CRT: %-.2f\"\n        .. \"\\n   HST: %-.2f\"\n        .. \"\\n   MST: %-.2f\"\n        .. \"\\n   VRS: %-.2f\"\n        .. \"\\n   LEE: %-.2f\",\n        1.00,\n        LEAFUI_CUR_CRT, \n        LEAFUI_CUR_HST, \n        LEAFUI_CUR_MST, \n        LEAFUI_CUR_VRS,\n    LEAFUI_CUR_LEE)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%c",
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 3,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["trigger"] = {
				["type"] = "custom",
				["custom_type"] = "event",
				["custom_hide"] = "custom",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
				["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Current\"\n            .. \"\\n   INT: %-.2f\"\n            .. \"\\n   CRT: %-.2f\"\n            .. \"\\n   HST: %-.2f\"\n            .. \"\\n   MST: %-.2f\"\n            .. \"\\n   VRS: %-.2f\"\n            .. \"\\n   LEE: %-.2f\",\n            1.00,\n            LEAFUI_CUR_CRT, \n            LEAFUI_CUR_HST, \n            LEAFUI_CUR_MST, \n            LEAFUI_CUR_VRS,\n    LEAFUI_CUR_LEE))\n    return true\nend",
				["spellIds"] = {
				},
				["subeventSuffix"] = "_CAST_START",
				["check"] = "event",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["text"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["sparkWidth"] = 10,
			["sparkRotation"] = 0,
			["inverse"] = false,
			["stacksFont"] = "Vixar",
			["height"] = 11.7894687652588,
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
			["width"] = 11.7367525100708,
			["sparkOffsetX"] = 0,
			["stacksFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["justify"] = "RIGHT",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%p",
			["customTextUpdate"] = "event",
			["sparkHeight"] = 30,
			["auto"] = true,
			["zoom"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["icon"] = false,
			["id"] = "Dr - R - RDSW2 Display - Current",
			["additional_triggers"] = {
				{
					["trigger"] = {
						["use_unit"] = true,
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["textSize"] = 12,
			["numTriggers"] = 2,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["untrigger"] = {
			},
			["parent"] = "Resto Druid Stat Weights 2.1",
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
			["stickyDuration"] = false,
			["internalVersion"] = 3,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
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
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
			["text1Font"] = "Friz Quadrata TT",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_Barkskin",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = false,
			["width"] = 40,
			["disjunctive"] = "all",
			["text2Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
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
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["yOffset"] = 0,
			["internalVersion"] = 3,
			["parent"] = "SanUI_Buffs",
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
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
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_Innervate",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["glow"] = false,
			["stickyDuration"] = false,
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
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
				0.607843137254902, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["class"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
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
				["debuffType"] = "HELPFUL",
				["spellIds"] = {
					106951, -- [1]
				},
				["unit"] = "player",
				["showOn"] = "showOnActive",
				["names"] = {
					"Berserk", -- [1]
				},
				["use_specific_unit"] = false,
				["custom_hide"] = "timed",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["zoom"] = 0.3,
			["height"] = 23.9999370574951,
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["spark"] = false,
			["numTriggers"] = 1,
			["stacksFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotation"] = 0,
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["id"] = "SanUI_Berserk",
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["timerSize"] = 16,
			["sparkRotationMode"] = "AUTO",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["icon"] = true,
			["textSize"] = 16,
		},
		["SanUI_TFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
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
			["parent"] = "SanUI_Urgent",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_TFoffCD",
			["selfPoint"] = "CENTER",
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["inverse"] = false,
			["text1Font"] = "SCT TwCenMT",
			["init_started"] = 1,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 5217,
			},
		},
		["SanUI_ChickenDots"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SanUI_MoonfireC", -- [1]
				"SanUI_SunfireC 2", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["disjunctive"] = "all",
			["border"] = false,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderSize"] = 16,
			["activeTriggerMode"] = -10,
			["scale"] = 1,
			["anchorFrameFrame"] = "AceGUI30Button1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["expanded"] = true,
			["internalVersion"] = 3,
			["borderOffset"] = 5,
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
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["id"] = "SanUI_ChickenDots",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = -213,
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderEdge"] = "None",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
				["class"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 144,
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
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
			["parent"] = "SanUI_Urgent",
			["text1Point"] = "BOTTOMRIGHT",
			["internalVersion"] = 3,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["stickyDuration"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
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
			["displayIcon"] = 134222,
			["xOffset"] = 0,
			["numTriggers"] = 1,
			["text2Containment"] = "INSIDE",
			["untrigger"] = {
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text1Containment"] = "INSIDE",
			["text2FontSize"] = 24,
			["additional_triggers"] = {
			},
			["init_completed"] = 1,
			["text1"] = "%c",
			["glow"] = false,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = false,
			["disjunctive"] = "all",
			["id"] = "SanUI_Efflo",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = false,
			["width"] = 40,
			["text1Font"] = "Friz Quadrata TT",
			["icon"] = true,
			["inverse"] = true,
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
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_Moonfire"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						nil, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_name"] = false,
				["race"] = {
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
				["use_spec"] = false,
				["use_class"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 3,
			["parent"] = "SanUI_TargetDebuffs",
			["untrigger"] = {
			},
			["text2Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "SanUI_Moonfire",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["init_started"] = 1,
			["conditions"] = {
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["SanUI_CelestialAlignmentOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "spin",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["trigger"] = {
				["use_charges"] = false,
				["use_unit"] = true,
				["spellName"] = 194223,
				["charges_operator"] = ">=",
				["type"] = "status",
				["subeventPrefix"] = "SPELL",
				["unevent"] = "auto",
				["use_showOn"] = true,
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Cooldown Progress (Spell)",
				["names"] = {
				},
				["realSpellName"] = "Celestial Alignment",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
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
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
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
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 194223,
			},
			["internalVersion"] = 3,
			["text2Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
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
			["numTriggers"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text2Point"] = "CENTER",
			["text2"] = "%p",
			["auto"] = true,
			["id"] = "SanUI_CelestialAlignmentOffCD",
			["additional_triggers"] = {
			},
			["zoom"] = 0.3,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["selfPoint"] = "CENTER",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["parent"] = "SanUI_Urgent",
			["text1Enabled"] = true,
		},
		["SanUI_OnethsIntuition"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					209406, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnActive",
				["names"] = {
					"Oneth's Intuition", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["xOffset"] = 0,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["internalVersion"] = 3,
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
			["width"] = 40,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "%c",
			["parent"] = "SanUI_Buffs",
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_OnethsIntuition",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Point"] = "CENTER",
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
			["inverse"] = false,
			["untrigger"] = {
			},
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
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
				0.549019607843137, -- [1]
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
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
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
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Tukui_Blank_Texture",
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
			["untrigger"] = {
			},
			["activeTriggerMode"] = -10,
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["internalVersion"] = 3,
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
				["custom_hide"] = "timed",
				["spellIds"] = {
					52610, -- [1]
				},
				["use_specific_unit"] = false,
				["showOn"] = "showOnActive",
				["names"] = {
					"Savage Roar", -- [1]
				},
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
			},
			["text"] = false,
			["stickyDuration"] = false,
			["backdropInFront"] = false,
			["textSize"] = 16,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = true,
			["inverse"] = false,
			["height"] = 23.9999370574951,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["disjunctive"] = "all",
			["sparkHeight"] = 30,
			["timerSize"] = 16,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "SanUI_SavageRoar",
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
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
		},
		["SanUI_OnethsOverconfidence"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					209407, -- [1]
				},
				["custom_hide"] = "timed",
				["showOn"] = "showOnActive",
				["subeventPrefix"] = "SPELL",
				["names"] = {
					"Oneth's Overconfidence", -- [1]
				},
				["debuffType"] = "HELPFUL",
			},
			["text1Containment"] = "INSIDE",
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
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
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\panther1.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 3,
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["untrigger"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Point"] = "CENTER",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_OnethsOverconfidence",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
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
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["SanUI_PowerArchdruid"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
			["icon"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
			["glow"] = false,
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
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 4,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["disjunctive"] = "all",
			["internalVersion"] = 3,
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
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
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
			["untrigger"] = {
			},
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
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
			["id"] = "SanUI_PowerArchdruid",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = false,
			["width"] = 40,
			["stickyDuration"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["parent"] = "SanUI_Buffs",
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_AFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
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
			["keepAspectRatio"] = false,
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["name"] = "Affinity",
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
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
			["parent"] = "SanUI_Urgent",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["internalVersion"] = 3,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["numTriggers"] = 1,
			["icon"] = true,
			["text2FontSize"] = 24,
			["yOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["additional_triggers"] = {
			},
			["id"] = "SanUI_AFoffCD",
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
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = true,
			["inverse"] = false,
			["text1Font"] = "SCT TwCenMT",
			["init_started"] = 1,
			["conditions"] = {
			},
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
			["parent"] = "SanUI_Buffs",
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
				["ingroup"] = {
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
			["text1Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["inverse"] = false,
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["init_completed"] = 1,
			["text1"] = "%c",
			["yOffset"] = 0,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_Clearcasting",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["xOffset"] = 0,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
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
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 3,
		},
		["SanUI_CenarionWard 2"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
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
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_charges"] = false,
				["subeventPrefix"] = "SPELL",
				["spellName"] = 197721,
				["charges_operator"] = ">=",
				["charges"] = "2",
				["custom_hide"] = "timed",
				["subeventSuffix"] = "_CAST_START",
				["use_showOn"] = true,
				["debuffType"] = "HELPFUL",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["realSpellName"] = "Flourish",
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
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_name"] = false,
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
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_spec"] = true,
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
			["text1Enabled"] = true,
			["desaturate"] = false,
			["internalVersion"] = 3,
			["text2Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
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
			["parent"] = "SanUI_Urgent",
			["text1Font"] = "SCT TwCenMT",
			["text2FontSize"] = 24,
			["width"] = 40,
			["init_completed"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text2Point"] = "CENTER",
			["text2"] = "%p",
			["auto"] = true,
			["id"] = "SanUI_CenarionWard 2",
			["additional_triggers"] = {
			},
			["zoom"] = 0.3,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["preset"] = "spin",
					["type"] = "preset",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["icon"] = true,
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["conditions"] = {
			},
			["untrigger"] = {
				["showOn"] = "showOnReady",
				["spellName"] = 197721,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_FeralBleedSnapshots"] = {
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
			["scale"] = 1,
			["expanded"] = false,
			["activeTriggerMode"] = 0,
			["internalVersion"] = 3,
			["borderOffset"] = 5,
			["id"] = "SanUI_FeralBleedSnapshots",
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
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
			["additional_triggers"] = {
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
				["ingroup"] = {
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
				["use_class"] = "true",
				["class"] = {
					["single"] = "DRUID",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["use_spec"] = true,
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
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
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
			["fixedWidth"] = 200,
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
			["automaticWidth"] = "Auto",
			["textSize"] = 12,
			["internalVersion"] = 3,
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
				["unevent"] = "auto",
				["debuffType"] = "HARMFUL",
				["showOn"] = "showOnActive",
				["name_operator"] = "==",
				["name"] = "Thrash",
				["subeventSuffix"] = "_CAST_START",
				["spellIds"] = {
				},
				["use_spellId"] = true,
				["event"] = "Chat Message",
				["customStacks"] = "\n\n",
				["customDuration"] = "",
				["customName"] = "",
				["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
				["custom"] = "function()\n    if WA_thrashc then return true end\nend",
				["check"] = "update",
				["type"] = "aura",
				["custom_hide"] = "custom",
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
			["wordWrap"] = "WordWrap",
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
			["inverse"] = false,
			["height"] = 14.3157987594605,
			["id"] = "SanUI_ThrashCatRatio",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["width"] = 12.5790948867798,
			["additional_triggers"] = {
			},
			["displayTextRight"] = " ",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "CENTER",
			["untrigger"] = {
				["custom"] = "function()\n    if not WA_thrashc then return true end\nend",
			},
			["numTriggers"] = 1,
			["parent"] = "SanUI_FeralBleedSnapshots",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderOffset"] = 5,
			["icon"] = false,
		},
		["SanUI_TargetDebuffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"SanUI_Thrash", -- [1]
				"SanUI_Moonfire", -- [2]
				"SanUI_Sunfire", -- [3]
				"SanUI_PurgeTheWicked", -- [4]
				"SanUI_Judgement", -- [5]
			},
			["xOffset"] = 199.679946018324,
			["yOffset"] = -113.493018440225,
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = 0,
			["space"] = 8,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
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
			["height"] = 39.9999389648438,
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
				["ingroup"] = {
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
				["faction"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_TargetDebuffs",
			["frameStrata"] = 1,
			["width"] = 232,
			["internalVersion"] = 3,
			["untrigger"] = {
			},
			["numTriggers"] = 1,
			["selfPoint"] = "LEFT",
			["radius"] = 200,
			["anchorFrameType"] = "SCREEN",
			["trigger"] = {
				["type"] = "aura",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["debuffType"] = "HELPFUL",
				["names"] = {
				},
			},
			["rotation"] = 0,
		},
		["SanUI_AtonementSelf"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["untrigger"] = {
			},
			["anchorPoint"] = "CENTER",
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "event",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["glow_action"] = "show",
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["use_inverse"] = true,
				["subeventPrefix"] = "SPELL",
				["remaining"] = "2",
				["use_totemType"] = true,
				["debuffType"] = "HELPFUL",
				["type"] = "aura",
				["use_remaining"] = false,
				["subeventSuffix"] = "_CAST_START",
				["custom_hide"] = "timed",
				["unit"] = "player",
				["event"] = "Totem",
				["totemType"] = 1,
				["use_unit"] = true,
				["unevent"] = "auto",
				["spellIds"] = {
					194384, -- [1]
				},
				["names"] = {
					"Atonement", -- [1]
				},
				["showOn"] = "showOnMissing",
				["totemName"] = 145205,
				["remaining_operator"] = "<=",
				["use_totemName"] = false,
			},
			["stickyDuration"] = false,
			["text1Point"] = "BOTTOMRIGHT",
			["cooldownTextEnabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["internalVersion"] = 3,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
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
				["use_class"] = true,
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
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
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
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "spin",
					["duration_type"] = "seconds",
					["type"] = "preset",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
					},
				}, -- [1]
			},
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["inverse"] = true,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["id"] = "SanUI_AtonementSelf",
			["text1"] = "%c",
			["glow"] = false,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["disjunctive"] = "all",
			["additional_triggers"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 0,
			["text1Containment"] = "INSIDE",
			["numTriggers"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = 134222,
			["cooldown"] = false,
			["parent"] = "SanUI_Urgent",
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
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
				["use_spec"] = true,
				["class"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 3,
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
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
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
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["text1"] = "%c",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_Clearcasting 2",
			["disjunctive"] = "all",
			["text2Enabled"] = false,
			["width"] = 40,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["yOffset"] = 0,
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["SanUI_FeralSnapshotLogic"] = {
			["outline"] = "OUTLINE",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["user_x"] = -0.0200000107288361,
			["parent"] = "SanUI_FeralBleedSnapshots",
			["displayText"] = "",
			["user_y"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["fixedWidth"] = 200,
			["activeTriggerMode"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["untrigger"] = {
				["custom"] = "",
			},
			["internalVersion"] = 3,
			["inverse"] = false,
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
			["crop_x"] = 0.459999978542328,
			["sameTexture"] = false,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["height"] = 1.00008153915405,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["use_spec"] = true,
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
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["name"] = "",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
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
			},
			["foregroundColor"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0.0549019607843137, -- [3]
				1, -- [4]
			},
			["id"] = "SanUI_FeralSnapshotLogic",
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
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
			["justify"] = "LEFT",
			["mirror"] = false,
			["desaturate"] = false,
			["regionType"] = "text",
			["discrete_rotation"] = 0,
			["blendMode"] = "BLEND",
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
			["crop_y"] = 0,
			["desaturateForeground"] = false,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["additional_triggers"] = {
			},
			["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["alpha"] = 1,
			["width"] = 1.00002479553223,
			["xOffset"] = 0,
			["wordWrap"] = "WordWrap",
			["numTriggers"] = 1,
			["conditions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Icons\\",
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundOffset"] = 2,
		},
		["Resto Druid Stat Weights 2.1"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Dr - R - RDSW2 Core", -- [1]
				"Dr - R - RDSW2 Display - Current", -- [2]
				"Dr - R - RDSW2 Display - Total", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 705.039672851563,
			["border"] = false,
			["yOffset"] = -269.146377563477,
			["regionType"] = "group",
			["borderSize"] = 16,
			["scale"] = 1,
			["activeTriggerMode"] = 0,
			["untrigger"] = {
			},
			["url"] = "https://wago.io/VkuAT-pHb",
			["expanded"] = false,
			["borderEdge"] = "None",
			["internalVersion"] = 3,
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
			["additional_triggers"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["id"] = "Resto Druid Stat Weights 2.1",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["subeventPrefix"] = "SPELL",
				["spellIds"] = {
				},
				["showOn"] = "showOnActive",
				["unit"] = "player",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
			},
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
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
			["anchorPoint"] = "CENTER",
		},
		["SanUI_SolarEmpowerment"] = {
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
			["activeTriggerMode"] = -10,
			["customTextUpdate"] = "update",
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
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "aura",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Health",
				["unit"] = "player",
				["spellIds"] = {
					164545, -- [1]
				},
				["debuffType"] = "HELPFUL",
				["showOn"] = "showOnActive",
				["names"] = {
					"Solar Empowerment", -- [1]
				},
				["subeventPrefix"] = "SPELL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["text1Point"] = "BOTTOM",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["icon"] = true,
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
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
			["text1Containment"] = "INSIDE",
			["yOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["width"] = 40,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["init_completed"] = 1,
			["text1"] = "    %s",
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_SolarEmpowerment",
			["disjunctive"] = "all",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["glow"] = false,
			["xOffset"] = 0,
			["inverse"] = false,
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
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["internalVersion"] = 3,
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
			["keepAspectRatio"] = false,
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
				["showOn"] = "showOnActive",
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						nil, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_name"] = false,
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
				["use_spec"] = false,
				["race"] = {
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
			["internalVersion"] = 3,
			["glow"] = false,
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text2FontSize"] = 24,
			["anchorFrameType"] = "SCREEN",
			["init_completed"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["yOffset"] = 0,
			["id"] = "SanUI_Sunfire",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["parent"] = "SanUI_TargetDebuffs",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["numTriggers"] = 1,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
	},
	
}