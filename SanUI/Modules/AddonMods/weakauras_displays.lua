local S = unpack(SanUI)

S.weakAuras = {

["displays"] = {
		["SanUI_ClearcastingFeral"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							16870, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Clearcasting", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
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
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
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
			["xOffset"] = 0,
			["internalVersion"] = 11,
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_ClearcastingFeral",
			["useglowColor"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["Raidmark"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["user_x"] = 0,
			["xOffset"] = -362.6923828125,
			["displayText"] = "%i",
			["yOffset"] = -24.4229431152344,
			["anchorPoint"] = "CENTER",
			["model_z"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = true,
			["textFlags"] = "None",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = false,
			["user_y"] = 0,
			["model_path"] = "Creature/Arthaslichking/arthaslichking.m2",
			["conditions"] = {
			},
			["modelIsUnit"] = false,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["text1FontSize"] = 14,
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
			["crop_y"] = 0.41,
			["cooldownTextEnabled"] = true,
			["selfPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["sequence"] = 1,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["sparkRotation"] = 0,
			["glow"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["text2"] = "%p",
			["timerSize"] = 12,
			["texture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["wordWrap"] = "WordWrap",
			["timerFont"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["text2Point"] = "CENTER",
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
			["config"] = {
			},
			["text1"] = " ",
			["url"] = "https://wago.io/NknEUCGFZ",
			["spark"] = false,
			["fixedWidth"] = 200,
			["borderOffset"] = 5,
			["backgroundOffset"] = 2,
			["outline"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkColor"] = {
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
			["barInFront"] = true,
			["border"] = false,
			["model_x"] = 0,
			["desaturateForeground"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkRotationMode"] = "AUTO",
			["automaticWidth"] = "Auto",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    local raid_mark = GetRaidTargetIndex(\"player\")\n    if raid_mark ~= nil then \n        return true\n    end\nend",
						["customIcon"] = "function()\n    local mark = GetRaidTargetIndex(\"player\")\n    if UnitExists(\"player\") == true and mark ~= nil then\n        return    [[Interface\\TARGETINGFRAME\\UI-RaidTargetingIcon_]].. mark ..[[.blp]]\n    end\nend",
						["check"] = "update",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["displayTextRight"] = "%p",
			["internalVersion"] = 11,
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
			["customTextUpdate"] = "update",
			["text"] = true,
			["fontSize"] = 130,
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["height"] = 129.684204101563,
			["version"] = 1,
			["timerFlags"] = "None",
			["timer"] = true,
			["rotate"] = true,
			["sparkOffsetX"] = 0,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["text2Containment"] = "INSIDE",
			["iconInset"] = 1,
			["text1Font"] = "Friz Quadrata TT",
			["displayTextLeft"] = "%n",
			["mirror"] = false,
			["borderEdge"] = "None",
			["desaturateBackground"] = false,
			["borderSize"] = 16,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["foregroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["text1Containment"] = "INSIDE",
			["sparkHeight"] = 30,
			["borderInset"] = 11,
			["text1Point"] = "BOTTOMRIGHT",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["id"] = "Raidmark",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 37.8421173095703,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFlags"] = "None",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["crop_x"] = 0.41,
			["authorOptions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_CenarionWard"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Urgent",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 102351,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["useglowColor"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["icon"] = true,
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
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "SCT TwCenMT",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_CenarionWard",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
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
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "155722",
						["ownOnly"] = true,
						["names"] = {
							"Rake", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "status",
						["name_operator"] = "==",
						["name"] = "Rake",
						["unevent"] = "auto",
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
					["untrigger"] = {
						["custom"] = "function()\n    if not WA_rake then return true end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
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
			["border"] = false,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["wordWrap"] = "WordWrap",
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderOffset"] = 5,
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
			["justify"] = "CENTER",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["timerSize"] = 12,
			["id"] = "SanUI_RakeRatio",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["width"] = 12.5790948867798,
			["timer"] = true,
			["textSize"] = 12,
			["inverse"] = false,
			["displayText"] = "%c",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
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
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["auto"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0.3,
			["useAdjustededMax"] = false,
			["icon"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["borderInFront"] = false,
			["icon_side"] = "LEFT",
			["customTextUpdate"] = "update",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["sparkWidth"] = 10,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "SanUI_Rip",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 120,
			["height"] = 23.9999370574951,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Bait Add"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 39,
			["xOffset"] = -12.999877929688,
			["color"] = {
				0.043137254901961, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText"] = "**Bait %p**",
			["authorOptions"] = {
			},
			["yOffset"] = 76.000610351562,
			["regionType"] = "text",
			["parent"] = "Mythrax Mythic Stuff",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "276922",
						["use_absorbMode"] = true,
						["names"] = {
						},
						["remaining"] = "6",
						["use_extend"] = true,
						["debuffType"] = "HELPFUL",
						["use_remaining"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["unit"] = "player",
						["remaining_operator"] = "<=",
						["event"] = "DBM Timer",
						["type"] = "status",
						["name"] = "Living Weapon",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["extend"] = "-5",
						["duration"] = "1",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "276922",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "6",
						["text_operator"] = "==",
						["use_addon"] = false,
						["unevent"] = "auto",
						["remaining_operator"] = "<=",
						["text"] = "Living Weapon",
						["use_text"] = true,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["use_spellId"] = false,
						["name"] = "Living Weapon",
						["use_remaining"] = true,
						["use_absorbMode"] = true,
						["event"] = "BigWigs Timer",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "status",
						["use_remaining"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["text"] = "Lebende Waffe",
						["event"] = "BigWigs Timer",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["remaining"] = "6",
						["duration"] = "1",
						["use_text"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["text_operator"] = "==",
						["remaining_operator"] = "<=",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 11,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "Bait Add",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["progressPrecision"] = 0,
			["uid"] = "xWWbYpjVM6U",
			["version"] = 7,
			["font"] = "Friz Quadrata TT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["colorB"] = 0,
					["use_color"] = true,
					["colorType"] = "pulseHSV",
					["scalex"] = 1,
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorA"] = 1,
					["colorG"] = 0.92941176470588,
					["type"] = "custom",
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["scaley"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["fixedWidth"] = 200,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
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
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							215294, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Gathering Clouds", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["glow"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
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
			["text2Font"] = "Friz Quadrata TT",
			["useglowColor"] = false,
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Containment"] = "INSIDE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%s",
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_GatheringClouds",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["width"] = 40,
			["parent"] = "SanUI_Buffs",
			["config"] = {
			},
			["inverse"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["cooldown"] = false,
			["internalVersion"] = 11,
		},
		["Phoenix Raid Circles"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Taloc Hardened Arteries", -- [1]
				"Mother Endemic Virus", -- [2]
				"Zek'voz Eye Beam Range Indicator", -- [3]
				"Zek'voz Curruptor's Pack", -- [4]
				"Fetid Malodorous Miasma", -- [5]
				"Fetid Malodorous Miasma 2", -- [6]
				"Fetid Putrid Paroxysm", -- [7]
				"Contagion >= 6 stacks", -- [8]
				"Bursting Lesions", -- [9]
				"Ghuun: Wave Range Check", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["xOffset"] = -3.36810302734375,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["url"] = "https://wago.io/BygATcEtm/10",
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["yOffset"] = -6.7366943359375,
			["internalVersion"] = 11,
			["regionType"] = "group",
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
			["id"] = "Phoenix Raid Circles",
			["borderInset"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["uid"] = "67jl5GV8EIx",
			["version"] = 10,
			["borderOffset"] = 5,
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
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
			["scale"] = 1,
		},
		["LB Active: Below Pandemic - Symbol"] = {
			["color"] = {
				0.93333333333333, -- [1]
				1, -- [2]
				0, -- [3]
				0.75, -- [4]
			},
			["regionType"] = "texture",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "Lifebloom-Watch",
			["blendMode"] = "BLEND",
			["selfPoint"] = "CENTER",
			["width"] = 65,
			["url"] = "https://wago.io/SJzs3stm-/5",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["rem"] = "4.5",
						["use_totemName"] = true,
						["name_info"] = "aura",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["remaining"] = "5",
						["group_count"] = "0",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["unit"] = "group",
						["use_remaining"] = true,
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Totem",
						["totemName"] = 145205,
						["use_specific_unit"] = false,
						["ownOnly"] = true,
						["spellIds"] = {
						},
						["type"] = "aura",
						["remOperator"] = "<=",
						["remaining_operator"] = "<=",
						["group_countOperator"] = ">",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["frameStrata"] = 1,
			["internalVersion"] = 11,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "wobble",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["id"] = "LB Active: Below Pandemic - Symbol",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["desaturate"] = false,
			["rotation"] = 0,
			["config"] = {
			},
			["version"] = 5,
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura53",
			["height"] = 55,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["fortyman"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
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
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_vehicleUi"] = false,
			},
			["authorOptions"] = {
			},
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    return string.format(\"RDSW: Total\"\n        .. \"\\n   INT: %-.2f\"\n        .. \"\\n   CRT: %-.2f\"\n        .. \"\\n   HST: %-.2f\"\n        .. \"\\n   MST: %-.2f\"\n        .. \"\\n   VRS: %-.2f\"\n        .. \"\\n   LEE: %-.2f\",\n        1.00,\n        LEAFUI_TTL_CRT,\n        LEAFUI_TTL_HST, \n        LEAFUI_TTL_MST, \n        LEAFUI_TTL_VRS,\n    LEAFUI_TTL_LEE)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%c",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["event"] = "Health",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Total\"\n            .. \"\\n   INT: %-.2f\"\n            .. \"\\n   CRT: %-.2f\"\n            .. \"\\n   HST: %-.2f\"\n            .. \"\\n   MST: %-.2f\"\n            .. \"\\n   VRS: %-.2f\"\n            .. \"\\n   LEE: %-.2f\",\n            1.00,\n            LEAFUI_TTL_CRT,\n            LEAFUI_TTL_HST, \n            LEAFUI_TTL_MST, \n            LEAFUI_TTL_VRS,\n    LEAFUI_TTL_LEE))\n    return true\nend",
						["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["text"] = true,
			["wordWrap"] = "WordWrap",
			["stickyDuration"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Resto Druid Stat Weights 2.1",
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
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["height"] = 11.7894687652588,
			["timerFlags"] = "None",
			["spark"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["textSize"] = 12,
			["timer"] = false,
			["width"] = 11.7367525100708,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["sparkRotationMode"] = "AUTO",
			["borderSize"] = 16,
			["id"] = "Dr - R - RDSW2 Display - Total",
			["icon_side"] = "RIGHT",
			["justify"] = "RIGHT",
			["timerSize"] = 12,
			["sparkHeight"] = 30,
			["stacksFlags"] = "None",
			["stacksFont"] = "Vixar",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["zoom"] = 0,
			["sparkHidden"] = "NEVER",
			["sparkOffsetX"] = 0,
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["sparkWidth"] = 10,
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
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Zek'voz Eye Beam Range Indicator"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/BygATcEtm/10",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["unevent"] = "timed",
						["event"] = "Chat Message",
						["use_unit"] = true,
						["duration"] = "10",
						["spellIds"] = {
							130, -- [1]
						},
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["custom"] = "function(a, msg)\n    if msg then\n        if msg:find(\"spell:264382\") then\n            return true\n        end\n    end\nend\n\n\n\n\n\n",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Slow Fall", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["names"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["unevent"] = "timed",
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 182.00004577637,
			["crop_y"] = 0.41,
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
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
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
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["encounterid"] = "2136",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "B8(Oq(Stxvj",
			["startAngle"] = 0,
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["slantMode"] = "INSIDE",
			["textureWrapMode"] = "CLAMP",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["wordWrap"] = "WordWrap",
			["anchorPoint"] = "CENTER",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Zek'voz Eye Beam Range Indicator",
			["xOffset"] = -1.0001220703125,
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
			["sameTexture"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["desaturateForeground"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["fixedWidth"] = 200,
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["SanUI_OverloadedWithLight"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							223166, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Overloaded with Light", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["glow"] = false,
			["selfPoint"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = 0,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_OverloadedWithLight",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
		},
		["SanUI_PredatorySwiftness"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							16974, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Predatory Swiftness", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["useglowColor"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["parent"] = "SanUI_Buffs",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "2002",
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_PredatorySwiftness",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 11,
		},
		["SanUI_FoNOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["use_unit"] = true,
						["spellName"] = 205636,
						["charges_operator"] = ">=",
						["charges"] = "2",
						["use_charges"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = "Force of Nature",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 205636,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = true,
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
			["progressPrecision"] = 0,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Point"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
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
					["single"] = 3,
					["multi"] = {
						[2] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["use_name"] = false,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 11,
			["stickyDuration"] = false,
			["parent"] = "SanUI_Urgent",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "SCT TwCenMT",
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text1Containment"] = "INSIDE",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_FoNOffCD",
			["icon"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
		},
		["Fetid Putrid Paroxysm"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"Putrid Paroxysm", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "event",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["spellIds"] = {
							262314, -- [1]
						},
						["unevent"] = "timed",
						["check"] = "update",
						["duration"] = "6",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["event"] = "Health",
						["unevent"] = "timed",
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 10) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["names"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["anchorPoint"] = "CENTER",
			["height"] = 182.00004577637,
			["crop_y"] = 0.41,
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
				["encounterid"] = "2128",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_difficulty"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["startAngle"] = 0,
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "Db2Wf95)L67",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["wordWrap"] = "WordWrap",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["slantMode"] = "INSIDE",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["textureWrapMode"] = "CLAMP",
			["fixedWidth"] = 200,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Fetid Putrid Paroxysm",
			["xOffset"] = -1.0001220703125,
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
			["sameTexture"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/BygATcEtm/10",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
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
				0.16078431372549, -- [1]
				0.16078431372549, -- [2]
				0.164705882352941, -- [3]
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
			["sparkDesaturate"] = false,
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
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							8921, -- [1]
						},
						["custom_hide"] = "timed",
						["use_specific_unit"] = false,
						["names"] = {
							"Moonfire", -- [1]
						},
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["borderOffset"] = 5,
			["textSize"] = 12,
			["height"] = 25,
			["timerFlags"] = "None",
			["auto"] = true,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
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
			["timer"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["border"] = false,
			["borderEdge"] = "None",
			["width"] = 110,
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "RIGHT",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "SanUI_MoonfireC",
			["sparkHeight"] = 30,
			["borderBackdrop"] = "Blizzard Tooltip",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["sparkRotation"] = 0,
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
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["op"] = "<=",
						["value"] = "7",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.0901960784313726, -- [2]
								0.105882352941176, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Sea Swell (Mythic) Bar"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Bar/P1", -- [1]
				"Bar/P2", -- [2]
				"Cast Finished/P1", -- [3]
				"Cast Finished/P2", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
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
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["scale"] = 1,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = -13.4730224609375,
			["url"] = "https://wago.io/V3olCoZhS/1",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["yOffset"] = -150.105072021484,
			["internalVersion"] = 13,
			["semver"] = "1.0.0",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Sea Swell (Mythic) Bar",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["borderInset"] = 11,
			["version"] = 1,
			["expanded"] = false,
			["uid"] = "NTkFMNnrSm9",
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
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
			["config"] = {
			},
		},
		["Mother Endemic Virus"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "20",
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"Endemic Virus", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "event",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["spellIds"] = {
							279662, -- [1]
						},
						["unevent"] = "timed",
						["remOperator"] = "<=",
						["duration"] = "6",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["custom_type"] = "status",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 8) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["check"] = "update",
						["use_unit"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["customTextUpdate"] = "update",
			["height"] = 182.00004577637,
			["crop_y"] = 0.41,
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
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["encounterid"] = "2141",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "b0c)xYbCtUs",
			["startAngle"] = 0,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["width"] = 209.99998474121,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["anchorPoint"] = "CENTER",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["slantMode"] = "INSIDE",
			["xOffset"] = -1.0001220703125,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Move.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["outline"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Mother Endemic Virus",
			["textureWrapMode"] = "CLAMP",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["automaticWidth"] = "Auto",
			["config"] = {
			},
			["inverse"] = false,
			["desaturateForeground"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["Cast Finished/P1"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["parent"] = "Sea Swell (Mythic) Bar",
			["displayText"] = "",
			["config"] = {
			},
			["yOffset"] = 0,
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/V3olCoZhS/1",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "290694",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_sourceName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_SUCCESS",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 13,
			["semver"] = "1.0.0",
			["wordWrap"] = "WordWrap",
			["id"] = "Cast Finished/P1",
			["justify"] = "LEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["automaticWidth"] = "Auto",
			["uid"] = "WrkQhfFO8r1",
			["version"] = 1,
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
			["font"] = "Expressway",
			["conditions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["SanUI_SurvivalInstincts"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							61336, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Survival Instincts", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
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
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["internalVersion"] = 11,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
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
			["useglowColor"] = false,
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
			["authorOptions"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "SanUI_Buffs",
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
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["alpha"] = 1,
			["text1Containment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_SurvivalInstincts",
			["text1Font"] = "Friz Quadrata TT",
			["text2Enabled"] = false,
			["width"] = 40,
			["glow"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["SanUI_CaraffeOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 151960,
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["use_genericShowOn"] = true,
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
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["spellName"] = 221992,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["itemName"] = 151960,
						["spellName"] = 221992,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["genericShowOn"] = "showOnActive",
						["use_itemName"] = true,
						["itemName"] = 151960,
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
						["itemName"] = 151960,
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
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
			["parent"] = "SanUI_Urgent",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
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
			["text2Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["text1"] = "%c",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_CaraffeOffCD",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["useglowColor"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["progressPrecision"] = 0,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							93402, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["names"] = {
							"Sunfire", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["useglowColor"] = false,
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
			["parent"] = "SanUI_TargetDebuffs",
			["text2Font"] = "Friz Quadrata TT",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["cooldownTextEnabled"] = true,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_Sunfire",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["SanUI_DeathsDoor"] = {
			["glow"] = true,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["internalVersion"] = 11,
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["xOffset"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 41.6842498779297,
			["desaturate"] = false,
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
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["ingroup"] = {
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
			["glowColor"] = {
				1, -- [1]
				0.215686274509804, -- [2]
				0.396078431372549, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Death's Door", -- [1]
						},
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["charges"] = "2",
						["custom_hide"] = "timed",
						["charges_operator"] = ">=",
						["useName"] = true,
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 0,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 102351,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["uid"] = "ijeZz5rEqIB",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["alpha"] = 1,
			["parent"] = "SanUI_Urgent",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "%c",
			["useGlowColor"] = true,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["text2Enabled"] = false,
			["id"] = "SanUI_DeathsDoor",
			["cooldownTextEnabled"] = true,
			["frameStrata"] = 1,
			["width"] = 41.6843109130859,
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
			["config"] = {
			},
			["inverse"] = false,
			["text2Point"] = "CENTER",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_loop"] = true,
					["do_sound"] = true,
					["sound_repeat"] = 1.35190165042877,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
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
			["parent"] = "SanUI_FeralBleeds",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
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
			["textSize"] = 12,
			["useAdjustededMax"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["borderInFront"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["sparkRotationMode"] = "AUTO",
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["id"] = "SanUI_ThrashCat",
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timerSize"] = 16,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["height"] = 23.9999370574951,
			["frameStrata"] = 1,
			["width"] = 120,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["SanUI_SotF"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							158478, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Soul of the Forest", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
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
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["icon"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["glow"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_SotF",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["parent"] = "SanUI_Buffs",
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Orb Spawn Phase 2 / Transition"] = {
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["adjustedMax"] = 5,
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0.00079345703125,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["use_alwaystrue"] = true,
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["use_unit"] = true,
						["duration"] = "1",
						["use_specific_unit"] = true,
						["spellId"] = 273810,
						["spellIds"] = {
							130, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["events"] = "",
						["type"] = "status",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["event"] = "Cast",
						["use_remaining"] = false,
						["castType"] = "channel",
						["use_spellId"] = true,
						["name"] = "Xalzaix's Awakening",
						["custom_hide"] = "timed",
						["check"] = "update",
						["names"] = {
							"Slow Fall", -- [1]
						},
						["use_absorbMode"] = true,
						["unit"] = "boss1",
					},
					["untrigger"] = {
						["use_specific_unit"] = true,
						["unit"] = "boss1",
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["genericShowOn"] = "showOnActive",
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["use_unit"] = true,
						["spellIds"] = {
						},
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] then\n        for unit in WA_IterateGroupMembers() do\n            if\n            aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n            then \n                return true\n            end\n        end\n    end\nend",
						["unit"] = "player",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\n    or t[1] and t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["selfPoint"] = "CENTER",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["parent"] = "Mythrax Mythic Stuff",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 7,
			["xOffset"] = -30.999938964844,
			["height"] = 182.00004577637,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
						["HEALER"] = true,
						["DAMAGER"] = true,
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
			["crop_y"] = 0.41,
			["uid"] = "IGsa7Og8Fbn",
			["useAdjustededMax"] = true,
			["fontSize"] = 72,
			["user_y"] = 0,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["width"] = 209.99998474121,
			["frameStrata"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["sameTexture"] = true,
			["blendMode"] = "BLEND",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["displayText"] = "%c Penis",
			["slantMode"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Orb Spawn Phase 2 / Transition",
			["textureWrapMode"] = "CLAMP",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["startAngle"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["authorOptions"] = {
			},
			["backgroundOffset"] = 2,
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
			["xOffset"] = -133,
			["border"] = false,
			["yOffset"] = -205,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["regionType"] = "group",
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
			["id"] = "SanUI_FeralBleeds",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
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
			["scale"] = 1,
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
				0.16078431372549, -- [1]
				0.16078431372549, -- [2]
				0.164705882352941, -- [3]
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
			["parent"] = "SanUI_ChickenDots",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							93402, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["unit"] = "target",
						["names"] = {
							"Sunfire", -- [1]
						},
						["use_specific_unit"] = false,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["auto"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0.3,
			["textSize"] = 12,
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = true,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderInFront"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["icon_side"] = "LEFT",
			["sparkOffsetX"] = 0,
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["customTextUpdate"] = "update",
			["timerSize"] = 16,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["sparkWidth"] = 10,
			["id"] = "SanUI_SunfireC 2",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["frameStrata"] = 1,
			["width"] = 110,
			["sparkRotation"] = 0,
			["height"] = 25,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["op"] = "<=",
						["value"] = "6",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.0901960784313726, -- [3]
								1, -- [4]
							},
							["property"] = "timerColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["SanUI_Abundance2"] = {
			["glow"] = false,
			["text1FontSize"] = 22,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["do_sound"] = false,
					["glow_action"] = "show",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:SanUI_Abundance2",
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["count"] = "5",
						["useCount"] = true,
						["spellIds"] = {
							207640, -- [1]
						},
						["countOperator"] = ">=",
						["names"] = {
							"Abundance", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Font"] = "Friz Quadrata TT",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["parent"] = "SanUI_Buffs",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 1,
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
				["use_talent"] = true,
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
				["role"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
			["internalVersion"] = 11,
			["text2Point"] = "BOTTOMRIGHT",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["icon"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["width"] = 40,
			["text2FontSize"] = 19,
			["text2Enabled"] = false,
			["text1"] = "%s",
			["text1FontFlags"] = "OUTLINE",
			["text1Containment"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%s",
			["id"] = "SanUI_Abundance2",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["useglowColor"] = false,
		},
		["SanUI_Thrash"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 19,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
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
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["unit"] = "target",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["parent"] = "SanUI_TargetDebuffs",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["internalVersion"] = 11,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Containment"] = "INSIDE",
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
			["useglowColor"] = false,
			["cooldownTextEnabled"] = true,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
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
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "     %s",
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Thrash",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
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
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 106951,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
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
			["glow"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
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
			["internalVersion"] = 11,
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_Urgent",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["cooldownTextEnabled"] = true,
			["useglowColor"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["xOffset"] = 0,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_BerserkOffCD",
			["progressPrecision"] = 0,
			["text2Enabled"] = false,
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
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
			["conditions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["desaturate"] = false,
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
			["parent"] = "SanUI_FeralBleeds",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["height"] = 23.9999370574951,
			["timerFlags"] = "None",
			["useAdjustededMax"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["textSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["sparkOffsetX"] = 0,
			["borderInFront"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["icon_side"] = "LEFT",
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timerSize"] = 16,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["stacksFont"] = "Friz Quadrata TT",
			["id"] = "SanUI_Rake",
			["timer"] = true,
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkRotationMode"] = "AUTO",
			["icon"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Bursting Lesions"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -0.0001220703125,
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -19.999755859375,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/BygATcEtm/10",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["countOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["count"] = "6",
						["names"] = {
							"Bursting Lesions", -- [1]
						},
						["spellIds"] = {
							274999, -- [1]
						},
						["unit"] = "player",
						["event"] = "Health",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "267242",
						["unevent"] = "timed",
						["duration"] = "3",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["name"] = "Contagion",
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    for unit in aura_env.GroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend\n\n\n\n",
						["unevent"] = "auto",
						["check"] = "update",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_type"] = "status",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2] or\n    t[1] and t[2] and t[3]\nend\n\n",
				["activeTriggerMode"] = 2,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--iterate group members\nfunction aura_env.GroupMembers(reversed, forceParty)\n    local unit  = (not forceParty and IsInRaid()) and 'raid' or 'party'\n    local numGroupMembers = forceParty and GetNumSubgroupMembers()  or GetNumGroupMembers()\n    local i = reversed and numGroupMembers or (unit == 'party' and 0 or 1)\n    return function()\n        local ret \n        if i == 0 and unit == 'party' then \n            ret = 'player'\n        elseif i <= numGroupMembers and i > 0 then\n            ret = unit .. i\n        end\n        i = i + (reversed and -1 or 1)\n        return ret\n    end\nend\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if not UnitCanAttack(\"player\", unit) then\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
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
			["wordWrap"] = "WordWrap",
			["crop_x"] = 0.41,
			["parent"] = "Phoenix Raid Circles",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 190,
			["crop_y"] = 0.41,
			["load"] = {
				["ingroup"] = {
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
				["encounterid"] = "2134",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
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
			["uid"] = "KiapTv4xa(r",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["textureWrapMode"] = "CLAMP",
			["startAngle"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["outline"] = "OUTLINE",
			["blendMode"] = "BLEND",
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["slantMode"] = "INSIDE",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["crop"] = 0.41,
			["fixedWidth"] = 200,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Bursting Lesions",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 200,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["inverse"] = false,
			["sameTexture"] = true,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["authorOptions"] = {
			},
			["backgroundOffset"] = 2,
		},
		["SanUI_LunarEmpowerment"] = {
			["glow"] = false,
			["text1FontSize"] = 20,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							164547, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Lunar Empowerment", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
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
			["authorOptions"] = {
			},
			["internalVersion"] = 11,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["text2Point"] = "BOTTOMRIGHT",
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
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["useglowColor"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "    %s",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%s",
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_LunarEmpowerment",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = false,
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = false,
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
			["text1Enabled"] = true,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    return string.format(\"RDSW: Current\"\n        .. \"\\n   INT: %-.2f\"\n        .. \"\\n   CRT: %-.2f\"\n        .. \"\\n   HST: %-.2f\"\n        .. \"\\n   MST: %-.2f\"\n        .. \"\\n   VRS: %-.2f\"\n        .. \"\\n   LEE: %-.2f\",\n        1.00,\n        LEAFUI_CUR_CRT, \n        LEAFUI_CUR_HST, \n        LEAFUI_CUR_MST, \n        LEAFUI_CUR_VRS,\n    LEAFUI_CUR_LEE)\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["barInFront"] = true,
			["sparkRotationMode"] = "AUTO",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = "%c",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
						["event"] = "Health",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    \n    --print(LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL)\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    WeakAuras.regions[aura_env.id].region.text:SetText(string.format(\"RDSW: Current\"\n            .. \"\\n   INT: %-.2f\"\n            .. \"\\n   CRT: %-.2f\"\n            .. \"\\n   HST: %-.2f\"\n            .. \"\\n   MST: %-.2f\"\n            .. \"\\n   VRS: %-.2f\"\n            .. \"\\n   LEE: %-.2f\",\n            1.00,\n            LEAFUI_CUR_CRT, \n            LEAFUI_CUR_HST, \n            LEAFUI_CUR_MST, \n            LEAFUI_CUR_VRS,\n    LEAFUI_CUR_LEE))\n    return true\nend",
						["events"] = "LEAFUI_RDSW_UPDATE PLAYER_REGEN_ENABLED",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["text"] = true,
			["wordWrap"] = "WordWrap",
			["stickyDuration"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "Resto Druid Stat Weights 2.1",
			["sparkWidth"] = 10,
			["sparkRotation"] = 0,
			["height"] = 11.7894687652588,
			["timerFlags"] = "None",
			["stacksFont"] = "Vixar",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["timer"] = false,
			["sparkOffsetX"] = 0,
			["width"] = 11.7367525100708,
			["icon"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["sparkHidden"] = "NEVER",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%p",
			["justify"] = "RIGHT",
			["sparkHeight"] = 30,
			["auto"] = true,
			["customTextUpdate"] = "event",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["zoom"] = 0,
			["id"] = "Dr - R - RDSW2 Display - Current",
			["stacksFlags"] = "None",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["textSize"] = 12,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["SanUI_Pulverize"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							80313, -- [1]
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Pulverize", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["stickyDuration"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 21,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
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
				["race"] = {
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
			["text1Containment"] = "INSIDE",
			["parent"] = "SanUI_Buffs",
			["authorOptions"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
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
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["text1"] = "%c",
			["useglowColor"] = false,
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Pulverize",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
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
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["Dr - R - RDSW2 Core"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["parent"] = "Resto Druid Stat Weights 2.1",
			["displayText"] = "  ",
			["customText"] = "function()\n    local mstTrunc\n    local hstTrunc\n    local crtTrunc\n    local vrsTrunc\n    --print(WA_SW_ENC_MST_HEAL, WA_SW_ENC_HST_HEAL, WA_SW_ENC_CRT_HEAL, WA_SW_ENC_VRS_HEAL)\n    if WA_SW_ENC_MST_HEAL > 1000000 then\n        mstTrunc = format(\"%.2fM\", WA_SW_ENC_MST_HEAL / 1000000)\n    elseif  WA_SW_ENC_MST_HEAL > 1000 then\n        mstTrunc = format(\"%.2fk\", WA_SW_ENC_MST_HEAL / 1000)\n    else mstTrunc = format(\"%.2f\", WA_SW_ENC_MST_HEAL) end\n    \n    if WA_SW_ENC_HST_HEAL > 1000000 then\n        hstTrunc = format(\"%.2fM\", WA_SW_ENC_HST_HEAL / 1000000)\n    elseif  WA_SW_ENC_HST_HEAL > 1000 then\n        hstTrunc = format(\"%.2fk\", WA_SW_ENC_HST_HEAL / 1000)\n    else hstTrunc = format(\"%.2f\", WA_SW_ENC_HST_HEAL) end\n    \n    if WA_SW_ENC_CRT_HEAL > 1000000 then\n        crtTrunc = format(\"%.2fM\", WA_SW_ENC_CRT_HEAL / 1000000)\n    elseif  WA_SW_ENC_CRT_HEAL > 1000 then\n        crtTrunc = format(\"%.2fk\", WA_SW_ENC_CRT_HEAL / 1000)\n    else crtTrunc = format(\"%.2f\", WA_SW_ENC_CRT_HEAL) end\n    \n    if WA_SW_ENC_VRS_HEAL > 1000000 then\n        vrsTrunc = format(\"%.2fM\", WA_SW_ENC_VRS_HEAL / 1000000)\n    elseif  WA_SW_ENC_VRS_HEAL > 1000 then\n        vrsTrunc = format(\"%.2fk\", WA_SW_ENC_VRS_HEAL / 1000)\n    else vrsTrunc = format(\"%.2f\", WA_SW_ENC_VRS_HEAL) end\n    --print(mstTrunc, hstTrunc, crtTrunc, vrsTrunc)\n    return string.format(\"Encounter Only Stat Values:\"\n        .. \"\\n   MST: %.2f\"\n        .. \"\\n   HST: %.2f\"\n        .. \"\\n   CRT: %.2f\"\n        .. \"\\n   VRS: %.2f\"\n        .. \"\\n\\nHealing Done:\"\n        .. \"\\n   H-MST: %s\"\n        .. \"\\n   H-HST: %s\"\n        .. \"\\n   H-CRT: %s\"\n        .. \"\\n   H-VRS: %s\",\n        WA_SW_ENC_MST, \n        WA_SW_ENC_HST, \n        WA_SW_ENC_CRT, \n        WA_SW_ENC_VRS,  \n        mstTrunc,\n        hstTrunc,\n        crtTrunc,\n    vrsTrunc)\n    \n    \nend",
			["yOffset"] = -125,
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["custom_hide"] = "custom",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED ENCOUNTER_START ENCOUNTER_END COMBAT_RATING_UPDATE UNIT_STATS PLAYER_ENTERING_WORLD",
						["spellIds"] = {
						},
						["custom"] = "--Original Author Manaleaf - Sargeras\n--Updated for patch 7.3.2 by Voulk (Voulk#1858 on discord)\n\n--[[ \nVERSION 2.1\n- Dreamer now scales correctly with all secondary stats.\n- Corrected Leech calculations\n\n\nVERSION 2.0\n- Leech stat weight added.\n- Added normalization around int = 1 instead of highest stat weight\n- Added support for the T21 dreamer HoT\n- Added support for wide monitor resolutions\n\n--]]\n\nfunction(e,...)\n    local timeStamp = GetTime()\n    \n    --Returns the current number of Player casted hots on the unit\n    local function hotCounter(name)\n        local destUnit\n        local grpCount = GetNumGroupMembers()\n        if UnitInRaid(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"raid\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"raid\" .. i\n                    break\n                end\n            end   \n        elseif UnitInParty(\"player\") then\n            for i = 1, grpCount  do\n                local name2,realm2 = UnitName(\"party\"..i)\n                if realm2 then name2 = name2 .. \"-\" .. realm2 end\n                \n                if name2 == name then\n                    destUnit = \"party\" .. i\n                    break\n                end\n            end \n        elseif UnitName(\"player\") == name then\n            \n            destUnit = \"player\" \n        end\n        if not destUnit then\n            return -1 --Failure Flag\n        end\n        local hCount = 0 \n        for k,v in ipairs(aura_env.hotList) do\n            local spellName = GetSpellInfo(v)\n            if UnitBuff(destUnit, spellName, nil, \"PLAYER\") then hCount = hCount + 1 end \n        end\n        return hCount\n    end\n    \n    --Inserts a row into a chain of tables.\n    local function insert(i, t1, t2, t3)\n        tinsert(WA_RDSW_expire, i, t1)\n        tinsert(WA_RDSW_guid, i, t2)\n        tinsert(WA_RDSW_reduce, i, t3)\n    end\n    \n    --Removes a row into a chain of tables.\n    local function removet(i, t1, t2, t3)\n        table.remove(t1, i)\n        table.remove(t2, i)\n        table.remove(t3, i)\n    end\n    \n    \n    --Function finds the lowest non-zero, non-negative value\n    --Still returns 0 if all arguements are 0.\n    local function maxButNotZero(n1, n2, n3, n4, n5)\n        local max = 1\n        if n1 ~= nil and n1 > max then max = n1 end\n        if n2 ~= nil and n2 > max then max = n2 end\n        if n3 ~= nil and n3 > max then max = n3 end\n        if n4 ~= nil and n4 > max then max = n4 end\n        if n5 ~= nil and n5 > max then max = n5 end\n        return max\n    end\n    \n    --[[\n    Returns 1 if player is inside instance and player is in a party.\n    Returns 2 if player is inside instance and player is in not in a party (is in a raid).\n    Returns 3 if player is not inside instance.\n    ]]\n    local function instanceCheck()\n        local instanced, instanceType = IsInInstance()\n        if instanced then\n            if instanceType == \"party\" then\n                return 1\n            else\n                return 2\n            end\n        end\n        return 0\n    end\n    \n    --Allocates stat values\n    local function allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal, leeHeal)\n        \n        --Total Healing Score Allocation\n        LEAFUI_TTL_SP_HEAL = LEAFUI_TTL_SP_HEAL + spHeal\n        LEAFUI_TTL_MST_HEAL = LEAFUI_TTL_MST_HEAL + mstHeal\n        LEAFUI_TTL_HST_HEAL = LEAFUI_TTL_HST_HEAL + hstHeal\n        LEAFUI_TTL_CRT_HEAL = LEAFUI_TTL_CRT_HEAL + crtHeal\n        LEAFUI_TTL_VRS_HEAL = LEAFUI_TTL_VRS_HEAL + vrsHeal\n        LEAFUI_TTL_LEE_HEAL = LEAFUI_TTL_LEE_HEAL + leeHeal\n        \n        --Current Encounter Healing Score Allocation\n        LEAFUI_CUR_SP_HEAL = LEAFUI_CUR_SP_HEAL + spHeal\n        LEAFUI_CUR_MST_HEAL = LEAFUI_CUR_MST_HEAL + mstHeal\n        LEAFUI_CUR_HST_HEAL = LEAFUI_CUR_HST_HEAL + hstHeal\n        LEAFUI_CUR_CRT_HEAL = LEAFUI_CUR_CRT_HEAL + crtHeal\n        LEAFUI_CUR_VRS_HEAL = LEAFUI_CUR_VRS_HEAL + vrsHeal\n        LEAFUI_CUR_LEE_HEAL = LEAFUI_CUR_LEE_HEAL + leeHeal\n        \n        --Stat Value Score Allocation\n        \n        --local maxCurHeal = maxButNotZero(LEAFUI_CUR_SP_HEAL, LEAFUI_CUR_MST_HEAL, LEAFUI_CUR_HST_HEAL, LEAFUI_CUR_CRT_HEAL, LEAFUI_CUR_VRS_HEAL) \n        --local maxTtlHeal = maxButNotZero(LEAFUI_TTL_SP_HEAL, LEAFUI_TTL_MST_HEAL, LEAFUI_TTL_HST_HEAL, LEAFUI_TTL_CRT_HEAL, LEAFUI_TTL_VRS_HEAL) \n        \n        LEAFUI_CUR_SP =  max(LEAFUI_CUR_SP_HEAL, 1)\n        LEAFUI_CUR_MST = LEAFUI_CUR_MST_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_HST = LEAFUI_CUR_HST_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_CRT = LEAFUI_CUR_CRT_HEAL / LEAFUI_CUR_SP\n        LEAFUI_CUR_VRS = LEAFUI_CUR_VRS_HEAL / LEAFUI_CUR_SP \n        LEAFUI_CUR_LEE = LEAFUI_CUR_LEE_HEAL / LEAFUI_CUR_SP\n        \n        LEAFUI_TTL_SP =  max(LEAFUI_TTL_SP_HEAL, 1)\n        LEAFUI_TTL_MST = LEAFUI_TTL_MST_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_HST = LEAFUI_TTL_HST_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_CRT = LEAFUI_TTL_CRT_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_VRS = LEAFUI_TTL_VRS_HEAL / LEAFUI_TTL_SP\n        LEAFUI_TTL_LEE = LEAFUI_TTL_LEE_HEAL / LEAFUI_TTL_SP\n        \n        --[[LEAFUI_CUR_SP = LEAFUI_CUR_SP_HEAL / maxCurHeal\n        LEAFUI_CUR_MST = LEAFUI_CUR_MST_HEAL / maxCurHeal\n        LEAFUI_CUR_HST = LEAFUI_CUR_HST_HEAL / maxCurHeal\n        LEAFUI_CUR_CRT = LEAFUI_CUR_CRT_HEAL / maxCurHeal\n        LEAFUI_CUR_VRS = LEAFUI_CUR_VRS_HEAL / maxCurHeal    \n        \n        LEAFUI_TTL_SP =  LEAFUI_TTL_SP_HEAL / maxTtlHeal\n        LEAFUI_TTL_MST = LEAFUI_TTL_MST_HEAL / maxTtlHeal\n        LEAFUI_TTL_HST = LEAFUI_TTL_HST_HEAL / maxTtlHeal\n        LEAFUI_TTL_CRT = LEAFUI_TTL_CRT_HEAL / maxTtlHeal\n        LEAFUI_TTL_VRS = LEAFUI_TTL_VRS_HEAL / maxTtlHeal ]]  \n        \n        --[[\n        print(\"------------------\")\n        print(LEAFUI_CUR_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        print(\"------------------\")\n        print(LEAFUI_TTL_SP)\n        print(LEAFUI_CUR_MST)\n        print(LEAFUI_CUR_HST)\n        print(LEAFUI_CUR_CRT)\n        print(LEAFUI_CUR_VRS)\n        ]]\n        \n    end\n    \n    \n    \n    --Calculates and Sets stat weight values\n    local function decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid, overhealFlag)\n        \n        \n        --Mastery Percentage\n        local hCount = hotCounter(name)\n        if hCount == -1 then return true end\n        local mstPerc = aura_env.mstPerc * hCount\n        \n        --Haste Percentage \n        local hstPerc --Only for Hots\n        if hstFlag then\n            hstPerc = aura_env.hstPerc\n        else \n            hstPerc = 0\n        end\n        \n        --Get Base Heal\n        if crtFlag == true then\n            heal = heal / (2 + aura_env.critBonusOutput)\n        end\n        \n        --Crit Percentage (Bonus)\n        local crtPerc \n        if sklFlag == 1 then \n            if overHeal ~= 0 then return true end\n            crtPerc = (aura_env.crtPerc +  aura_env.REGROWTHBASECRT) * (1 + aura_env.critBonusOutput)\n        else\n            crtPerc = aura_env.crtPerc * (1 + aura_env.critBonusOutput)\n        end\n        \n        \n        --Spell Coeff.\n        local sce = heal / ( aura_env.spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) )\n        \n        local spellPower  = sce * aura_env.spellPower\n        --Haste Calc (Only for Hots)\n        if hstFlag then\n            hstHeal = spellPower * (1 + mstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) / aura_env.HSTRATINGCONV \n        else \n            hstHeal = 0\n        end\n        \n        --Mastery Calc\n        mstHeal = spellPower * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * hCount / aura_env.MSTRATINGCONV\n        \n        --Crit Calc\n        crtHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + aura_env.critBonusOutput) / aura_env.CRTRATINGCONV\n        \n        --Versatility calc\n        vrsHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + crtPerc) / aura_env.VRSRATINGCONV\n        \n        -- Leech calc\n        if UnitHealth(\"player\") ~= UnitHealthMax(\"player\") and tGuid ~= UnitGUID(\"player\") then \n            leeHeal = spellPower * (1 + mstPerc) * (1 + hstPerc) * (1 + crtPerc) * (1 + aura_env.vrsPerc) / aura_env.LEERATINGCONV\n            -- 4.5 * 70000 * 1.25 * 1.3 * 1.2 * 1.05 / 23000 = 28\n            --print(\"Heal\" .. heal .. \". LeeHeal: \" .. leeHeal .. \". spHeal \" .. spHeal)\n        else\n            leeHeal = 0\n        end\n        \n        --Spell Power Calc\n        --1.05 = Primary Stat Bonus from Armor\n        spHeal = sce * (1 + mstPerc) * (1 + hstPerc) * (1 + aura_env.vrsPerc) * (1 + crtPerc) * 1.05\n        -- 4.5 * 1.25 * 1.3 * 1.2 * 1.05 * 1.05 = 9.6\n        \n        --[[\n        print(\"---------------\")\n        print(\"spHeal:\", spHeal)\n        print(\"mstHeal:\", mstHeal)\n        print(\"vrsHeal:\", vrsHeal)\n        print(\"hstHeal:\", hstHeal)\n        print(\"crtHeal:\", crtHeal)\n        print(\"---------------\")\n        ]]\n        --print(overhealFlag)\n        if (overhealFlag) then allocate(0, 0, 0, 0, 0, leeHeal)\n        else allocate(spHeal, mstHeal, hstHeal, crtHeal, vrsHeal, leeHeal)\n        end\n    end\n    \n    --Sets Encounter data to be printed to file.\n    --Para mode: sets print out to stat either \"WIPE\" if mode - 0 or \"KILL\" if mode = 1\n    local function printToFile(eID, eName, difficulty, raidSize, mode) \n        local outcome\n        if mode == 0 or mode == 1 then\n            if mode == 0 then outcome = \"WIPE\"\n            elseif mode == 1 then outcome = \"KILL\"\n            end\n            \n            local outString = \"ENCOUNTER: %s eID: %d \" \n            .. \"Time: %s \"\n            .. \"Player: %s \"\n            .. \"Difficulty: %d raidSize: %d \"\n            .. \"Outcome: %s \"\n            .. \"+_ \"\n            .. \"INT: %.4f \"\n            .. \"MST: %.4f \"\n            .. \"HST: %.4f \"\n            .. \"CRT: %.4f \"\n            .. \"VRS: %.4f \"\n            .. \"LEE: %.4f \"\n            \n            \n            \n            tinsert(Leaf_RDSW, string.format(outString,\n                    eName, \n                    eID, \n                    aura_env.time,\n                    UnitName(\"player\"),\n                    difficulty, \n                    raidSize, \n                    outcome, \n                    LEAFUI_CUR_SP,\n                    LEAFUI_CUR_MST,\n                    LEAFUI_CUR_HST,\n                    LEAFUI_CUR_CRT,\n                    LEAFUI_CUR_VRS,\n            LEAFUI_CUR_LEE))\n        end    \n    end\n    \n    --Clears the current healing and stat values\n    local function clearStats()\n        LEAFUI_CUR_SP = 0\n        LEAFUI_CUR_MST = 0\n        LEAFUI_CUR_HST = 0\n        LEAFUI_CUR_CRT = 0\n        LEAFUI_CUR_VRS = 0\n        LEAFUI_CUR_LEE = 0\n        \n        LEAFUI_CUR_SP_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_MST_HEAL = 0\n        LEAFUI_CUR_HST_HEAL = 0\n        LEAFUI_CUR_CRT_HEAL = 0\n        LEAFUI_CUR_VRS_HEAL = 0\n        LEAFUI_CUR_LEE_HEAL = 0\n    end\n    \n    \n    --MAIN--\n    if e == \"ARTIFACT_UPDATE\" then\n        updateArtifact()\n        return true\n    end\n    \n    local function updateArtifact()\n        if IsEquippedItem(128306) == true and aura_env.apUpdated == false then\n            SocketInventoryItem(16)\n            seedsPoints, _ = select(3,C_ArtifactUI.GetPowerInfo(131))\n            aura_env.apUpdated = true\n            aura_env.REGROWTHBASECRT = .4 + .08 * seedsPoints\n        end\n    end\n    \n    --Updates Character Stats\n    local function updateStats()\n        aura_env.mstPerc = GetMasteryEffect() / 100 --GetCombatRatingBonus(26) / 100 * hCount  \n        aura_env.hstPerc = UnitSpellHaste(\"player\") / 100\n        aura_env.crtPerc = GetCritChance() / 100\n        aura_env.vrsPerc = (GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)) / 100\n        aura_env.spellPower = GetSpellBonusDamage(4)\n        aura_env.leePerc = GetLifesteal() / 100\n        \n        updateArtifact()\n        \n        if IsEquippedItem(\"Drape of Shame\") then \n            aura_env.critBonusOutput = 0.05 * (1 + aura_env.taurenRacial)\n        end\n    end\n    \n    if e == \"PLAYER_ENTERING_WORLD\" then\n        updateStats()\n        if instanceCheck() == 1 then\n            aura_env.encounter = true\n        elseif instanceCheck() == 0 then\n            aura_env.encounter = false\n        end\n    elseif e == \"UNIT_STATS\" or e == \"COMBAT_RATING_UPDATE\" then      \n        updateStats()\n    elseif e == \"ENCOUNTER_START\" then \n        if instanceCheck() == 2 then\n            print(\"RDSW2: Boss Encounter has Begun. Recording.\")\n            aura_env.time = date(\"%m/%d/%y %H:%M:%S\")\n            aura_env.encounter = true\n            clearStats()\n        end\n    elseif  e == \"ENCOUNTER_END\" then \n        if instanceCheck() == 2 then\n            if IsAddOnLoaded(\"RDSW\") then \n                print(\"RDSW2: Boss Encounter has Ended. Recording to file.\")\n            else\n                print(\"RDSW2: Boss Encounter has Ended.\")\n            end\n            printToFile(...) \n            if UnitExists(\"boss1\") == false and (UnitHealth(\"boss1\") == 0 or  UnitIsEnemy(\"player\",\"boss1\") == false) then \n                aura_env.encounter = false\n            end\n        end\n    elseif e == \"COMBAT_LOG_EVENT_UNFILTERED\" and aura_env.encounter == true then \n        --If overheal is present and Living Seed table does not need to be updated. Cancel operation.\n        --if select(16,...) ~= 0 and (sName ~= aura_env.spells.livingseed or sName ~= aura_env.spells.regrowth) then\n        --    WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n        --    return true\n        --end\n        \n        local heal, overHeal, crtFlag, effHeal, sName, hstFlag, sklFlag, tGuid, overhealFlag\n        sklFlag = 0\n        local sType = select(2, ...)\n        if select(4, ...) == UnitGUID(\"player\") then \n            sName = select(13,...)\n            heal = select(15, ...)\n            \n            if sType == \"SPELL_DAMAGE\" or sType == \"SPELL_PERIODIC_DAMAGE\" and UnitHealth(\"player\") ~= UnitHealthMax(\"player\") then\n                -- Perform Leech calculations on damage dealt.\n                local missingHealth, leeHeal, damage\n                damage = select(15, ...)\n                missingHealth = UnitHealthMax(\"player\") - UnitHealth(\"player\")       \n                leeHeal = min(damage * 0.005, missingHealth) / 115   \n                LEAFUI_CUR_LEE_HEAL = LEAFUI_CUR_LEE_HEAL + leeHeal\n                LEAFUI_TTL_LEE_HEAL = LEAFUI_TTL_LEE_HEAL + leeHeal\n                --print(\"Damage Leech\")\n                \n                --Hot Spells (haste effected)\n            elseif sType == \"SPELL_PERIODIC_HEAL\" then\n                if sName == aura_env.spells.rejuvenation\n                or sName == aura_env.spells.germination\n                or sName == aura_env.spells.lifebloom\n                or sName == aura_env.spells.regrowth\n                or sName == aura_env.spells.wildgrowth\n                or sName == aura_env.spells.springblossoms\n                or sName == aura_env.spells.cultivation\n                or sName == aura_env.spells.cenarionward\n                or sName == aura_env.spells.dreamer\n                then hstFlag = true end\n                \n                --Direct Healing Spells (Mostly not Haste Effected)   \n            elseif sType == \"SPELL_HEAL\" then \n                sName,_= select(13,...)\n                if sName == aura_env.spells.tranquility then\n                    return true\n                elseif sName == aura_env.spells.efflorescence then hstFlag = true\n                    \n                elseif sName == aura_env.spells.regrowth then \n                    sklFlag = 1\n                    hstFlag = false\n                    \n                elseif sName == aura_env.spells.livingseed then\n                    sklFlag = 2\n                    hstFlag = false\n                    --elseif sName == aura_env.spells.refractiveShell then\n                    --    sklFlag = 3\n                    --    hstFlag = false\n                    \n                elseif sName == aura_env.spells.swiftmend\n                or sName == aura_env.spells.healingtouch\n                or sName == aura_env.spells.lifebloom\n                then hstFlag = false end\n            end\n            \n            if hstFlag ~= nil then    --If hstFlag == nil, healing was not done by a spell in the above listing. ie: Ysera's gift is uneffected by secondaries\n                tGuid, name,_= select(8,...)\n                heal,_,_,crtFlag,_ = select(15,...)\n                overheal = select(16, ...)\n                \n                if overheal ~= nil and overheal ~= 0 then \n                    overhealFlag = true\n                    --print(\"Overheal: \" .. overheal)\n                else overhealFlag = false end\n                \n                decompHeal(heal, overHeal, name, crtFlag, hstFlag, sName, sklFlag, tGuid, overhealFlag)\n            end         \n        end\n        WeakAuras.ScanEvents(\"LEAFUI_RDSW_UPDATE\")\n    end\n    return true\nend",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function()\nreturn true\nend",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["internalVersion"] = 11,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "Dr - R - RDSW2 Core",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["width"] = 10.1052560806274,
			["xOffset"] = 0,
			["config"] = {
			},
			["font"] = "Vixar",
			["anchorFrameType"] = "SCREEN",
			["height"] = 11.789478302002,
			["conditions"] = {
			},
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
			["authorOptions"] = {
			},
		},
		["SanUI_Barkskin"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							22812, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Barkskin", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["internalVersion"] = 11,
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
			["useglowColor"] = false,
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
			["glowType"] = "buttonOverlay",
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
			["text1Font"] = "Friz Quadrata TT",
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
			["text1"] = "%c",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_Barkskin",
			["glow"] = false,
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
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
		["LB Active: Below Pandemic - Icon "] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 26,
			["color"] = {
				0.96470588235294, -- [1]
				1, -- [2]
				0.94901960784314, -- [3]
				0.90771941095591, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownTextEnabled"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["selfPoint"] = "CENTER",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["rem"] = "4.5",
						["use_castType"] = false,
						["use_totemName"] = true,
						["use_unit"] = true,
						["duration"] = "30",
						["use_spell"] = true,
						["unit"] = "group",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["remaining_operator"] = "<=",
						["spellIds"] = {
							33763, -- [1]
						},
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["use_remaining"] = true,
						["custom_hide"] = "custom",
						["type"] = "aura",
						["spell"] = "Efflorescence",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["ownOnly"] = true,
						["unevent"] = "auto",
						["event"] = "Totem",
						["totemName"] = 145205,
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["use_specific_unit"] = false,
						["remOperator"] = "<=",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["name_info"] = "aura",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 134222,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 5,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 54,
			["text1Containment"] = "OUTSIDE",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["fortyman"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
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
				["use_vehicle"] = false,
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
				["use_ingroup"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_vehicleUi"] = false,
			},
			["url"] = "https://wago.io/SJzs3stm-/5",
			["authorOptions"] = {
			},
			["desaturate"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["width"] = 54,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["progressPrecision"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["xOffset"] = 0,
			["text1"] = ">%p<",
			["text2"] = "%p",
			["text1Enabled"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 3,
			["id"] = "LB Active: Below Pandemic - Icon ",
			["text1Font"] = "Arial Narrow",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Lifebloom-Watch",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["SlamDunk.Groups"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return aura_env.groupText\nend\n\n\n\n",
			["yOffset"] = 336.631652832031,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.groupText = \"Waiting for group data...\"",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unit"] = "player",
						["custom_type"] = "status",
						["events"] = "GHUUN_GROUPS_STRING",
						["spellIds"] = {
						},
						["event"] = "Health",
						["customStacks"] = "function()\n    return GetTime()\nend\n\n\n",
						["customDuration"] = "\n\n\n\n",
						["customName"] = "\n\n\n",
						["custom"] = "function(event, text)\n    if text then\n        aura_env.groupText = text\n    end\n    return true\nend",
						["buffShowOn"] = "showOnActive",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["desc"] = "Orb groups display module. This can be disabled in combat if you prefer.",
			["font"] = "ABF",
			["version"] = 6,
			["load"] = {
				["zoneId"] = "1155",
				["zonegroupId"] = "384",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["use_difficulty"] = true,
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 14,
			["regionType"] = "text",
			["xOffset"] = -472.315768241882,
			["justify"] = "LEFT",
			["parent"] = "Uldir.Ghuun.SlamDunk",
			["id"] = "SlamDunk.Groups",
			["url"] = "https://wago.io/HyZu-Vj07/6",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "dvb)DaUKsXr",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["config"] = {
			},
			["selfPoint"] = "TOPLEFT",
		},
		["Infested on nameplate"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				0.97647058823529, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\nend\n\n\n\n",
			["yOffset"] = -383.999855041504,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Sk2SO80WX/5",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["version"] = 5,
			["height"] = 72.000015258789,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["zone"] = "The Nighthold",
				["encounterid"] = "2092",
				["use_encounterid"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["single"] = "party",
					["multi"] = {
						["party"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["zoneId"] = 1088,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["single"] = "challenge",
					["multi"] = {
						["mythic"] = true,
						["challenge"] = true,
					},
				},
				["use_spellknown"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["use_zoneId"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 72,
			["displayStacks"] = " ",
			["xOffset"] = 355.526794433594,
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "status",
						["event"] = "Chat Message",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["custom"] = "--mostly pirated from a man who pirated it from pottm's star augur nameplate aura, credit also to weakauras discord for unitbuff workaround\nfunction()\n    if GetTime()-(aura_env.LastScan or 0) < 0.3 then return end \n    aura_env.LastScan=GetTime()\n    aura_env.everyFrame()\n    local ret = false\n    \n    if GetCVar(\"nameplateShowEnemies\") == \"1\" then      \n        local spell = GetSpellInfo(277242)\n        for i = 1, 40 do\n            local enemy = \"nameplate\"..i\n            local _, icon = GetUnitBuff(enemy, spell)\n            \n            if icon then\n                aura_env.addTextureToNameplate(enemy, icon, 40, 1, 1, 1, 1)\n                ret = true\n            end\n        end\n    end\n    \n    return ret\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["names"] = {
						},
						["unevent"] = "auto",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return true\nend",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["fixedWidth"] = 200,
			["desaturate"] = false,
			["conditions"] = {
			},
			["justify"] = "LEFT",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "Infested on nameplate",
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "--[[\nClick 'Expand' for settings\n]]--\n\n\n------SETTINGS ----------------------------------------------------------------------------\n------change the numeric values below to move the position of the icon --------------------\nlocal vertOffset = 50 --  default value 50, vertical offset of icon from nameplate, smaller values are closer to nameplate\nlocal horizOffset = 0 --  default value 0, horizontal offset, negative values will move it to the left, positive to the right\n\n\n\n\n\n\n------DON'T EDIT BELOW HERE --------------------------------------------------------------\n------------------------------------------------------------------------------------------\nGetUnitAura = function(unit, spell, filter)\n    for i = 1, 40 do\n        local name, _, _, _, _, _, _, _, _, spellId = UnitAura(unit, i, filter)\n        if not name then return end\n        if spell == spellId or spell == name then\n            return UnitAura(unit, i, filter)\n        end\n    end\nend\nGetUnitBuff = function(unit, spell, filter)\n    return GetUnitAura(unit, spell, filter)\nend\nGetUnitDebuff = function(unit, spell, filter)\n    filter = filter and filter..\"|HARMFUL\" or \"HARMFUL\"\n    return GetUnitAura(unit, spell, filter)\nend\n\naura_env.texturePool = {}\naura_env.textureIndex = 0\naura_env.string = \"Interface\\\\AddOns\\\\WeakAuras\\\\Media\\\\Textures\\\\Circle_White.tga\"\n\naura_env.rangecheck = function(uId)\n    local range = 0\n    if IsItemInRange(37727, uId) then range = 5--Ruby Acorn\n    elseif IsItemInRange(63427, uId) then range = 8--Worgsaw\n    elseif CheckInteractDistance(uId, 3) then range = 10\n    elseif CheckInteractDistance(uId, 2) then range = 11\n    elseif IsItemInRange(32321, uId) then range = 13--reports 12 but actual range tested is 13\n    elseif IsItemInRange(6450, uId) then range = 18--Bandages.\n    elseif IsItemInRange(21519, uId) then range = 22--Item says 20, returns true until 22.\n    elseif CheckInteractDistance(uId, 1) then range = 30\n    elseif UnitInRange(uId) then range = 43\n    elseif IsItemInRange(116139, uId)  then range = 50\n    elseif IsItemInRange(32825, uId) then range = 60\n    elseif IsItemInRange(35278, uId) then range = 80\n    else range = 1000 end--Just so it has a numeric value, even if it's unknown to protect from nil errors\n    return range\nend\naura_env.round = function(num, idp)\n    local mult = 10^(idp or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\naura_env.getTextureFromPool = function()\n    aura_env.textureIndex = aura_env.textureIndex + 1\n    if aura_env.textureIndex > #aura_env.texturePool then\n        local frame = CreateFrame(\"Frame\") --, nil, UIParent)\n        frame:SetFrameStrata(\"BACKGROUND\")\n        frame:SetFrameLevel(0)\n        frame:SetPoint(\"CENTER\", 0, 0)\n        frame:Hide()\n        frame.icon = frame:CreateTexture(nil, \"BACKGROUND\", nil, -8)\n        frame.icon:SetAllPoints()\n        frame.string = frame:CreateFontString(nil, \"BACKGROUND\", nil, -7)\n        aura_env.texturePool[aura_env.textureIndex] = frame\n    end\n    return aura_env.texturePool[aura_env.textureIndex]\nend\n\n\n\naura_env.addTextureToNameplate = function(unit, icon, width2, r2, g2, b2, a2, duration)\n    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)\n    if not nameplate then return end\n    local frame = aura_env.getTextureFromPool()\n    frame:ClearAllPoints()\n    frame:SetPoint(\"CENTER\", nameplate, \"CENTER\", horizOffset, vertOffset)\n    frame:SetSize(width2, width2)\n    frame.icon:SetVertexColor(r2, g2, b2, a2)\n    frame.string:SetFont(\"Fonts\\\\FRIZQT__.TTF\", 10, \"OUTLINE\")\n    frame.string:SetPoint(\"TOPLEFT\", frame, \"TOPLEFT\", 0, 10)\n    frame.icon:SetTexture(icon)\n    if duration ~= -1 then\n        frame.string:SetText(duration)\n    else\n        frame.string:SetText(\"\")\n    end\n    frame:Show()\nend\n\n\naura_env.everyFrame = function()\n    \n    \n    for i=1, #aura_env.texturePool do\n        aura_env.texturePool[i]:Hide()\n    end\n    aura_env.textureIndex = 0\n    \n    \nend",
					["do_custom"] = true,
				},
			},
			["frameStrata"] = 1,
			["width"] = 27.000003814697,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["displayIcon"] = 136235,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["LB Not Active: CAST! - Icon"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 22,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.031372549019608, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["stickyDuration"] = false,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["rem"] = "0",
						["use_specific_unit"] = false,
						["unit"] = "group",
						["use_inverse"] = true,
						["use_spell"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_castType"] = false,
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["spellIds"] = {
						},
						["group_count"] = "0",
						["group_countOperator"] = "==",
						["spell"] = "Efflorescence",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["type"] = "aura",
						["countOperator"] = "==",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "30",
						["custom_type"] = "event",
						["event"] = "Totem",
						["totemName"] = 145205,
						["custom_hide"] = "custom",
						["debuffType"] = "HELPFUL",
						["count"] = "0",
						["ownOnly"] = true,
						["remOperator"] = "<",
						["name_info"] = "aura",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["use_totemName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "Lifebloom-Watch",
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1.2,
					["alphaType"] = "straight",
					["colorB"] = 0.043137254901961,
					["colorG"] = 0.027450980392157,
					["alphaFunc"] = "function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorA"] = 1,
					["use_translate"] = false,
					["use_alpha"] = false,
					["use_scale"] = false,
					["type"] = "preset",
					["preset"] = "spin",
					["scaley"] = 1.2,
					["translateFunc"] = "function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["use_color"] = true,
					["alpha"] = 0,
					["colorType"] = "straightColor",
					["y"] = 0,
					["x"] = 0,
					["scaleType"] = "straightScale",
					["scaleFunc"] = "function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      return r1 + (progress * (r2 - r1)), g1 + (progress * (g2 - g1)), b1 + (progress * (b2 - b1)), a1 + (progress * (a2 - a1))\n    end\n  ",
					["rotate"] = 0,
					["translateType"] = "straightTranslate",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:LB Not Active: CAST! - Icon Raid",
				},
				["init"] = {
					["custom"] = "aura_env.expires = 0",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["displayIcon"] = "134206",
			["text1Containment"] = "OUTSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 5,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["glow"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["party"] = true,
						["flexible"] = true,
						["twenty"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
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
				["use_vehicle"] = false,
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
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1",
				["use_combat"] = true,
				["use_vehicleUi"] = false,
				["use_size"] = false,
			},
			["useglowColor"] = false,
			["desaturate"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Arial Narrow",
			["width"] = 50,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["progressPrecision"] = 0,
			["frameStrata"] = 3,
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "*CAST*",
			["text2"] = "%p",
			["cooldownTextEnabled"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["text1Color"] = {
				0.88235294117647, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["id"] = "LB Not Active: CAST! - Icon",
			["url"] = "https://wago.io/SJzs3stm-/5",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["text1Enabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["authorOptions"] = {
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							29166, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Innervate", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_Buffs",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
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
			["text2Font"] = "Friz Quadrata TT",
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["glow"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Innervate",
			["useglowColor"] = false,
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
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 11,
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
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["timer"] = true,
			["height"] = 23.9999370574951,
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
			["useAdjustededMax"] = false,
			["spark"] = false,
			["sparkRotation"] = 0,
			["borderInFront"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["sparkRotationMode"] = "AUTO",
			["id"] = "SanUI_Berserk",
			["sparkHeight"] = 30,
			["sparkOffsetX"] = 0,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksFont"] = "Friz Quadrata TT",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Obliteration Beam Timer "] = {
			["outline"] = "OUTLINE",
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = -2.999755859375,
			["displayText"] = "Beam in %p ",
			["text2Enabled"] = false,
			["yOffset"] = 98.001159667969,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["custom"] = "\n\n\n\n",
					["message_type"] = "RAID_WARNING",
					["message"] = "",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "\n\n\n",
					["do_custom"] = false,
				},
			},
			["cooldownTextEnabled"] = true,
			["glow"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "272115",
						["duration"] = "1",
						["message_operator"] = "==",
						["subeventPrefix"] = "SPELL",
						["spellId_operator"] = "==",
						["remaining"] = "6",
						["genericShowOn"] = "showOnActive",
						["remaining_operator"] = "<=",
						["use_unit"] = true,
						["text_operator"] = "find('%s')",
						["custom_hide"] = "timed",
						["use_remaining"] = true,
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Obliteration Beam",
						["text"] = "Manifest Azzinoth",
						["event"] = "DBM Timer",
						["use_text"] = true,
						["message"] = "",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["use_message"] = false,
						["use_addon"] = false,
						["names"] = {
						},
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "272115",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "6",
						["text_operator"] = "match('%s')",
						["type"] = "status",
						["unevent"] = "auto",
						["text"] = "^[^<]",
						["use_text"] = true,
						["use_absorbMode"] = true,
						["remaining_operator"] = "<=",
						["use_spellId"] = true,
						["name"] = "Obliteration Beam",
						["subeventSuffix"] = "_CAST_START",
						["use_remaining"] = true,
						["event"] = "BigWigs Timer",
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "Elide",
			["automaticWidth"] = "Auto",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "hjY)FKX9U)P",
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOM",
			["version"] = 7,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 96,
			["desaturate"] = false,
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
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
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
				["encounterid"] = "2135",
				["role"] = {
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
			["width"] = 96,
			["frameStrata"] = 1,
			["fontSize"] = 35,
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				0.043137254901961, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["authorOptions"] = {
			},
			["displayIcon"] = 1386551,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["justify"] = "LEFT",
			["text2"] = "%p",
			["text2FontSize"] = 24,
			["selfPoint"] = "CENTER",
			["text1"] = "Beam soon",
			["text1FontFlags"] = "OUTLINE",
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["text1Color"] = {
				1, -- [1]
				0.92549019607843, -- [2]
				0.99607843137255, -- [3]
				1, -- [4]
			},
			["id"] = "Obliteration Beam Timer ",
			["text1Containment"] = "OUTSIDE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 0.97647058823529,
					["type"] = "custom",
					["scalex"] = 1,
					["preset"] = "alphaPulse",
					["colorB"] = 0.92156862745098,
					["scaley"] = 1,
					["alpha"] = 0,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorType"] = "custom",
					["colorFunc"] = "function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n    local angle = (progress * 2 * math.pi) - (math.pi / 2)\n    local newProgress = ((math.sin(angle) + 1)/2);\n    return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\nend\n\n\n",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["use_color"] = true,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["fixedWidth"] = 200,
			["cooldown"] = true,
			["parent"] = "Mythrax Mythic Stuff",
		},
		["Contagion >= 6 stacks"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -19.999755859375,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Lingering Infection", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["useCount"] = true,
						["count"] = "6",
						["unit"] = "player",
						["spellIds"] = {
							265127, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["countOperator"] = ">=",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "267242",
						["unevent"] = "timed",
						["duration"] = "3",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_spellId"] = true,
						["name"] = "Contagion",
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    for unit in aura_env.GroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend\n\n\n\n",
						["unevent"] = "auto",
						["check"] = "update",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] and t[2] or\n    t[1] and t[2] and t[3]\nend\n\n",
				["activeTriggerMode"] = 2,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
			["selfPoint"] = "CENTER",
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
			["wordWrap"] = "WordWrap",
			["crop_x"] = 0.41,
			["parent"] = "Phoenix Raid Circles",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 190,
			["load"] = {
				["ingroup"] = {
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
				["encounterid"] = "2134",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
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
			["crop_y"] = 0.41,
			["uid"] = "mMiyCDU0Ulq",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["textureWrapMode"] = "CLAMP",
			["startAngle"] = 0,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["crop"] = 0.41,
			["outline"] = "OUTLINE",
			["blendMode"] = "BLEND",
			["anchorPoint"] = "CENTER",
			["xOffset"] = -0.0001220703125,
			["slantMode"] = "INSIDE",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["fixedWidth"] = 200,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["regionType"] = "progresstexture",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Contagion >= 6 stacks",
			["customTextUpdate"] = "update",
			["frameStrata"] = 1,
			["width"] = 200,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--iterate group members\nfunction aura_env.GroupMembers(reversed, forceParty)\n    local unit  = (not forceParty and IsInRaid()) and 'raid' or 'party'\n    local numGroupMembers = forceParty and GetNumSubgroupMembers()  or GetNumGroupMembers()\n    local i = reversed and numGroupMembers or (unit == 'party' and 0 or 1)\n    return function()\n        local ret \n        if i == 0 and unit == 'party' then \n            ret = 'player'\n        elseif i <= numGroupMembers and i > 0 then\n            ret = unit .. i\n        end\n        i = i + (reversed and -1 or 1)\n        return ret\n    end\nend\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if not UnitCanAttack(\"player\", unit) then\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["authorOptions"] = {
			},
			["backgroundOffset"] = 2,
		},
		["SanUI_Clearcasting 3"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							223819, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Divine Purpose", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["useglowColor"] = false,
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
			["cooldownTextEnabled"] = true,
			["xOffset"] = 0,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Clearcasting 3",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
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
		["T22 Eye Beam"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -99.3681335449219,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = false,
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
			["text1Containment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["internalVersion"] = 11,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 101.894721984863,
			["authorOptions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2136",
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
			},
			["displayIcon"] = 236407,
			["useglowColor"] = false,
			["xOffset"] = -274.104919433594,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["uid"] = "otPWD5cJzA1",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%s",
			["stickyDuration"] = false,
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = false,
			["cooldownTextEnabled"] = true,
			["id"] = "T22 Eye Beam",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 107.789573669434,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["glow"] = false,
		},
		["Mekkatorque Robot Helper"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Clickable button creator and sender", -- [1]
			},
			["xOffset"] = -126.941345214844,
			["yOffset"] = -94.1227111816406,
			["anchorPoint"] = "CENTER",
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 11,
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["version"] = 17,
			["load"] = {
				["use_class"] = false,
				["spec"] = {
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
			["semver"] = "1.0.16",
			["stagger"] = 0,
			["id"] = "Mekkatorque Robot Helper",
			["radius"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/suusX6ZrJ/17",
			["config"] = {
			},
			["uid"] = "oLA)laUhVSc",
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "TOP",
			["authorOptions"] = {
			},
		},
		["SanUI_Clearcasting 2"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							117679, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["names"] = {
							"Incarnation", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glow"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["stickyDuration"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
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
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["xOffset"] = 0,
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["text1Color"] = {
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
			["text2Enabled"] = false,
			["alpha"] = 1,
			["width"] = 40,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
		},
		["Zek'voz Curruptor's Pack"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/BygATcEtm/10",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "10",
						["use_alwaystrue"] = true,
						["duration"] = "6",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "timed",
						["use_absorbMode"] = true,
						["remOperator"] = "<=",
						["event"] = "Health",
						["names"] = {
							"Corruptor's Pact", -- [1]
						},
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["custom_type"] = "event",
						["spellIds"] = {
							265662, -- [1]
						},
						["unit"] = "player",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "status",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 8) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["event"] = "Health",
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 182.00004577637,
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
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["race"] = {
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
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["encounterid"] = "2136",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "4qmhH8CVU(B",
			["startAngle"] = 0,
			["anchorPoint"] = "CENTER",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["fixedWidth"] = 200,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["slantMode"] = "INSIDE",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["textureWrapMode"] = "CLAMP",
			["outline"] = "OUTLINE",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Zek'voz Curruptor's Pack",
			["xOffset"] = -1.0001220703125,
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
			["sameTexture"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["SanUI_FangsOffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 158368,
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
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
						["use_itemName"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["itemName"] = 144258,
						["spellName"] = 221992,
					},
				}, -- [1]
				{
					["trigger"] = {
						["itemName"] = 144258,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Item Equipped",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["type"] = "status",
						["use_unit"] = true,
						["use_itemName"] = true,
					},
					["untrigger"] = {
						["itemName"] = 144258,
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
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
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["ingroup"] = {
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
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["use_name"] = false,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spellknown"] = 235966,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextEnabled"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["glow"] = false,
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["alpha"] = 1,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_FangsOffCD",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["parent"] = "SanUI_Urgent",
			["internalVersion"] = 11,
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
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["remaining"] = "2",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["names"] = {
							"Power of the Archdruid", -- [1]
						},
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
						["unevent"] = "auto",
						["use_unit"] = true,
						["unit"] = "player",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["parent"] = "SanUI_Urgent",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Font"] = "Friz Quadrata TT",
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
			["useglowColor"] = false,
			["authorOptions"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["internalVersion"] = 11,
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
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["text2FontSize"] = 24,
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
			["text1"] = "%c",
			["xOffset"] = 0,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = false,
			["glow"] = false,
			["id"] = "SanUI_Efflo",
			["frameStrata"] = 1,
			["text2Enabled"] = false,
			["width"] = 40,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["cooldownTextEnabled"] = true,
		},
		["Taloc Hardened Arteries"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["spellIds"] = {
							275189, -- [1]
						},
						["names"] = {
							"Hardened Arteries", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["unevent"] = "timed",
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 8) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["names"] = {
						},
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["desaturateForeground"] = false,
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["selfPoint"] = "CENTER",
			["height"] = 182.00004577637,
			["customTextUpdate"] = "update",
			["crop_y"] = 0.41,
			["startAngle"] = 0,
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "aUCrlluWR7A",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["xOffset"] = -1.0001220703125,
			["slantMode"] = "INSIDE",
			["wordWrap"] = "WordWrap",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["anchorPoint"] = "CENTER",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Taloc Hardened Arteries",
			["textureWrapMode"] = "CLAMP",
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
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
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["encounterid"] = "2144",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["orientation"] = "ANTICLOCKWISE",
			["fixedWidth"] = 200,
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["SanUI_BloodTalons"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							155672, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Bloodtalons", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["xOffset"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
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
			["useglowColor"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "2002",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["icon"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_BloodTalons",
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
			["text2Enabled"] = false,
			["width"] = 40,
			["desaturate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["glow"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["internalVersion"] = 11,
		},
		["SanUI_FeralSnapshotLogic"] = {
			["user_y"] = 0,
			["fontSize"] = 12,
			["user_x"] = -0.0200000107288361,
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["custom"] = "function (event, _, param, _, source, ...)\n    Rip_sDamage = Rip_sDamage or {}\n    Rake_sDamage = Rake_sDamage or {}\n    Thrash_sDamage = Thrash_sDamage or {}\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and source == UnitGUID(\"player\") then\n        local _, _, _, destination, _, _, _, spell = ...\n        \n        -- snapshot on spellcast\n        if spell == 1079 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Rip_sDamage_cast = WA_stats_RipTick\n        elseif spell == 1822 and (param == \"SPELL_CAST_SUCCESS\" or param == \"SPELL_DAMAGE\" or param == \"SPELL_MISSED\") then\n            WA_calcStats_feral()\n            Rake_sDamage_cast = WA_stats_RakeTick\n        elseif spell == 106830 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Thrash_sDamage_cast = WA_stats_ThrashTick\n        end\n        \n        -- but only record the snapshot if it successfully applied\n        if spell == 1079 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rip_sDamage[destination] = Rip_sDamage_cast\n        elseif spell == 155722 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rake_sDamage[destination] = Rake_sDamage_cast\n        elseif spell == 106830 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Thrash_sDamage[destination] = Thrash_sDamage_cast\n        end\n        \n        -- clean up out of combat\n    elseif (not UnitAffectingCombat(\"player\")) and (not IsEncounterInProgress()) then\n        Rip_sDamage = {}\n        Rake_sDamage = {}\n        Thrash_sDamage = {}\n    end\nend",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED,PLAYER_REGEN_ENABLED,PLAYER_ENTERING_WORLD,PLAYER_ALIVE",
						["names"] = {
						},
						["check"] = "event",
						["custom_type"] = "event",
						["unevent"] = "auto",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
						["custom"] = "",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["crop_x"] = 0.459999978542328,
			["internalVersion"] = 11,
			["foregroundColor"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0.0549019607843137, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0.101960784313726, -- [1]
				0.101960784313726, -- [2]
				0.101960784313726, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_FeralBleedSnapshots",
			["anchorFrameType"] = "SCREEN",
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
			["frameStrata"] = 5,
			["authorOptions"] = {
			},
			["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["displayStacks"] = "%s",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["crop_y"] = 0,
			["desaturateForeground"] = false,
			["mirror"] = false,
			["auto"] = true,
			["regionType"] = "text",
			["rotation"] = 0,
			["blendMode"] = "BLEND",
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
			["sameTexture"] = false,
			["icon"] = true,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "SanUI_FeralSnapshotLogic",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 1.00002479553223,
			["displayIcon"] = "Interface\\Icons\\",
			["config"] = {
			},
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundOffset"] = 2,
		},
		["Fetid Malodorous Miasma"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["use_alwaystrue"] = true,
						["duration"] = "6",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Malodorous Miasma", -- [1]
						},
						["remOperator"] = ">",
						["event"] = "Health",
						["unevent"] = "timed",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["custom_type"] = "event",
						["spellIds"] = {
							262313, -- [1]
						},
						["use_absorbMode"] = true,
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["names"] = {
						},
						["custom_type"] = "status",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["unevent"] = "timed",
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["authorOptions"] = {
			},
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["selfPoint"] = "CENTER",
			["height"] = 182.00004577637,
			["xOffset"] = -1.0001220703125,
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["uid"] = "Z3GCsR7D9Pp",
			["startAngle"] = 0,
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["slantMode"] = "INSIDE",
			["customTextUpdate"] = "update",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Fetid Malodorous Miasma",
			["textureWrapMode"] = "CLAMP",
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
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
				["encounterid"] = "2128",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_difficulty"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["Fetid Malodorous Miasma 2"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c Penis",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = -11.99951171875,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5",
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"Malodorous Miasma", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["remOperator"] = "<",
						["event"] = "Health",
						["unevent"] = "timed",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["custom_type"] = "event",
						["spellIds"] = {
							262313, -- [1]
						},
						["duration"] = "6",
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["custom_hide"] = "timed",
						["type"] = "custom",
						["custom_type"] = "status",
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Health",
						["use_unit"] = true,
						["custom"] = "function()\n    for unit in WA_IterateGroupMembers() do\n        if\n        aura_env.RangeCheck(unit, 10) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n        then \n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1] or\n    t[1] and t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
			["wordWrap"] = "WordWrap",
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["fixedWidth"] = 200,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 10,
			["automaticWidth"] = "Auto",
			["height"] = 182.00004577637,
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
				["encounterid"] = "2128",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
				["role"] = {
					["multi"] = {
						["HEALER"] = true,
						["DAMAGER"] = true,
					},
				},
				["use_difficulty"] = true,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMP",
			["uid"] = "mKNU7lklX5J",
			["startAngle"] = 0,
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["alpha"] = 1,
			["blendMode"] = "BLEND",
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["xOffset"] = -1.0001220703125,
			["slantMode"] = "INSIDE",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\SharedMedia_Causese\\sound\\Spread.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Fetid Malodorous Miasma 2",
			["fontSize"] = 72,
			["frameStrata"] = 1,
			["width"] = 209.99998474121,
			["customTextUpdate"] = "update",
			["config"] = {
			},
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["parent"] = "Phoenix Raid Circles",
			["backgroundOffset"] = 2,
		},
		["SanUI_RipResto"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							1079, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["names"] = {
							"Rip", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2Point"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Containment"] = "INSIDE",
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
						nil, -- [1]
						nil, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["useglowColor"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["parent"] = "SanUI_TargetDebuffs",
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
			["text1Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
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
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_RipResto",
			["text1Enabled"] = true,
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["LB Not Active: CAST! - Flash "] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 22,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:EFF Not Active: CAST! - Icon",
				},
				["init"] = {
					["custom"] = "aura_env.expires = 0",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["rem"] = "0",
						["duration"] = "30",
						["subeventPrefix"] = "SPELL",
						["use_totemName"] = true,
						["use_spell"] = true,
						["unit"] = "group",
						["use_specific_unit"] = false,
						["ownOnly"] = true,
						["count"] = "0",
						["spellIds"] = {
						},
						["group_count"] = "0",
						["group_countOperator"] = "==",
						["spell"] = "Efflorescence",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["type"] = "aura",
						["countOperator"] = "==",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["custom_type"] = "event",
						["event"] = "Totem",
						["totemName"] = 145205,
						["custom_hide"] = "custom",
						["debuffType"] = "HELPFUL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["use_inverse"] = true,
						["remOperator"] = "<",
						["name_info"] = "aura",
						["use_unit"] = true,
						["use_castType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "Lifebloom-Watch",
			["authorOptions"] = {
			},
			["displayIcon"] = "134206",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOM",
			["version"] = 5,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 54,
			["useglowColor"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["fortyman"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
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
				["use_vehicle"] = false,
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
				["use_ingroup"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_vehicleUi"] = false,
			},
			["glow"] = false,
			["internalVersion"] = 11,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.88235294117647, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["width"] = 54,
			["frameStrata"] = 3,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text1Font"] = "Arial Narrow",
			["text1"] = "%n",
			["text2"] = "%p",
			["cooldownTextEnabled"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["text1Containment"] = "OUTSIDE",
			["id"] = "LB Not Active: CAST! - Flash ",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/SJzs3stm-/5",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["xOffset"] = 0,
		},
		["SanUI_Lazy Apex Predator"] = {
			["glow"] = true,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
							"Apex Predator", -- [1]
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["authorOptions"] = {
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
			["stickyDuration"] = false,
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
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["width"] = 64,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = false,
			["zoom"] = 0,
			["id"] = "SanUI_Lazy Apex Predator",
			["text1FontFlags"] = "OUTLINE",
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "SanUI_Buffs",
			["displayIcon"] = 132127,
			["text2Point"] = "CENTER",
			["xOffset"] = 0,
		},
		["SanUI_Urgent"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"SanUI_Efflo", -- [1]
				"SanUI_AtonementSelf", -- [2]
				"SanUI_Swiftmend2Charges", -- [3]
				"SanUI_CenarionWard", -- [4]
				"SanUI_LiquidGold", -- [5]
				"SanUI_DeathsDoor", -- [6]
				"SanUI_CenarionWard 2", -- [7]
				"SanUI_TFoffCD", -- [8]
				"SanUI_AFoffCD", -- [9]
				"SanUI_BerserkOffCD", -- [10]
				"SanUI_CelestialAlignmentOffCD", -- [11]
				"SanUI_FuryOfEluneOffCD", -- [12]
				"SanUI_FoNOffCD", -- [13]
				"SanUI_FangsOffCD", -- [14]
				"SanUI_CaraffeOffCD", -- [15]
			},
			["xOffset"] = -252.586791992188,
			["yOffset"] = 151.039916992188,
			["anchorPoint"] = "CENTER",
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
			["align"] = "CENTER",
			["rotation"] = 0,
			["height"] = 499.999984741211,
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
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Urgent",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "TOP",
			["config"] = {
			},
			["stagger"] = 0,
			["backgroundInset"] = 0,
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["width"] = 40.0000610351563,
		},
		["SanUI_TFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
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
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 5217,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
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
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["useglowColor"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
			["stickyDuration"] = false,
			["internalVersion"] = 11,
			["parent"] = "SanUI_Urgent",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "SCT TwCenMT",
			["glow"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_TFoffCD",
			["desaturate"] = false,
			["text2Enabled"] = false,
			["width"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
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
			["conditions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
		},
		["Add Blast Timer (Bigwigs only)"] = {
			["outline"] = "OUTLINE",
			["text2Point"] = "CENTER",
			["text1FontSize"] = 14,
			["xOffset"] = -9.4990844726562,
			["displayText"] = "%i Blast in %p",
			["text1Point"] = "BOTTOM",
			["yOffset"] = 95.000427246094,
			["anchorPoint"] = "CENTER",
			["icon"] = true,
			["glow"] = false,
			["parent"] = "Mythrax Mythic Stuff",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["names"] = {
						},
						["remaining"] = "4",
						["text_operator"] = "==",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["unit"] = "player",
						["text"] = "Add Blast",
						["event"] = "BigWigs Timer",
						["use_absorbMode"] = true,
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_remaining"] = true,
						["use_unit"] = true,
						["use_text"] = true,
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
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
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["internalVersion"] = 11,
			["uid"] = "4d)HpqS6AOn",
			["text1Containment"] = "OUTSIDE",
			["progressPrecision"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 7,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["fixedWidth"] = 200,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 80,
			["text2Enabled"] = false,
			["fontSize"] = 30,
			["text2Containment"] = "INSIDE",
			["color"] = {
				1, -- [1]
				0.71372549019608, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "text",
			["auto"] = false,
			["text2"] = "%p",
			["text2FontSize"] = 24,
			["text1Color"] = {
				1, -- [1]
				0, -- [2]
				0.007843137254902, -- [3]
				1, -- [4]
			},
			["text1"] = "BLAST SOON",
			["text1FontFlags"] = "OUTLINE",
			["wordWrap"] = "WordWrap",
			["zoom"] = 0,
			["justify"] = "LEFT",
			["text1Enabled"] = true,
			["id"] = "Add Blast Timer (Bigwigs only)",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "2103082",
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["SanUI_CelestialAlignmentOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 194223,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
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
			["useglowColor"] = false,
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["stickyDuration"] = false,
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
			["text2Point"] = "CENTER",
			["cooldownTextEnabled"] = true,
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text1Enabled"] = true,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["internalVersion"] = 11,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_CelestialAlignmentOffCD",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["parent"] = "SanUI_Urgent",
			["selfPoint"] = "CENTER",
		},
		["SanUI_PurgeTheWicked"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							204197, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Purge the Wicked", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["text1Font"] = "Friz Quadrata TT",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["cooldownTextEnabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["internalVersion"] = 11,
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
			["icon"] = true,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["useglowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["parent"] = "SanUI_TargetDebuffs",
			["width"] = 39.9999885559082,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["glow"] = false,
			["id"] = "SanUI_PurgeTheWicked",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_Judgement"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							20271, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["names"] = {
							"Judgment", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["desaturate"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
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
			["xOffset"] = 0,
			["parent"] = "SanUI_TargetDebuffs",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["selfPoint"] = "CENTER",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_Judgement",
			["useglowColor"] = false,
			["frameStrata"] = 1,
			["width"] = 39.9999885559082,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
		},
		["Ghuun - Spawn Fixate"] = {
			["glow"] = false,
			["text1FontSize"] = 40,
			["authorOptions"] = {
			},
			["yOffset"] = 124.99957275391,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/Sk_235FK7/13",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["text2Point"] = "BOTTOM",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["version"] = 13,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["stickyDuration"] = false,
			["load"] = {
				["use_never"] = false,
				["size"] = {
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
				["encounterid"] = "2122",
				["use_encounterid"] = true,
			},
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							268074, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Dark Purpose", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text2Containment"] = "OUTSIDE",
			["glowType"] = "buttonOverlay",
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
			["uid"] = "mM5WYgViiVI",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["text2Enabled"] = true,
			["text1"] = "%s",
			["cooldownTextEnabled"] = true,
			["alpha"] = 1,
			["text2"] = "FIXATE",
			["auto"] = true,
			["zoom"] = 0,
			["id"] = "Ghuun - Spawn Fixate",
			["text1Font"] = "Expressway",
			["frameStrata"] = 1,
			["width"] = 64,
			["text1Enabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["internalVersion"] = 11,
			["conditions"] = {
			},
			["desaturate"] = false,
			["xOffset"] = 324.99963378906,
		},
		["SanUI_Abundance"] = {
			["text2Point"] = "TOPRIGHT",
			["text1FontSize"] = 22,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["useCount"] = true,
						["spellIds"] = {
							207640, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Abundance", -- [1]
						},
						["countOperator"] = "<",
						["count"] = "5",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
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
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 1,
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
			["parent"] = "SanUI_Buffs",
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["useglowColor"] = false,
			["glow"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 19,
			["alpha"] = 1,
			["text1"] = "%s",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2"] = "%s",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_Abundance",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_custom"] = false,
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_AtonementSelf"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["use_inverse"] = true,
						["subeventPrefix"] = "SPELL",
						["remaining"] = "2",
						["use_totemType"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["buffShowOn"] = "showOnMissing",
						["subeventSuffix"] = "_CAST_START",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["event"] = "Totem",
						["totemType"] = 1,
						["unit"] = "player",
						["use_unit"] = true,
						["spellIds"] = {
							194384, -- [1]
						},
						["unevent"] = "auto",
						["names"] = {
							"Atonement", -- [1]
						},
						["totemName"] = 145205,
						["remaining_operator"] = "<=",
						["use_totemName"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["cooldownTextEnabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["conditions"] = {
				{
					["check"] = {
					},
					["changes"] = {
					},
				}, -- [1]
			},
			["text2Font"] = "Friz Quadrata TT",
			["internalVersion"] = 11,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
			["parent"] = "SanUI_Urgent",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%c",
			["text1Containment"] = "INSIDE",
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_AtonementSelf",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["config"] = {
			},
			["inverse"] = true,
			["icon"] = true,
			["displayIcon"] = 134222,
			["cooldown"] = false,
			["glow"] = false,
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
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["yOffset"] = 0,
			["borderOffset"] = 5,
			["xOffset"] = 0,
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
			["id"] = "SanUI_FeralBleedSnapshots",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["expanded"] = false,
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
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
			["regionType"] = "group",
		},
		["Ghuun: Wave Range Check"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -0.0001220703125,
			["displayText"] = "%c Penis",
			["yOffset"] = -19.999755859375,
			["anchorPoint"] = "CENTER",
			["sameTexture"] = true,
			["url"] = "https://wago.io/BygATcEtm/10",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\swordecho.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
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
				["encounterid"] = "2122",
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
						["raid"] = true,
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
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura94",
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "ACQJNHwk)yQ",
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["parent"] = "Phoenix Raid Circles",
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["remaining_operator"] = "<",
						["remaining"] = "5",
						["subeventPrefix"] = "SPELL",
						["spellId"] = "270373",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_remaining"] = true,
						["text_operator"] = "find('%s')",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "BigWigs Timer",
						["text"] = "Wave of Corruption",
						["use_text"] = false,
						["unevent"] = "auto",
						["message"] = "is cast upon the battle",
						["use_spellId"] = true,
						["name"] = "Wave of Corruption",
						["duration"] = "3",
						["use_message"] = true,
						["genericShowOn"] = "showOnActive",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_remaining"] = true,
						["spellId"] = "270373",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "DBM Timer",
						["use_unit"] = true,
						["use_spellId"] = true,
						["remaining"] = "5",
						["name"] = "Wave of Corruption",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["remaining_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1]\n    or WeakAuras.triggerState[aura_env.id].triggers[2]\n    then\n        local time = GetTime()\n        local refreshRate = 0.2\n        if not aura_env.last or aura_env.last + refreshRate < time then\n            aura_env.last = time  \n            aura_env.count = 0\n            for unit in WA_IterateGroupMembers() do\n                if UnitIsVisible(unit)\n                and not UnitIsUnit(\"player\", unit)\n                and not UnitIsDeadOrGhost(unit)\n                and WeakAuras.CheckRange(unit, 5, \"<=\")\n                then\n                    aura_env.count = aura_env.count + 1\n                end\n            end\n        end\n    end\n    return aura_env.count and aura_env.count > 0 or false\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Health",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] or t[2]) or\n    (t[1] or t[2]) and t[3]\nend\n\n\n\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
				},
				["main"] = {
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["use_rotate"] = true,
					["scalex"] = 0,
					["colorA"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["rotateType"] = "straight",
					["rotate"] = 360,
					["use_translate"] = false,
					["use_alpha"] = false,
					["duration_type"] = "seconds",
					["type"] = "none",
					["translateType"] = "circle",
					["scaley"] = 1.2,
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local angle = progress * 2 * math.pi\n      return startX + (deltaX * math.cos(angle)), startY + (deltaY * math.sin(angle))\n    end\n  ",
					["use_color"] = false,
					["alpha"] = 0.25,
					["colorType"] = "custom",
					["y"] = 65,
					["x"] = 80,
					["scaleType"] = "pulse",
					["colorR"] = 1,
					["colorFunc"] = "\n\n",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["duration"] = "2",
					["use_scale"] = false,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["version"] = 10,
			["height"] = 190,
			["rotate"] = false,
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["mirror"] = false,
			["startAngle"] = 0,
			["config"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["adjustedMax"] = 5,
			["fontSize"] = 72,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop_y"] = 0.41,
			["justify"] = "LEFT",
			["crop"] = 0.41,
			["id"] = "Ghuun: Wave Range Check",
			["width"] = 200,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["SanUI_CenarionWard 2"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
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
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 197721,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["parent"] = "SanUI_Urgent",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
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
			["internalVersion"] = 11,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text2Point"] = "CENTER",
			["text1Font"] = "SCT TwCenMT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["text1Enabled"] = true,
			["id"] = "SanUI_CenarionWard 2",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
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
			["desaturate"] = false,
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
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
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
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 5217,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["timer"] = true,
			["height"] = 23.9999370574951,
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
			["useAdjustededMax"] = false,
			["spark"] = false,
			["sparkRotation"] = 0,
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderInFront"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["sparkRotationMode"] = "AUTO",
			["id"] = "SanUI_TigersFury",
			["sparkHeight"] = 30,
			["sparkOffsetX"] = 0,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["textFlags"] = "None",
			["sparkHidden"] = "NEVER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 120,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["stacksFont"] = "Friz Quadrata TT",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Soak Overlap (Receiver)"] = {
			["outline"] = "OUTLINE",
			["parent"] = "Swap Soaker (Dark Revelation + Soak overlap)",
			["displayText"] = "%i help soaker %i",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1.51",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["customIcon"] = "function()\nreturn 1500906\nend",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom_type"] = "event",
						["unevent"] = "timed",
						["debuffType"] = "HELPFUL",
						["message_operator"] = "find('%s')",
						["event"] = "Chat Message",
						["custom"] = "function(a, msg, _, _,_,_,_,_,_,_,_,_, guid)\n    if msg then\n        print(guid)\n        if msg:find(\"{rt1} SWAP {rt1}\") and guid ~= WeakAuras.myGUID  then\n            return true\n        end\n    end\nend",
						["message"] = "{rt1} SWAP {rt1}",
						["use_sourceName"] = false,
						["events"] = "CHAT_MSG_YELL",
						["spellIds"] = {
						},
						["use_message"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_YELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							274315, -- [1]
							273437, -- [2]
							269965, -- [3]
						},
						["buffShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Deathwish", -- [1]
							"Dark Revelation", -- [2]
							"Pit of Despair", -- [3]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 9,
			["height"] = 30.000091552734,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2145",
				["use_encounterid"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
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
				["spec"] = {
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
			["fontSize"] = 30,
			["regionType"] = "text",
			["config"] = {
			},
			["selfPoint"] = "BOTTOM",
			["justify"] = "LEFT",
			["url"] = "https://wago.io/ryK0n-c47/9",
			["id"] = "Soak Overlap (Receiver)",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 261.00640869141,
			["conditions"] = {
			},
			["uid"] = "z16831jfFR1",
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["use_color"] = true,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["scaley"] = 1,
					["alpha"] = 0,
					["colorB"] = 0.31764705882353,
					["y"] = 0,
					["colorType"] = "pulseHSV",
					["colorG"] = 0,
					["x"] = 0,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["scalex"] = 1,
					["type"] = "custom",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["fixedWidth"] = 200,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Orb Spawn Indicator (put this on your character)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -30.999938964844,
			["adjustedMax"] = 5,
			["customText"] = "--[[\n\n    examples:\n\n    valid range check numbers: 5, 6, 7, 8, 10, 15, 20, 25, 30, 35, 38, 40, 45, 50, 60, 70, 80, 100\n\n    ----- count amount of enemy targets in range 10 -----\n    function()\n        return aura_env.inRange(10, true)\n    end\n    ------------------------------------------------------\n    \n    ---------------- show range to unit ------------------\n    function()\n        return aura_env.RangeCheck(\"target\")\n    end\n    ------------------------------------------------------\n\n\n    ------------ show if unit is in range 10 -------------\n    function()\n        return aura_env.RangeCheck(\"target\", 10)\n    end\n    ------------------------------------------------------\n\n\n    ---- show units in range 10 without aura on them  ----\n    function()\n        return aura_env.InRangeNames(10, 3714, true)\n    end\n    ------------------------------------------------------\n\n]]--\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
			["yOffset"] = 0.00079345703125,
			["foregroundColor"] = {
				0, -- [1]
				1, -- [2]
				0.047058823529412, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "272404",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["remaining"] = "5",
						["remaining_operator"] = "<=",
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["use_remaining"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["name"] = "Oblivion Sphere",
						["spellIds"] = {
							130, -- [1]
						},
						["event"] = "BigWigs Timer",
						["type"] = "status",
						["names"] = {
							"Slow Fall", -- [1]
						},
						["use_spellId"] = true,
						["events"] = "",
						["custom_type"] = "event",
						["check"] = "update",
						["use_alwaystrue"] = true,
						["custom_hide"] = "timed",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["type"] = "status",
						["spellId"] = "272407",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "DBM Timer",
						["unit"] = "player",
						["remaining"] = "5",
						["use_spellId"] = true,
						["name"] = "Oblivion Sphere",
						["use_remaining"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["use_extend"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "status",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["names"] = {
						},
						["event"] = "Health",
						["custom"] = "function()\n    if (WeakAuras.triggerState[aura_env.id].triggers[1] or WeakAuras.triggerState[aura_env.id].triggers[2]) then\n        for unit in WA_IterateGroupMembers() do\n            if\n            aura_env.RangeCheck(unit, 5) and not UnitIsUnit(unit, \"player\") and not UnitIsDeadOrGhost(unit) and not UnitIsDeadOrGhost(\"player\")\n            then \n                return true\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return (t[1] or t[2])\n    or (t[1] or t[2]) and t[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 11,
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
			["wordWrap"] = "WordWrap",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0, -- [2]
								0.070588235294118, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [1]
					},
				}, -- [1]
			},
			["crop_x"] = 0.41,
			["parent"] = "Mythrax Mythic Stuff",
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "000 PFSquareSansPro-Medium",
			["version"] = 7,
			["selfPoint"] = "CENTER",
			["height"] = 182.00004577637,
			["crop_y"] = 0.41,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2135",
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
						["HEALER"] = true,
						["DAMAGER"] = true,
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
			["uid"] = "GQJOD14R)iQ",
			["useAdjustededMax"] = true,
			["fontSize"] = 72,
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["customTextUpdate"] = "update",
			["blendMode"] = "BLEND",
			["outline"] = "OUTLINE",
			["displayText"] = "%c Penis",
			["slantMode"] = "INSIDE",
			["desaturateForeground"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.EnemyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn \n        [6] = 63427, -- Worgsaw \n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores \n        [10] = 32321, -- Sparrowhawk Net \n        [15] = 33069, -- Sturdy Rope\n        [20] = 10645, -- Gnomish Death Ray\n        [25] = 24268, -- Netherweave Net\n        [30] = 835, -- Large Rope Net\n        [35] = 24269, -- Heavy Netherweave Net\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 28767, -- The Decapitator\n        [45] = 23836, -- Goblin Rocket Launcher\n        [50] = 116139, -- Haunting Memento \n        [60] = 32825, -- Soul Cannon \n        [70] = 41265, -- Eyesore Blaster \n        [80] = 35278, -- Reinforced Net \n        [90] = 133925, -- Fel Lash\n        [100] = 33119 -- Malister's Frost Wand\n    },    \n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn \n    {6, 63427}, -- Worgsaw \n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores \n    {10, 32321}, -- Sparrowhawk Net \n    {15, 33069}, -- Sturdy Rope\n    {20, 10645}, -- Gnomish Death Ray\n    {25, 24268}, -- Netherweave Net\n    {30, 835}, -- Large Rope Net\n    {35, 24269}, -- Heavy Netherweave Net\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 28767}, -- The Decapitator\n    {45, 23836}, -- Goblin Rocket Launcher\n    {50, 116139}, -- Haunting Memento \n    {60, 32825}, -- Soul Cannon \n    {70, 41265}, -- Eyesore Blaster \n    {80, 35278}, -- Reinforced Net \n    {90, 133925}, -- Fel Lash\n    {100, 33119}, -- Malister's Frost Wand\n}\naura_env.FriendlyTargets = {\n    keys = {\n        [5] = 37727, -- Ruby Acorn\n        [6] = 63427, -- Worgsaw\n        [7] = 61323, -- Ruby Seeds\n        [8] = 34368, -- Attuned Crystal Cores\n        [10] = 32321, -- Sparrowhawk Net\n        [15] = 1251, -- Linen Bandage\n        [20] = 21519, -- Mistletoe\n        [25] = 31463, -- Zezzak's Shard\n        [30] = 1180, -- Scroll of Stamina\n        [35] = 18904, -- Zorbin's Ultra-Shrinker\n        [38] = 140786, -- Ley Spider Eggs\n        [40] = 34471, -- Vial of the Sunwell\n        [45] = 32698, --Wrangling Rope\n        [50] = 116139, -- Haunting Memento\n        [60] = 32825, -- Soul Cannon\n        [70] = 41265, -- Eyesore Blaster\n        [80] = 35278, -- Reinforced Net\n        [90] = 133925, -- Fel Lash\n        [100] = 41058, -- Hyldnir Harpoon\n        [150] = 6954, -- Flaming Spears\n        [200] = 75208 -- Rancher's Lariat\n    },\n    {0, 1}, -- 0\n    {5, 37727}, -- Ruby Acorn\n    {6, 63427}, -- Worgsaw\n    {7, 61323}, -- Ruby Seeds\n    {8, 34368}, -- Attuned Crystal Cores\n    {10, 32321}, -- Sparrowhawk Net\n    {15, 1251}, -- Linen Bandage\n    {20, 21519}, -- Mistletoe\n    {25, 31463}, -- Zezzak's Shard\n    {30, 1180}, -- Scroll of Stamina\n    {35, 18904}, -- Zorbin's Ultra-Shrinker\n    {38, 140786}, -- Ley Spider Eggs\n    {40, 34471}, -- Vial of the Sunwell\n    {45, 32698}, --Wrangling Rope\n    {50, 116139}, -- Haunting Memento\n    {60, 32825}, -- Soul Cannon\n    {70, 41265}, -- Eyesore Blaster\n    {80, 35278}, -- Reinforced Net\n    {90, 133925}, -- Fel Lash\n    {100, 41058}, -- Hyldnir Harpoon\n    {150, 6954}, -- Flaming Spears\n    {200, 75208} -- Rancher's Lariat\n}\n\n--main range check function\naura_env.RangeCheck = function(unit, range)\n    if not UnitExists(unit) then return end\n    local t = {}\n    if UnitCanAttack(\"player\", unit) then\n        t = aura_env.EnemyTargets\n    else\n        t = aura_env.FriendlyTargets\n    end\n    \n    if range then\n        if not t.keys[range] then return end\n        if IsItemInRange(t.keys[range], unit) then\n            return true\n        else\n            return false\n        end\n    else\n        for i=1, #t do\n            if IsItemInRange(t[i][2], unit) then\n                return t[i-1][1] .. \"-\" .. t[i][1]\n            end\n        end\n    end\nend\n\n--count amount of units in X range (enemy targets by nameplates only)\naura_env.inRange = function(inRange, isEnemy, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local count = 0\n    local aura = true\n    if isEnemy then\n        for i=1, 40 do\n            if aura_env.RangeCheck(\"nameplate\"..i, inRange) then\n                count = count + 1\n            end\n        end\n    else\n        for unit in aura_env.GroupMembers() do\n            if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n            if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n                count = count + 1\n            end\n        end\n    end\n    return count\nend\n\n--show names of group units in X range\naura_env.inRangeNames = function(inRange, spellid, missing)\n    if not inRange then return \"no range selected\" end\n    local names = \"\"\n    local aura = true\n    for unit in aura_env.GroupMembers() do\n        if spellid then if missing then aura = not UnitAura(unit, GetSpellInfo(spellid)) else aura = UnitAura(unit, GetSpellInfo(spellid)) end end\n        if aura_env.RangeCheck(unit, inRange) and not UnitIsDeadOrGhost(unit) and WeakAuras.myGUID~=UnitGUID(unit) and aura then\n            local name = UnitName(unit)\n            local _, class = UnitClass(unit)\n            local colour = select(4, GetClassColor(class))\n            name = WrapTextInColorCode(name, colour)\n            names = names .. name .. \"|n\"\n        end\n    end\n    return names\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["anchorPoint"] = "CENTER",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "Orb Spawn Indicator (put this on your character)",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 209.99998474121,
			["startAngle"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["automaticWidth"] = "Auto",
			["orientation"] = "ANTICLOCKWISE",
			["fixedWidth"] = 200,
			["authorOptions"] = {
			},
			["backgroundOffset"] = 2,
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
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "106830",
						["ownOnly"] = true,
						["names"] = {
							"Thrash", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["name_operator"] = "==",
						["name"] = "Thrash",
						["custom_type"] = "status",
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
					["untrigger"] = {
						["custom"] = "function()\n    if not WA_thrashc then return true end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
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
			["borderSize"] = 16,
			["wordWrap"] = "WordWrap",
			["icon_side"] = "RIGHT",
			["stacksFlags"] = "None",
			["icon"] = false,
			["borderOffset"] = 5,
			["height"] = 14.3157987594605,
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["displayTextRight"] = " ",
			["id"] = "SanUI_ThrashCatRatio",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["width"] = 12.5790948867798,
			["timerSize"] = 12,
			["parent"] = "SanUI_FeralBleedSnapshots",
			["inverse"] = false,
			["displayTextLeft"] = " ",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
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
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["textSize"] = 8,
			["triggers"] = {
				{
					["trigger"] = {
						["autoclone"] = false,
						["spellId"] = "108381",
						["genericShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
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
			["fixedWidth"] = 200,
			["borderSize"] = 11,
			["wordWrap"] = "WordWrap",
			["icon_side"] = "LEFT",
			["displayTextLeft"] = "Dream of Cenarius [%s]",
			["parent"] = "SanUI_FeralBleedSnapshots",
			["height"] = 8.42102813720703,
			["stacksFlags"] = "None",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["timerSize"] = 8,
			["id"] = "SanUI_FeralStatLogic",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["width"] = 10.8948659896851,
			["stacksFont"] = "Emblem",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = false,
			["backgroundColor"] = {
				0.203921568627451, -- [1]
				0.203921568627451, -- [2]
				0.203921568627451, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["SlamDunk.Warnings"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c%p",
			["customText"] = "function()\n    return aura_env.text\nend",
			["yOffset"] = 340.315689086914,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\Prat-3.0\\sounds\\Bell.ogg",
					["do_sound"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.text = \"Ghuun orb warnings\"\naura_env.duration = 0\n\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BananaPeelSlip.ogg",
					["do_sound"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "15",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "event",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["event"] = "Health",
						["customStacks"] = "\n\n",
						["customDuration"] = "function()\n    return aura_env.duration, GetTime()+aura_env.duration\nend",
						["custom"] = "function(event, text, duration)\n    if not text then\n        aura_env.hide = true\n        return false\n    end\n    \n    aura_env.hide = false\n    aura_env.text = text\n    aura_env.duration = duration\n    \n    return true\nend",
						["events"] = "GHUUN_WARNING",
						["spellIds"] = {
						},
						["dynamicDuration"] = true,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return aura_env.hide    \nend\n\n\n\n\n\n",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["selfPoint"] = "TOP",
			["desc"] = "Warnings and timers display module.",
			["progressPrecision"] = 4,
			["font"] = "Friz Quadrata TT",
			["version"] = 6,
			["load"] = {
				["use_never"] = false,
				["zonegroupId"] = "384",
				["encounterid"] = "2122",
				["use_zoneId"] = true,
				["use_encounterid"] = false,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1155",
				["use_zonegroupId"] = false,
				["use_difficulty"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 30,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidebottom",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["preset"] = "slidetop",
				},
			},
			["justify"] = "CENTER",
			["parent"] = "Uldir.Ghuun.SlamDunk",
			["id"] = "SlamDunk.Warnings",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["uid"] = "FnO1vp1TFdN",
			["config"] = {
			},
			["url"] = "https://wago.io/HyZu-Vj07/6",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["xOffset"] = -114.526153564453,
		},
		["Uldir.Ghuun.SlamDunk"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"SlamDunk.Core", -- [1]
				"SlamDunk.Groups", -- [2]
				"SlamDunk.Warnings", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["desc"] = "Displays groups for handling power matrices on mythic G'huun, and appropriate warnings/timers.\n\nVersion: 1.1.13\nGame version: 8.0.1\nAuthor: Irafastrasz-AzjolNerub",
			["border"] = false,
			["yOffset"] = -271.157806396484,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["xOffset"] = -322.526397705078,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["url"] = "https://wago.io/HyZu-Vj07",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["regionType"] = "group",
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
			["id"] = "Uldir.Ghuun.SlamDunk",
			["expanded"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
			["config"] = {
			},
			["version"] = 1,
			["uid"] = "wYRNGw9Uoeq",
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
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
			["borderInset"] = 11,
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
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
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
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["charges"] = "2",
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 18562,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
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
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["glow"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["parent"] = "SanUI_Urgent",
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
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["internalVersion"] = 11,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["authorOptions"] = {
			},
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_Swiftmend2Charges",
			["cooldownTextEnabled"] = true,
			["text2Enabled"] = false,
			["width"] = 40,
			["text1Font"] = "SCT TwCenMT",
			["config"] = {
			},
			["inverse"] = false,
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
			["conditions"] = {
			},
			["useglowColor"] = false,
			["selfPoint"] = "CENTER",
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							16870, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Clearcasting", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["xOffset"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
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
			["glow"] = false,
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
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 11,
			["parent"] = "SanUI_Buffs",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_Clearcasting",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["width"] = 40,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["useglowColor"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Font"] = "Friz Quadrata TT",
		},
		["SanUI_CombatTime"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 72,
			["xOffset"] = -18.5867919921875,
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.StartTime then\n        local combatTime = GetTime() - aura_env.StartTime\n        return string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n    else\n        return \"13:37\"\n    end\nend\n\n\n\n",
			["yOffset"] = -444.694442749023,
			["anchorPoint"] = "CENTER",
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["selfPoint"] = "BOTTOM",
			["internalVersion"] = 11,
			["justify"] = "LEFT",
			["wordWrap"] = "WordWrap",
			["id"] = "SanUI_CombatTime",
			["width"] = 26.8947486877441,
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
			["font"] = "Friz Quadrata TT",
			["uid"] = "xfRYP1PJ8sC",
			["config"] = {
			},
			["height"] = 71.5789566040039,
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
			["authorOptions"] = {
			},
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
			["barInFront"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["ownOnly"] = true,
						["names"] = {
							"Rip", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "custom",
						["type"] = "aura",
						["unit"] = "target",
						["unevent"] = "auto",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["customStacks"] = "\n\n",
						["customDuration"] = "",
						["customName"] = "",
						["custom"] = "function()\n    return true\nend",
						["debuffType"] = "HARMFUL",
						["check"] = "update",
						["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return false\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
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
			["borderSize"] = 16,
			["wordWrap"] = "WordWrap",
			["icon_side"] = "RIGHT",
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
			["displayTextRight"] = " ",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["timerSize"] = 12,
			["id"] = "SanUI_RipRatio",
			["height"] = 14.3158273696899,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["width"] = 12.5790948867798,
			["textSize"] = 12,
			["inverse"] = false,
			["stacksFlags"] = "None",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
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
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							164545, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Solar Empowerment", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["xOffset"] = 0,
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
			["icon"] = true,
			["useglowColor"] = false,
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
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["parent"] = "SanUI_Buffs",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "    %s",
			["text2Enabled"] = false,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "SanUI_SolarEmpowerment",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
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
			["internalVersion"] = 11,
		},
		["SanUI_Buffs"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"SanUI_Clearcasting", -- [1]
				"SanUI_Clearcasting 3", -- [2]
				"SanUI_ChosenOfElune", -- [3]
				"SanUI_Starlord", -- [4]
				"SanUI_LunarEmpowerment", -- [5]
				"SanUI_SolarEmpowerment", -- [6]
				"SanUI_OverloadedWithLight", -- [7]
				"SanUI_ClearcastingFeral", -- [8]
				"SanUI_Barkskin", -- [9]
				"SanUI_Pulverize", -- [10]
				"SanUI_RageOfTheSleeper", -- [11]
				"SanUI_SurvivalInstincts", -- [12]
				"SanUI_Clearcasting 2", -- [13]
				"SanUI_Innervate", -- [14]
				"SanUI_Starfall", -- [15]
				"SanUI_Abundance", -- [16]
				"SanUI_Abundance2", -- [17]
				"SanUI_SotF", -- [18]
				"SanUI_BloodTalons", -- [19]
				"SanUI_PredatorySwiftness", -- [20]
				"SanUI_GatheringClouds", -- [21]
				"SanUI_Lazy Apex Predator", -- [22]
			},
			["xOffset"] = -215.893615722656,
			["yOffset"] = -128.853515625,
			["anchorPoint"] = "CENTER",
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["radius"] = 200,
			["selfPoint"] = "RIGHT",
			["align"] = "CENTER",
			["rotation"] = 0,
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
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_Buffs",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 956.999969482422,
			["backgroundInset"] = 0,
			["config"] = {
			},
			["stagger"] = 0,
			["anchorFrameType"] = "SCREEN",
			["conditions"] = {
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
			["internalVersion"] = 11,
		},
		["Bar/P1"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.10196078431373, -- [1]
				0.10196078431373, -- [2]
				0.10196078431373, -- [3]
				0.7984032034874, -- [4]
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
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
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
				["role"] = {
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
			["textFont"] = "Expressway",
			["zoom"] = 0,
			["spark"] = true,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Sea Swell (Mythic) Bar",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "  Sea Swell",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "290694",
						["duration"] = "2",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["sourceName"] = "",
						["use_spellName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["use_sourceName"] = false,
						["unit"] = "player",
						["sourceUnit"] = "player",
						["spellName"] = "Eye of Gul'dan",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 13,
			["textSize"] = 14,
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
			["backdropInFront"] = false,
			["text"] = true,
			["auto"] = true,
			["stickyDuration"] = false,
			["config"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["version"] = 1,
			["uid"] = "QLygZVNCUUP",
			["timer"] = true,
			["timerFlags"] = "OUTLINE",
			["icon"] = false,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["customTextUpdate"] = "update",
			["stacksFont"] = "Expressway",
			["width"] = 150,
			["height"] = 24,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 2,
			["timerSize"] = 20,
			["icon_side"] = "RIGHT",
			["semver"] = "1.0.0",
			["authorOptions"] = {
			},
			["sparkHeight"] = 30,
			["borderBackdrop"] = "None",
			["sparkWidth"] = 10,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["id"] = "Bar/P1",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/V3olCoZhS/1",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["borderOffset"] = 2,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["xOffset"] = 144,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["regionType"] = "group",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["scale"] = 1,
			["internalVersion"] = 11,
			["yOffset"] = -213,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_ChickenDots",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["anchorFrameFrame"] = "AceGUI30Button1",
			["config"] = {
			},
			["borderInset"] = 11,
			["borderOffset"] = 5,
			["conditions"] = {
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
			["authorOptions"] = {
			},
		},
		["SanUI_TargetDebuffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"SanUI_Thrash", -- [1]
				"SanUI_Moonfire", -- [2]
				"SanUI_Sunfire", -- [3]
				"SanUI_RakeResto", -- [4]
				"SanUI_RipResto", -- [5]
				"SanUI_PurgeTheWicked", -- [6]
				"SanUI_Judgement", -- [7]
			},
			["xOffset"] = 199.679946018324,
			["yOffset"] = -113.493018440225,
			["anchorPoint"] = "CENTER",
			["space"] = 8,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["expanded"] = false,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "SanUI_TargetDebuffs",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["width"] = 232,
			["radius"] = 200,
			["config"] = {
			},
			["rotation"] = 0,
			["selfPoint"] = "LEFT",
			["conditions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 11,
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
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = -0.5,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["expanded"] = false,
			["internalVersion"] = 11,
			["xOffset"] = 0,
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
			["id"] = "SanUI_BearMitigation",
			["regionType"] = "group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
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
			["authorOptions"] = {
			},
		},
		["SanUI_AFoffCD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_genericShowOn"] = true,
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
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["custom_hide"] = "timed",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 217363,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["icon"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
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
			["stickyDuration"] = false,
			["glow"] = false,
			["useglowColor"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "SCT TwCenMT",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["parent"] = "SanUI_Urgent",
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0.3,
			["id"] = "SanUI_AFoffCD",
			["text1Containment"] = "INSIDE",
			["text2Enabled"] = false,
			["width"] = 40,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
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
			["conditions"] = {
			},
			["internalVersion"] = 11,
			["authorOptions"] = {
			},
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
			["xOffset"] = 83,
			["border"] = false,
			["yOffset"] = -205,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["regionType"] = "group",
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
			["id"] = "SanUI_FeralRota",
			["internalVersion"] = 11,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "BOTTOMLEFT",
			["conditions"] = {
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
			["scale"] = 1,
		},
		["SanUI_RakeResto"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							1822, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Rake", -- [1]
						},
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["text2Font"] = "Friz Quadrata TT",
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Enabled"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Point"] = "CENTER",
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
						nil, -- [1]
						nil, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
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
				["ingroup"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["cooldownTextEnabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["width"] = 39.9999885559082,
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["text1"] = "%c",
			["text1Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_RakeResto",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "SanUI_TargetDebuffs",
			["conditions"] = {
			},
			["cooldown"] = true,
			["desaturate"] = false,
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
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["textSize"] = 16,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timer"] = true,
			["timerFlags"] = "None",
			["auto"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0.3,
			["useAdjustededMax"] = false,
			["icon"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stacksFont"] = "Friz Quadrata TT",
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["borderInFront"] = false,
			["icon_side"] = "RIGHT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["sparkWidth"] = 10,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 16,
			["borderBackdrop"] = "Blizzard Tooltip",
			["id"] = "SanUI_SavageRoar",
			["customTextUpdate"] = "update",
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
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
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
			["parent"] = "SanUI_FeralRota",
			["customText"] = "return \"\"",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
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
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = false,
			["stickyDuration"] = false,
			["borderOffset"] = 5,
			["textSize"] = 16,
			["timer"] = true,
			["timerFlags"] = "None",
			["spark"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["zoom"] = 0.3,
			["useAdjustededMax"] = false,
			["icon"] = true,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderSize"] = 16,
			["border"] = false,
			["borderEdge"] = "None",
			["width"] = 120,
			["borderInFront"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon_side"] = "RIGHT",
			["sparkWidth"] = 10,
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["sparkOffsetX"] = 0,
			["timerSize"] = 16,
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
			["id"] = "SanUI_Inc",
			["customTextUpdate"] = "update",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["height"] = 23.9999370574951,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["Bursting Boil Soak Announcer"] = {
			["outline"] = "OUTLINE",
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["displayText"] = "%c",
			["customText"] = "function()\n    if WeakAuras.triggerState[aura_env.id].triggers[1] and WeakAuras.triggerState[aura_env.id].triggers[2] then\n        if (not aura_env.lastSay or aura_env.lastSay <= GetTime() - 1.5) then\n            aura_env.lastSay = GetTime()\n            SendChatMessage(\"CAN'T SOAK\", \"SAY\")\n        end\n    end\n    if WeakAuras.triggerState[aura_env.id].triggers[1] and WeakAuras.triggerState[aura_env.id].triggers[3] then \n        if (not aura_env.lastSay or aura_env.lastSay <= GetTime() - 1.5) then\n            aura_env.lastSay = GetTime()\n            SendChatMessage(\"SOAKING\", \"YELL\")\n        end\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["selfPoint"] = "CENTER",
			["xOffset"] = -415.999694824219,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/HycNvglo7/1",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "277071",
						["duration"] = "8",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_hide"] = "timed",
						["names"] = {
						},
						["event"] = "Combat Log",
						["name"] = "Summon Bursting Boil",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED",
						["use_spellId"] = true,
						["custom"] = "function(event, unitID, castGUID, spellID)\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" \n    then if spellID == 277057 then\n            return true\n        end\n    end\nend\n\n\n\n",
						["spellIds"] = {
						},
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_SUMMON",
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							277007, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Bursting Boil", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							277007, -- [1]
						},
						["debuffType"] = "HARMFUL",
						["names"] = {
							"Bursting Boil", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\nreturn t[1] and t[2] or t[1] and t[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["actions"] = {
				["start"] = {
					["sound_path"] = "",
					["sound"] = " custom",
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["text2Font"] = "Arial Narrow",
			["text1Containment"] = "OUTSIDE",
			["uid"] = "9jbP1aGoC9L",
			["text1Point"] = "BOTTOM",
			["version"] = 1,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 80,
			["internalVersion"] = 11,
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
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
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
				["class"] = {
					["multi"] = {
					},
				},
				["use_difficulty"] = true,
				["encounterid"] = "2122",
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["twenty"] = true,
					},
				},
			},
			["width"] = 80,
			["alpha"] = 1,
			["fontSize"] = 12,
			["text2Containment"] = "INSIDE",
			["automaticWidth"] = "Auto",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Arial Narrow",
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "text",
			["auto"] = false,
			["zoom"] = 0.3,
			["text2FontSize"] = 25,
			["conditions"] = {
			},
			["text1"] = "Soak",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["text2"] = "%s%c",
			["justify"] = "LEFT",
			["animations"] = {
				["start"] = {
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
				},
			},
			["id"] = "Bursting Boil Soak Announcer",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["glow"] = false,
			["displayIcon"] = 1394887,
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
		["SanUI_ChosenOfElune"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							102560, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["names"] = {
							"Incarnation: Chosen of Elune", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["text1Containment"] = "INSIDE",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["useglowColor"] = false,
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
			["stickyDuration"] = false,
			["xOffset"] = 0,
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 11,
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["cooldownTextEnabled"] = true,
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_ChosenOfElune",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
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
		["SanUI_Starfall"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							191034, -- [1]
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Starfall", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["xOffset"] = 0,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["internalVersion"] = 11,
			["text2Point"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
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
			["useglowColor"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["text2Enabled"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Starfall",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["Mythrax Mythic Stuff"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Obliteration Beam Timer ", -- [1]
				"Orb Spawn Indicator (put this on your character)", -- [2]
				"Orb Spawn Phase 2 / Transition", -- [3]
				"Bait Add", -- [4]
				"Obliteration Blast (Add)", -- [5]
				"Add Blast Timer (Bigwigs only)", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["authorOptions"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
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
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["yOffset"] = 24.3685913085938,
			["internalVersion"] = 11,
			["regionType"] = "group",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Mythrax Mythic Stuff",
			["xOffset"] = -353.841918945313,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["expanded"] = false,
			["config"] = {
			},
			["version"] = 7,
			["borderOffset"] = 5,
			["uid"] = "Nh6nmh4zJb1",
			["conditions"] = {
			},
			["load"] = {
				["use_class"] = false,
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
			["borderInset"] = 11,
		},
		["SanUI_Moonfire"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "target",
						["spellIds"] = {
							8921, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Moonfire", -- [1]
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
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
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["selfPoint"] = "CENTER",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Containment"] = "INSIDE",
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
			["authorOptions"] = {
			},
			["internalVersion"] = 11,
			["cooldownTextEnabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "SanUI_TargetDebuffs",
			["useglowColor"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["alpha"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["glow"] = false,
			["id"] = "SanUI_Moonfire",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 39.9999885559082,
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["SanUI_LiquidGold"] = {
			["glow"] = true,
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_loop"] = true,
					["do_sound"] = true,
					["sound_repeat"] = 1.35190165042877,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BikeHorn.ogg",
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 11,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["icon"] = true,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				0.215686274509804, -- [2]
				0.396078431372549, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 41.6842498779297,
			["parent"] = "SanUI_Urgent",
			["load"] = {
				["ingroup"] = {
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
				["talent2"] = {
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
			["text1Enabled"] = true,
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
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "SCT TwCenMT",
			["progressPrecision"] = 0,
			["width"] = 41.6843109130859,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["text1"] = "%c",
			["auto"] = true,
			["text2"] = "%p",
			["zoom"] = 0.3,
			["useGlowColor"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "SanUI_LiquidGold",
			["xOffset"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["uid"] = "6zmXSMvJ7ee",
			["inverse"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"Liquid Gold", -- [1]
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["spellName"] = 0,
						["charges_operator"] = ">=",
						["useName"] = true,
						["use_charges"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["charges"] = "2",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["use_unit"] = true,
						["type"] = "aura2",
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 102351,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
		},
		["Clickable button creator and sender"] = {
			["text2Point"] = "LEFT",
			["text1FontSize"] = 28,
			["xOffset"] = 0,
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["url"] = "https://wago.io/suusX6ZrJ/17",
			["icon"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_never"] = false,
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2276",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["glowType"] = "buttonOverlay",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2FontSize"] = 24,
			["text2"] = "%inputCode",
			["auto"] = false,
			["text2Enabled"] = false,
			["config"] = {
				["showAll"] = false,
			},
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    if aura_env.state then \n        return aura_env.state.inputCount and aura_env.state.inputCount..\"/3\" or \"\", aura_env.state.unit or \"\", aura_env.state.icon or \"\"\n    end\nend",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["useglowColor"] = false,
			["internalVersion"] = 11,
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
			["stickyDuration"] = false,
			["version"] = 17,
			["height"] = 64,
			["alpha"] = 1,
			["fontSize"] = 12,
			["text2Containment"] = "OUTSIDE",
			["text1Containment"] = "OUTSIDE",
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "Mekkatorque Robot Helper",
			["authorOptions"] = {
				{
					["type"] = "toggle",
					["name"] = "Show buttons for all players in robot",
					["default"] = false,
					["key"] = "showAll",
					["width"] = 2,
				}, -- [1]
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glow"] = false,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "",
			["automaticWidth"] = "Auto",
			["anchorFrameType"] = "SCREEN",
			["text1Point"] = "LEFT",
			["text1"] = "%c1 %c2 %c3",
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["auranames"] = {
							"130", -- [1]
						},
						["duration"] = "1",
						["unit"] = "multi",
						["debuffType"] = "HELPFUL",
						["showClones"] = true,
						["type"] = "custom",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Conditions",
						["custom_type"] = "stateupdate",
						["events"] = "CHAT_MSG_ADDON,COMBAT_LOG_EVENT_UNFILTERED, ENCOUNTER_START,RAID_TARGET_UPDATE",
						["spellIds"] = {
						},
						["custom"] = "function(allstates,event,...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local timestamp, subEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellID = ...\n        if subEvent == \"SPELL_AURA_APPLIED\" and spellID == 286105 and strsplit(\"-\", destGUID) == \"Player\" then\n            if UnitIsPlayer(destName) then\n                aura_env.counter = aura_env.counter + 1\n                if destName == WeakAuras.me then\n                    aura_env.myNumber = aura_env.counter\n                end\n            end\n            if destName ~= WeakAuras.me and UnitIsPlayer(destName) then\n                allstates[destName] = {\n                    show = true,\n                    changed = true,\n                    progressType = \"static\",\n                    name = destName,\n                    unit = \"|cFF5cef26RDY|r \"..WA_ClassColorName(destName),\n                    index = aura_env.counter,\n                    resort = true,\n                }\n                if GetRaidTargetIndex(destName) then\n                    --puts raidmark next to name\n                    allstates[destName].icon = \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_\"..GetRaidTargetIndex(destName)..\":0|t\"\n                    allstates[destName].changed = true\n                end\n                if aura_env.myNumber and not aura_env.config[\"showAll\"] then\n                    --wipe states that are ~= my assignement\n                    if aura_env.assignment[aura_env.myNumber] ~= allstates[destName].index then\n                        allstates[destName].show = false\n                        allstates[destName].changed = true\n                    end\n                end\n            end\n            if destName == WeakAuras.me and UnitIsPlayer(destName) and not aura_env.config[\"showAll\"] then\n                for k,v in pairs(allstates) do \n                    --wipe states that are ~= my assignement\n                    if aura_env.assignment[aura_env.myNumber] ~= v.index then\n                        v.show = false\n                        v.changed = true\n                    end\n                end\n            end\n        elseif subEvent == \"SPELL_AURA_REMOVED\" and spellID == 286105 then\n            --removes clickable upon leaving robot\n            if allstates[destName] then\n                allstates[destName].show = false\n                allstates[destName].changed = true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and spellID == 286105 then\n            aura_env.GUIDS[destGUID] = sourceName\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.list[spellID] then\n            --updates amount of inputCodes \n            if allstates[aura_env.GUIDS[sourceGUID]] then\n                if not allstates[aura_env.GUIDS[sourceGUID]].inputCount then\n                    allstates[aura_env.GUIDS[sourceGUID]].inputCount = 1\n                    allstates[aura_env.GUIDS[sourceGUID]].changed = true\n                else allstates[aura_env.GUIDS[sourceGUID]].inputCount = allstates[aura_env.GUIDS[sourceGUID]].inputCount + 1\n                    allstates[aura_env.GUIDS[sourceGUID]].changed = true\n                end\n            end\n            if allstates[aura_env.GUIDS[sourceGUID]] then\n                --the player you're assigned to inputted a code\n                allstates[aura_env.GUIDS[sourceGUID]].unit = \"|cFF5cef26RDY|r \"..WA_ClassColorName(aura_env.GUIDS[sourceGUID])\n                allstates[aura_env.GUIDS[sourceGUID]].changed = true\n            end\n        elseif subEvent == \"SPELL_CAST_SUCCESS\" and aura_env.spellIDs[spellID] then\n            --make shrunk-cast reset the counter\n            aura_env.counter = 0\n            aura_env.myNumber = nil\n        end\n    elseif event == \"ENCOUNTER_START\" then\n        --safety first\n        aura_env.counter = 0\n        aura_env.myNumber = nil\n        aura_env.GUIDS = {}\n    elseif event == \"RAID_TARGET_UPDATE\" then\n        --update raidicon\n        for _,v in pairs(allstates) do\n            if GetRaidTargetIndex(v.name) then\n                v.icon = \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_\"..GetRaidTargetIndex(v.name)..\":0|t\"\n                v.changed = true\n            end\n        end\n    elseif event == \"CHAT_MSG_ADDON\" then\n        local prefix, text, channel, sender, receiver = ...\n        if prefix then\n            if prefix == \"Robotstatus_WAIT\" then\n                if allstates[text] then\n                    --sets status to wait upon sending info to guy in robot\n                    allstates[text].unit = \"|cFFFF0000WAIT|r \"..WA_ClassColorName(text)\n                    allstates[text].changed = true    \n                end\n            end\n        end\n    end\n    return true\nend",
						["use_absorbMode"] = true,
						["check"] = "event",
						["useName"] = true,
						["names"] = {
						},
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useName"] = true,
						["auranames"] = {
							"286105", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = true,
			["justify"] = "LEFT",
			["useGlowColor"] = false,
			["semver"] = "1.0.16",
			["id"] = "Clickable button creator and sender",
			["useTooltip"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["actions"] = {
				["start"] = {
					["custom"] = "--not my proudest code\nlocal unit = aura_env.state.name\n--red\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1 = CreateFrame(\"Button\", \"MekkaRed\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"RED\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_redwrench\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1.texture1:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:SetPoint(\"CENTER\",0,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon1:Show()\n\n--2 purple\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2 = CreateFrame(\"Button\", \"MekkaPurple\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"PURPLE\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_purplechicken\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2.texture2:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:SetPoint(\"CENTER\",aura_env.region.width,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon2:Show() \n\n--3 green\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3 = CreateFrame(\"Button\", \"MekkaGreen\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"GREEN\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_greenspring\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3.texture3:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:SetPoint(\"CENTER\",aura_env.region.width*2,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon3:Show() \n\n--4 yellow\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4 = CreateFrame(\"Button\", \"MekkaYellow\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"YELLOW\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_yellowbolt\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4.texture4:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:SetPoint(\"CENTER\",aura_env.region.width*3,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon4:Show() \n\n-- blue\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5 = CreateFrame(\"Button\", \"MekkaBlue\", WeakAuras.GetRegion(aura_env.id, aura_env.cloneId), \"UIPanelButtonTemplate\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetWidth(aura_env.region.width); WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetHeight(aura_env.region.height);         \nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:RegisterForClicks(\"AnyUp\");\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetScript(\"OnClick\", function (self, button, down)\n        C_ChatInfo.SendAddonMessage(\"Robotstatus_WAIT\", unit, \"RAID\")\n        SendChatMessage(\"BLUE\", \"WHISPER\", \"common\", unit) end);\n\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5 = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:CreateTexture(nil,\"LOW\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5:SetTexture(\"Interface\\\\Icons\\\\spell_mekkatorque_bot_bluegear\")\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5.texture5:SetAllPoints(WeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:SetPoint(\"CENTER\",aura_env.region.width*4,0)\nWeakAuras.GetRegion(aura_env.id, aura_env.cloneId).icon5:Show() \n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_sound"] = false,
					["do_custom"] = true,
					["custom"] = "local frame = WeakAuras.GetRegion(aura_env.id, aura_env.cloneId)\nframe:Hide()\nframe.icon1:Hide()\nframe.icon1.texture1:Hide()\nframe.icon2:Hide()\nframe.icon2.texture2:Hide()\nframe.icon3:Hide()\nframe.icon3.texture3:Hide()\nframe.icon4:Hide()\nframe.icon4.texture4:Hide()\nframe.icon5:Hide()\nframe.icon5.texture5:Hide()\n--gotta hide frames else monkaS things happen",
					["stop_sound"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.counter = 0\naura_env.GUIDS = {}\nC_ChatInfo.RegisterAddonMessagePrefix(\"Robotstatus_WAIT\")\naura_env.assignment = {\n    [1] = 2,\n    [2] = 3,\n    [3] = 1,\n}\naura_env.list = {\n    [286152] = true, --orange spanner\n    [286192] = true, -- purple chicken\n    [286215] = true, --green spring\n    [286219] = true, --yellow screw\n    [286226] = true, --blue cog\n}\naura_env.spellIDs = {\n    [288041] = true,\n    [289537] = true,\n    [286693] = true,    \n}\n--list of spellIDs that fire when inputting a code",
					["do_custom"] = true,
				},
			},
			["zoom"] = 0,
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["uid"] = "VG4iY7DEZCC",
			["wordWrap"] = "WordWrap",
		},
		["SanUI_RageOfTheSleeper"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							200851, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Rage of the Sleeper", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text1FontFlags"] = "OUTLINE",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["cooldownTextEnabled"] = true,
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
			["internalVersion"] = 11,
			["text1Containment"] = "INSIDE",
			["glow"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
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
			["useglowColor"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["frameStrata"] = 1,
			["text1"] = "%c",
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_RageOfTheSleeper",
			["authorOptions"] = {
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["parent"] = "SanUI_Buffs",
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
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
		},
		["Dark Revelation + Soaking overlap (Spammer)"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "%i swap %i%c",
			["customText"] = "function()\n    if (not aura_env.lastSay or aura_env.lastSay <= GetTime() - 1.5) and WeakAuras.triggerState[aura_env.id].triggers[1] and WeakAuras.triggerState[aura_env.id].triggers[2] then\n        aura_env.lastSay = GetTime()\n        SendChatMessage(\"{rt1} SWAP {rt1}\", \"YELL\")\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["init"] = {
					["custom"] = "\n\n\n\n\n\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["do_message"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "130",
						["duration"] = "6",
						["use_unit"] = true,
						["destUnit"] = "player",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["spellName"] = "130",
						["names"] = {
							"Dark Revelation", -- [1]
							"Deathwish", -- [2]
							"Pit of Despair", -- [3]
						},
						["type"] = "aura",
						["subeventSuffix"] = "_AURA_APPLIED",
						["unevent"] = "timed",
						["use_showOn"] = true,
						["spellIds"] = {
							273437, -- [1]
							274315, -- [2]
							269965, -- [3]
						},
						["event"] = "Combat Log",
						["use_spellId"] = true,
						["realSpellName"] = "Netherwalk",
						["use_spellName"] = false,
						["name"] = "Slow Fall",
						["use_sourceUnit"] = false,
						["buffShowOn"] = "showOnActive",
						["use_destUnit"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["spellName"] = 196555,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							272018, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Absorbed in Darkness", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\n    return (t[1] and t[2] and t[3] and t[4] and t[7]) \nend\n\n\n\n",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["type"] = "custom",
					["colorR"] = 1,
					["scaley"] = 1,
					["x"] = 0,
					["scalex"] = 1,
					["alpha"] = 0,
					["colorType"] = "pulseHSV",
					["y"] = 0,
					["colorB"] = 0.67843137254902,
					["colorG"] = 0,
					["use_color"] = true,
					["colorFunc"] = "    function(progress, r1, g1, b1, a1, r2, g2, b2, a2)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      local newProgress = ((math.sin(angle) + 1)/2);\n      return WeakAuras.GetHSVTransition(newProgress, r1, g1, b1, a1, r2, g2, b2, a2)\n    end\n  ",
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["colorA"] = 1,
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 9,
			["height"] = 30.000091552734,
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
					["single"] = "MAGE",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["use_encounterid"] = true,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
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
				["encounterid"] = "2145",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 30,
			["regionType"] = "text",
			["width"] = 170.00645446777,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["parent"] = "Swap Soaker (Dark Revelation + Soak overlap)",
			["id"] = "Dark Revelation + Soaking overlap (Spammer)",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "zy7K)iciy1i",
			["config"] = {
			},
			["url"] = "https://wago.io/ryK0n-c47/9",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["authorOptions"] = {
			},
		},
		["SanUI_FuryOfEluneOffCD"] = {
			["glow"] = false,
			["text1FontSize"] = 12,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["spellName"] = 202770,
						["charges_operator"] = ">=",
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["charges"] = "2",
						["realSpellName"] = "Fury of Elune",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["use_charges"] = false,
						["use_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 202770,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 11,
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
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Point"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_talent"] = true,
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
					["single"] = 20,
					["multi"] = {
						[2] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["use_name"] = false,
				["name"] = "Affinity",
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["text1Enabled"] = true,
			["parent"] = "SanUI_Urgent",
			["authorOptions"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.996078431372549, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
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
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%c",
			["frameStrata"] = 1,
			["zoom"] = 0.3,
			["text2"] = "%p",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "SanUI_FuryOfEluneOffCD",
			["text1Font"] = "SCT TwCenMT",
			["text2Enabled"] = false,
			["width"] = 40,
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["inverse"] = false,
			["progressPrecision"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
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
			["parent"] = "SanUI_BearMitigation",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							192081, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
							"Ironfur", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = true,
			["stickyDuration"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["borderOffset"] = 5,
			["height"] = 23.9999923706055,
			["timerFlags"] = "None",
			["auto"] = true,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMax"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["stacksFont"] = "Friz Quadrata TT",
			["sparkRotationMode"] = "AUTO",
			["borderInFront"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorFrameType"] = "SCREEN",
			["borderSize"] = 16,
			["sparkOffsetX"] = 0,
			["icon_side"] = "LEFT",
			["sparkRotation"] = 0,
			["id"] = "SanUI_Ironfur",
			["sparkHeight"] = 30,
			["textFlags"] = "None",
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["timer"] = true,
			["frameStrata"] = 1,
			["width"] = 113.653327941895,
			["textSize"] = 12,
			["icon"] = false,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["authorOptions"] = {
			},
		},
		["SanUI_Starlord"] = {
			["glow"] = false,
			["text1FontSize"] = 15,
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							202345, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Starlord", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["useglowColor"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
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
				["use_talent"] = true,
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
			["text2Point"] = "CENTER",
			["stickyDuration"] = false,
			["text1Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Font"] = "Friz Quadrata TT",
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
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = " %s",
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["text2"] = "%p",
			["id"] = "SanUI_Starlord",
			["internalVersion"] = 11,
			["text2Enabled"] = false,
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Containment"] = "INSIDE",
		},
		["Lifebloom-Watch"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"LB Active: Below Pandemic - Icon ", -- [1]
				"LB Active: Below Pandemic - Text", -- [2]
				"LB Not Active: CAST! - Icon", -- [3]
				"LB Not Active: CAST! - Flash ", -- [4]
				"LB Not Active: CAST! - Text", -- [5]
				"LB Active: Below Pandemic - Symbol", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/SJzs3stm-/5",
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 11,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Lifebloom-Watch",
			["yOffset"] = -22.6316528320313,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 11,
			["version"] = 5,
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
					["multi"] = {
					},
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
			["xOffset"] = -387.526519775391,
		},
		["SlamDunk.Core"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["customText"] = "function()\n    return aura_env.getText() \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "-- Warning messages\nlocal warningOrbSpawnEstimate = aura_env.config[\"warningOrbSpawnEstimate\"]\nlocal warningOrbSpawn = aura_env.config[\"warningOrbSpawn\"]\nlocal warningOrbDebuff = aura_env.config[\"warningOrbDebuff\"]\nlocal warningOppositeInRange = aura_env.config[\"warningOppositeInRange\"]\nlocal warningOppositeDeposited = aura_env.config[\"warningOppositeDeposited\"]\n\n-- If true, clear saved data every time aura is loaded\nlocal clearSaved = false\n\n----------------------------\n-- End of config section! --\n----------------------------\n\nlocal waSavedTable, dunkCounter, currentGroup, currentPhase, myGroup, myDrive, myDunkBuddy, isEstimate\n\nlocal auraEnv = aura_env\nlocal startGroup = 1\nlocal groups = {}\nlocal classColorCache = {}\nlocal timeReceived = \"00:00 1/1\"\n\nlocal markerLeft = \"\"\nlocal markerRight = \"\"\nlocal myMarker = \"\"\n\nlocal DEPOSIT_ID = 263373\nlocal COLLECT_ID = 269455\nlocal MATRIX_ID = 263372\nlocal DEBUFF_ID = 263436\n\nlocal DRIVE_ID_LEFT = 134064\nlocal DRIVE_ID_RIGHT = 139573\n\nlocal MSG_PREFIX = \"GHUUN_ORBS_WA\"\n\nlocal RESPAWN_TIME = 12\nlocal RUN_TIME = 12\nlocal DELAYS = {\n    0, 0, 0, 20, 0, 0, 20, 0, 0\n}\n\nlocal MARKERS = {\n    [0] = \"\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_1:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_2:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_3:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_4:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_5:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_6:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_7:0|t\",\n    \"|TInterface\\\\TargetingFrame\\\\UI-RaidTargetingIcon_8:0|t\",\n}\n\nlocal MYTHRAX_ID = 2135\nlocal GHUUN_ID = 2122\n\n----\n\nlocal function getClassColorString(name)\n    if classColorCache[name] then return classColorCache[name] end\n\n    local _,class = UnitClass(name)\n    if not class then return \"|cFFAAAAAA\"..name..\"|r\" end\n    \n    local color = RAID_CLASS_COLORS[class]\n    local hexColor = string.format(\"%02x%02x%02x\", color[\"r\"]*255, color[\"g\"]*255, color[\"b\"]*255)\n    classColorCache[name] = \"|cFF\"..hexColor..name..\"|r\"\n    return classColorCache[name]\nend\n\nlocal function updateText()\n    local t = \"Orb Groups (\"..timeReceived..\")\\n------------------------------\\n\"\n        \n    for i = 1, 5 do\n        if not groups[i] then\n            WeakAuras.ScanEvents(\"GHUUN_GROUPS_STRING\", \"Waiting for group data...\")\n            return\n        end\n\n        group = groups[i]\n        t = t..\"Group \"..i\n        if i == currentGroup then\n            t = t..\" (ACTIVE)\"\n        end\n        t = t..\"\\nL: \"..getClassColorString(group[1])..\" -> \"..getClassColorString(group[2])..\"\\n\"\n        t = t..\"R: \"..getClassColorString(group[3])..\" -> \"..getClassColorString(group[4])..\"\\n\\n\"\n    end\n\n    WeakAuras.ScanEvents(\"GHUUN_GROUPS_STRING\", t)\nend\n\nlocal function updateMyStatus()\n    myGroup = 0\n    for gi, group in pairs(groups) do\n        for ni = 1, 4 do\n            if group[ni] == UnitName(\"player\") then\n                local isLeft = ni < 3\n                myGroup = gi\n                myMarker = isLeft and markerLeft or markerRight\n                if ni % 2 == 0 then\n                    myDrive = isLeft and DRIVE_ID_LEFT or DRIVE_ID_RIGHT\n                    myDunkBuddy = isLeft and group[4] or group[2]\n                else\n                    myDrive = nil\n                    myDunkBuddy = nil\n                end\n            end\n        end\n    end\nend\n\nlocal function showWarning(text, duration)\n    WeakAuras.ScanEvents(\"GHUUN_WARNING\", text, duration)\nend\n\nlocal function clearWarning()\n    WeakAuras.ScanEvents(\"GHUUN_WARNING\")\nend\n\nlocal function clearGroupText()\n    WeakAuras.ScanEvents(\"GHUUN_GROUPS_STRING\", \"\")\nend\n\nlocal function stopEstimate()\n    if isEstimate then\n        showWarning(warningOrbSpawnEstimate..\" >\"..RESPAWN_TIME, 0)\n    end\nend\n\nlocal function reset()\n    dunkCounter = 0\n    currentGroup = startGroup\n    currentPhase = 1\n    isEstimate = false\n    updateMyStatus()\n    updateText()\n    clearWarning()\n    GHUUN_ORB_WA_MSGFRAME:SetScript(\"OnUpdate\", nil)\nend\n\nlocal function parseMsg(msg)\n    local prefix, arg1, arg2, arg3, arg4, arg5 = strsplit(\"-\", msg)\n    \n    if prefix == \"Header\" then\n        print(\"[GhuunSlamDunk] Receiving group data from \"..arg1)\n        startGroup = tonumber(arg2)\n        markerLeft = MARKERS[tonumber(arg3)]\n        markerRight = MARKERS[tonumber(arg4)]\n        timeReceived = date(\"%H:%M %d/%m\")\n        waSavedTable[\"startGroup\"] = startGroup\n        waSavedTable[\"markerLeft\"] = markerLeft\n        waSavedTable[\"markerRight\"] = markerRight\n        waSavedTable[\"timeReceived\"] = timeReceived\n        C_ChatInfo.SendAddonMessage(MSG_PREFIX, \"ACK-\"..UnitName(\"player\"), \"RAID\")\n        C_Timer.After(3, reset)\n    elseif prefix == \"Group\" then\n        groups[tonumber(arg1)] = {\n            arg2, arg3, arg4, arg5\n        }\n    elseif prefix == \"RangeWarning\" then\n        if arg1 == myDunkBuddy then\n            showWarning(warningOppositeInRange, 0)\n        end\n    end\nend\n\nlocal function checkRange()\n    local guid = UnitGUID(\"mouseover\")\n    if not guid then return end\n    \n    local npcId = select(6, strsplit(\"-\", guid))\n    if not npcId or tonumber(npcId) ~= myDrive then return end\n    \n    if IsItemInRange(63427, \"mouseover\") then\n        C_ChatInfo.SendAddonMessage(MSG_PREFIX, \"RangeWarning-\"..UnitName(\"player\"), \"RAID\")\n        GHUUN_ORB_WA_MSGFRAME:SetScript(\"OnUpdate\", nil)\n    end\nend\n\nlocal function collectSuccess(casterId)\n    if casterId == UnitGUID(\"player\") then\n        clearWarning()\n        return\n    end\n    if currentPhase == 9 then return end\n    \n    local nextGroup = (currentGroup % 5) + 1\n    if nextGroup == myGroup and DELAYS[currentPhase+1] == 0 then\n        local timeLeft = RESPAWN_TIME + RUN_TIME\n        local debuffExpTime = select(6, WA_GetUnitDebuff(\"player\", DEBUFF_ID))\n        if debuffExpTime then\n            timeLeft = math.max(timeLeft, debuffExpTime - GetTime())\n        end\n        \n        isEstimate = true\n        showWarning(warningOrbSpawnEstimate..\" ~\", timeLeft)\n        C_Timer.After(timeLeft-RESPAWN_TIME, stopEstimate)\n    end    \nend\n\nlocal function catchSuccess(casterId)\n    if myDrive and casterId == UnitGUID(\"player\") then\n        GHUUN_ORB_WA_MSGFRAME:SetScript(\"OnUpdate\", checkRange)\n    end\nend\n\nlocal function depositStart(casterId)\n    if myDrive and currentGroup == myGroup\n    and casterId ~= UnitGUID(\"player\") then\n        clearWarning()\n        showWarning(warningOppositeDeposited..\"\\n\", 3)\n    end\nend\n\nlocal function depositSuccess()\n    dunkCounter = dunkCounter + 1\n    if dunkCounter % 2 == 1 then return end\n\n    clearWarning()\n    \n    if currentPhase == 9 then\n        clearGroupText()\n        GHUUN_ORB_WA_MSGFRAME:UnregisterEvent(\"COMBAT_LOG_EVENT_UNFILTERED\")\n        return\n    end\n    \n    currentPhase = currentPhase + 1\n    currentGroup = (currentGroup % 5) + 1\n    isEstimate = false\n    \n    if currentGroup == myGroup\n    then\n        local timeLeft = RESPAWN_TIME + DELAYS[currentPhase]            \n        local debuffExpTime = select(6, WA_GetUnitDebuff(\"player\", DEBUFF_ID))\n        local warningText = warningOrbSpawn\n        if debuffExpTime then\n            local debuffTimeLeft = debuffExpTime - GetTime()\n            if debuffTimeLeft > timeLeft then\n                timeLeft = debuffTimeLeft\n                warningText = warningText..\" \"..warningOrbDebuff\n            end\n        end\n        \n        showWarning(myMarker..\" \"..warningText..\" \"..myMarker..\"\\n\", timeLeft)\n    end\n    \n    updateText()\nend\n\nlocal function processCombatLog()\n    local _,event,_,casterId,_,_,_,_,_,_,_,spellId = CombatLogGetCurrentEventInfo()\n    if not spellId then return end\n    \n    if spellId == COLLECT_ID and event == \"SPELL_CAST_SUCCESS\" then\n        collectSuccess(casterId)\n    elseif spellId == MATRIX_ID and event == \"SPELL_AURA_APPLIED\" then\n        catchSuccess(casterId)\n    elseif spellId == DEPOSIT_ID then\n        if event == \"SPELL_CAST_START\" then\n            depositStart(casterId)\n        elseif event == \"SPELL_CAST_SUCCESS\" then\n            depositSuccess()\n        end\n    end\nend\n\nlocal function isActive()\n    if not auraEnv.config[\"restrictiveLoading\"] then\n        return true\n    end\n\n    local currentName = GetInstanceInfo()\n    for i = 1, GetNumSavedInstances() do\n        local name, _, reset = GetSavedInstanceInfo(i)\n        if currentName == name and reset > 0 then\n            return select(12, GetSavedInstanceInfo(i)) >= 7\n        end\n    end\n    return false\nend\n\nlocal function encounterStart(encounterId)\n    if encounterId == GHUUN_ID then\n        reset()\n        GHUUN_ORB_WA_MSGFRAME:RegisterEvent(\"COMBAT_LOG_EVENT_UNFILTERED\")\n        if myGroup == startGroup then\n            showWarning(myMarker..\" \"..warningOrbSpawn..\" \"..myMarker..\"\\n\", 7)\n        end\n    end\nend\n\nlocal function encounterEnd(encounterId, success)\n    if encounterId == GHUUN_ID or (encounterId == MYTHRAX_ID and success == 1)\n    then\n        reset()\n        GHUUN_ORB_WA_MSGFRAME:UnregisterEvent(\"COMBAT_LOG_EVENT_UNFILTERED\")\n    else\n        clearWarning()\n        clearGroupText()\n    end\nend\n\nlocal function eventHandler(self, event, ...)\n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\"\n    then\n        processCombatLog()\n    elseif event == \"CHAT_MSG_ADDON\"\n    and ... == MSG_PREFIX\n    then\n        parseMsg(select(2, ...))\n    elseif event == \"ENCOUNTER_START\"\n    then\n        local encounterId = ...\n        encounterStart(encounterId)\n    elseif event == \"ENCOUNTER_END\"\n    then\n        local encounterId,_,_,_,success = ...\n        encounterEnd(encounterId, success)\n    end\nend\n\nfunction aura_env.init()\n    if not WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"] or clearSaved then\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"] = {}\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"groups\"] = groups\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"startGroup\"] = startGroup\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"markerLeft\"] = markerLeft\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"markerRight\"] = markerRight\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"timeReceived\"] = timeReceived\n        WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"][\"classColorCache\"] = classColorCache\n    end\n    \n    waSavedTable = WeakAurasSaved[\"displays\"][aura_env.id][\"GhuunGroupData\"]\n    groups = waSavedTable[\"groups\"]\n    startGroup = waSavedTable[\"startGroup\"]\n    markerLeft = waSavedTable[\"markerLeft\"]\n    markerRight = waSavedTable[\"markerRight\"]\n    timeReceived = waSavedTable[\"timeReceived\"]\n    classColorCache = waSavedTable[\"classColorCache\"]\n    \n    if not GHUUN_ORB_WA_MSGFRAME then\n        CreateFrame(\"FRAME\", \"GHUUN_ORB_WA_MSGFRAME\")\n    end\n    \n    GHUUN_ORB_WA_MSGFRAME:RegisterEvent(\"CHAT_MSG_ADDON\")\n    GHUUN_ORB_WA_MSGFRAME:RegisterEvent(\"ENCOUNTER_START\")\n    GHUUN_ORB_WA_MSGFRAME:RegisterEvent(\"ENCOUNTER_END\")\n    C_ChatInfo.RegisterAddonMessagePrefix(MSG_PREFIX)\n    GHUUN_ORB_WA_MSGFRAME:SetScript(\"OnEvent\", eventHandler)\n\n    if isActive() then\n        reset()\n    else\n        clearWarning()\n        clearGroupText()\n    end\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_unit"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["events"] = "",
						["use_absorbMode"] = true,
						["check"] = "event",
						["custom_type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function()\n    aura_env.init()\n    return false\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
			["wordWrap"] = "WordWrap",
			["desc"] = "Core functionality. You can change the wording of warning messages under Custom Options.",
			["font"] = "ABF",
			["version"] = 6,
			["GhuunGroupData"] = {
				["groups"] = {
					{
						"Metricz", -- [1]
						"Metricz", -- [2]
						"Astora", -- [3]
						"Astora", -- [4]
					}, -- [1]
					{
						"Dämonicus", -- [1]
						"Dämonicus", -- [2]
						"Calìra", -- [3]
						"Calìra", -- [4]
					}, -- [2]
					{
						"Marone", -- [1]
						"Igis", -- [2]
						"Galarian", -- [3]
						"Majlu", -- [4]
					}, -- [3]
					{
						"Sathrakas", -- [1]
						"Sathrakas", -- [2]
						"Desura", -- [3]
						"Yorksîn", -- [4]
					}, -- [4]
					{
						"Arashy", -- [1]
						"Lamara", -- [2]
						"Boûnty", -- [3]
						"Henno", -- [4]
					}, -- [5]
				},
				["classColorCache"] = {
					["Boûnty"] = "|cFFaad372Boûnty|r",
					["Astora"] = "|cFF00ff96Astora|r",
					["Narix"] = "|cFF8787edNarix|r",
					["Majlu"] = "|cFF3fc6eaMajlu|r",
					["Galarian"] = "|cFFaad372Galarian|r",
					["Dämonicus"] = "|cFF8787edDämonicus|r",
					["Metricz"] = "|cFFa330c9Metricz|r",
					["Ghasp"] = "|cFF0070ddGhasp|r",
					["Lamara"] = "|cFFc69b6dLamara|r",
					["Yorksèn"] = "|cFFa330c9Yorksèn|r",
					["Tavore"] = "|cFFff7c0aTavore|r",
					["Kizaru"] = "|cFFf48cbaKizaru|r",
					["Igis"] = "|cFFfff468Igis|r",
					["Collman"] = "|cFFff7c0aCollman|r",
					["Xanue"] = "|cFFc41e3aXanue|r",
					["Marone"] = "|cFFaad372Marone|r",
					["Arashy"] = "|cFFf48cbaArashy|r",
					["Desura"] = "|cFF0070ddDesura|r",
					["Shadowelfi"] = "|cFFfff468Shadowelfi|r",
					["Yorksîn"] = "|cFFff7c0aYorksîn|r",
					["Ketachi"] = "|cFF00ff96Ketachi|r",
					["Calìra"] = "|cFF8787edCalìra|r",
					["Henno"] = "|cFFc69b6dHenno|r",
					["Sathrakas"] = "|cFFa330c9Sathrakas|r",
					["Gror"] = "|cFFff7c0aGror|r",
					["Lócke"] = "|cFFc41e3aLócke|r",
				},
				["timeReceived"] = "20:22 07/01",
				["startGroup"] = 1,
				["markerRight"] = "",
				["markerLeft"] = "",
			},
			["fontSize"] = 9,
			["regionType"] = "text",
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
			["justify"] = "LEFT",
			["load"] = {
				["zoneId"] = "1155",
				["zonegroupId"] = "384",
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["difficulty"] = {
					["single"] = "mythic",
					["multi"] = {
						["mythic"] = true,
					},
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["use_difficulty"] = true,
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "SlamDunk.Core",
			["conditions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Uldir.Ghuun.SlamDunk",
			["config"] = {
				["warningOrbSpawnEstimate"] = "your orb in",
				["warningOrbDebuff"] = "(AFTER DEBUFF)",
				["warningOppositeInRange"] = "OTHER SIDE IN POSITION!",
				["restrictiveLoading"] = true,
				["warningOrbSpawn"] = "YOUR ORB NEXT",
				["warningOppositeDeposited"] = "OTHER SIDE DUNKED, HIT IT!",
			},
			["url"] = "https://wago.io/HyZu-Vj07/6",
			["uid"] = "egqF9FGQx9Y",
			["fixedWidth"] = 200,
			["selfPoint"] = "TOPLEFT",
			["authorOptions"] = {
				{
					["type"] = "description",
					["text"] = "Warning messages",
					["fontSize"] = "large",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "description",
					["fontSize"] = "small",
					["text"] = "Sets the wording of the warning messages, for localization or personal preference.",
					["width"] = 2,
				}, -- [2]
				{
					["type"] = "input",
					["name"] = "Orb spawn timer (estimate)",
					["width"] = 2,
					["default"] = "your orb in",
					["length"] = 10,
					["key"] = "warningOrbSpawnEstimate",
					["useLength"] = false,
				}, -- [3]
				{
					["type"] = "input",
					["name"] = "Orb spawn timer (exact)",
					["width"] = 2,
					["default"] = "YOUR ORB NEXT",
					["length"] = 10,
					["key"] = "warningOrbSpawn",
					["useLength"] = false,
				}, -- [4]
				{
					["type"] = "input",
					["name"] = "Imperfect physiology debuff notification",
					["width"] = 2,
					["default"] = "(AFTER DEBUFF)",
					["length"] = 10,
					["key"] = "warningOrbDebuff",
					["useLength"] = false,
				}, -- [5]
				{
					["type"] = "input",
					["name"] = "Opposite dunker in position",
					["width"] = 2,
					["default"] = "OTHER SIDE IN POSITION!",
					["length"] = 10,
					["key"] = "warningOppositeInRange",
					["useLength"] = false,
				}, -- [6]
				{
					["type"] = "input",
					["name"] = "Opposite dunker started dunking",
					["width"] = 2,
					["default"] = "OTHER SIDE DUNKED, HIT IT!",
					["length"] = 10,
					["key"] = "warningOppositeDeposited",
					["useLength"] = false,
				}, -- [7]
				{
					["type"] = "description",
					["fontSize"] = "medium",
					["text"] = "\n",
					["width"] = 2,
				}, -- [8]
				{
					["type"] = "toggle",
					["key"] = "restrictiveLoading",
					["desc"] = "If checked, the aura will only show while inside an instance where Mythrax has been defeated. Other restrictions may apply under the Load tab as well!",
					["default"] = true,
					["useDesc"] = true,
					["name"] = "Restrictive loading",
					["width"] = 2,
				}, -- [9]
			},
		},
		["LB Not Active: CAST! - Text"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 24,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["glow_frame"] = "WeakAuras:Lifebloom Missing",
				},
				["init"] = {
					["custom"] = "aura_env.expires = 0",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["rem"] = "0",
						["duration"] = "30",
						["subeventPrefix"] = "SPELL",
						["use_totemName"] = true,
						["use_spell"] = true,
						["unit"] = "group",
						["use_specific_unit"] = false,
						["ownOnly"] = true,
						["count"] = "0",
						["spellIds"] = {
						},
						["group_count"] = "0",
						["group_countOperator"] = "==",
						["spell"] = "Efflorescence",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["type"] = "aura",
						["countOperator"] = "==",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["custom_type"] = "event",
						["event"] = "Totem",
						["totemName"] = 145205,
						["custom_hide"] = "custom",
						["debuffType"] = "HELPFUL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["use_inverse"] = true,
						["remOperator"] = "<",
						["name_info"] = "aura",
						["use_unit"] = true,
						["use_castType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "Lifebloom-Watch",
			["authorOptions"] = {
			},
			["displayIcon"] = "134206",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "BOTTOM",
			["version"] = 5,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 54,
			["useglowColor"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["fortyman"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
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
				["use_vehicle"] = false,
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_vehicleUi"] = false,
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
			},
			["glow"] = false,
			["internalVersion"] = 11,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Expressway",
			["width"] = 54,
			["frameStrata"] = 3,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Font"] = "Friz Quadrata TT",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text1Color"] = {
				0.88235294117647, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["text1"] = "*CAST*",
			["text2"] = "%p",
			["cooldownTextEnabled"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["text1Containment"] = "OUTSIDE",
			["id"] = "LB Not Active: CAST! - Text",
			["text2Enabled"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/SJzs3stm-/5",
			["config"] = {
			},
			["inverse"] = false,
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["xOffset"] = 0,
		},
		["Bar/P2"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/V3olCoZhS/1",
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
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
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
				["encounterid"] = "2280",
				["role"] = {
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
			["textFont"] = "Expressway",
			["borderOffset"] = 2,
			["auto"] = true,
			["timerFont"] = "Expressway",
			["alpha"] = 1,
			["borderInset"] = 1,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["parent"] = "Sea Swell (Mythic) Bar",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "  Sea Swell",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "285118",
						["duration"] = "2",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unevent"] = "timed",
						["event"] = "Combat Log",
						["sourceName"] = "",
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["use_sourceName"] = false,
						["subeventPrefix"] = "SPELL",
						["sourceUnit"] = "player",
						["spellName"] = "Eye of Gul'dan",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 13,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
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
			["backdropInFront"] = false,
			["text"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["zoom"] = 0,
			["rotateText"] = "NONE",
			["version"] = 1,
			["timer"] = true,
			["height"] = 24,
			["timerFlags"] = "OUTLINE",
			["spark"] = true,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkRotation"] = 0,
			["stacksFont"] = "Expressway",
			["width"] = 150,
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0.10196078431373, -- [1]
				0.10196078431373, -- [2]
				0.10196078431373, -- [3]
				0.7984032034874, -- [4]
			},
			["border"] = true,
			["borderEdge"] = "1 Pixel",
			["id"] = "Bar/P2",
			["borderSize"] = 2,
			["authorOptions"] = {
			},
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%p",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 30,
			["borderBackdrop"] = "None",
			["textFlags"] = "OUTLINE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 20,
			["semver"] = "1.0.0",
			["sparkHidden"] = "NEVER",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["uid"] = "S(tcbxpEhL)",
			["textSize"] = 14,
		},
		["LB Active: Below Pandemic - Text"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 22,
			["color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["selfPoint"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["internalVersion"] = 11,
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = false,
						["rem"] = "4.5",
						["stack_info"] = "count",
						["ownOnly"] = true,
						["use_unit"] = true,
						["use_totemName"] = true,
						["use_spell"] = true,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["remaining"] = "5",
						["names"] = {
							"Lifebloom", -- [1]
						},
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED",
						["group_count"] = "0",
						["remaining_operator"] = "<=",
						["unit"] = "group",
						["group_countOperator"] = ">",
						["spell"] = "Efflorescence",
						["use_remaining"] = true,
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura",
						["unevent"] = "auto",
						["event"] = "Totem",
						["totemName"] = 145205,
						["custom_hide"] = "custom",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["name_info"] = "aura",
						["duration"] = "30",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayIcon"] = 134222,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOM",
			["version"] = 5,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 54,
			["desaturate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_encounterid"] = false,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["fortyman"] = true,
						["arena"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["twenty"] = true,
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
				["use_vehicle"] = false,
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
				["use_ingroup"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_size"] = false,
				["use_vehicleUi"] = false,
			},
			["url"] = "https://wago.io/SJzs3stm-/5",
			["xOffset"] = 0,
			["text1Containment"] = "OUTSIDE",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.91764705882353, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["width"] = 54,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["progressPrecision"] = 0,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["text1"] = ">%p<",
			["text2"] = "%p",
			["text1Enabled"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 3,
			["id"] = "LB Active: Below Pandemic - Text",
			["text1Font"] = "Expressway",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Lifebloom-Watch",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextEnabled"] = true,
			["conditions"] = {
			},
			["cooldown"] = false,
			["glow"] = false,
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
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = -269.146377563477,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderOffset"] = 5,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 705.039672851563,
			["url"] = "https://wago.io/VkuAT-pHb",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 11,
			["borderEdge"] = "None",
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
			["id"] = "Resto Druid Stat Weights 2.1",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 11,
			["version"] = 1,
			["expanded"] = false,
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
					["multi"] = {
					},
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
			["regionType"] = "group",
		},
		["Obliteration Blast (Add)"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 6.0001831054688,
			["stacksFlags"] = "None",
			["yOffset"] = -87.999847412109,
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
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.88627450980392, -- [1]
				0, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["difficulty"] = {
					["single"] = "mythic",
				},
				["use_encounterid"] = true,
				["use_difficulty"] = true,
				["encounterid"] = "2135",
				["spec"] = {
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
			["stacks"] = false,
			["texture"] = "Blizzard",
			["textFont"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["auto"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "2103082",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "Mythrax Mythic Stuff",
			["sparkRotationMode"] = "AUTO",
			["displayTextLeft"] = "ADD BLAST",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 273538,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
						["type"] = "status",
						["unevent"] = "auto",
						["use_specific_unit"] = true,
						["event"] = "Cast",
						["unit"] = "boss2",
						["subeventSuffix"] = "_CAST_START",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["duration"] = "1",
						["name"] = "Obliteration Blast",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["unit"] = "boss2",
						["use_specific_unit"] = true,
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 11,
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
			["backdropInFront"] = false,
			["text"] = true,
			["stickyDuration"] = false,
			["textSize"] = 12,
			["uid"] = "MNIZ3lpOC(B",
			["version"] = 7,
			["borderInset"] = 11,
			["height"] = 22.999975204468,
			["timerFlags"] = "None",
			["borderOffset"] = 5,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["timer"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["border"] = false,
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["borderInFront"] = true,
			["sparkWidth"] = 10,
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["displayTextRight"] = "%p",
			["sparkOffsetX"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["spark"] = false,
			["id"] = "Obliteration Blast (Add)",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 235.99984741211,
			["url"] = "https://wago.io/HJGLGXx9X/7",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["stacksFont"] = "Friz Quadrata TT",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
		},
		["Cast Finished/P2"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["parent"] = "Sea Swell (Mythic) Bar",
			["displayText"] = "",
			["config"] = {
			},
			["yOffset"] = 0,
			["regionType"] = "text",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["spellId"] = "285118",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["use_sourceName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_SUCCESS",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["wordWrap"] = "WordWrap",
			["internalVersion"] = 13,
			["justify"] = "LEFT",
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
			["id"] = "Cast Finished/P2",
			["semver"] = "1.0.0",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["url"] = "https://wago.io/V3olCoZhS/1",
			["uid"] = "o9xOn4ABsOg",
			["version"] = 1,
			["selfPoint"] = "BOTTOM",
			["font"] = "Expressway",
			["conditions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_encounterid"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2280",
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["Swap Soaker (Dark Revelation + Soak overlap)"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Dark Revelation + Soaking overlap (Spammer)", -- [1]
				"Soak Overlap (Receiver)", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -534.472900390625,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["regionType"] = "group",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["yOffset"] = 23.737060546875,
			["url"] = "https://wago.io/ryK0n-c47/9",
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderOffset"] = 5,
			["internalVersion"] = 11,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Swap Soaker (Dark Revelation + Soak overlap)",
			["uid"] = "bpTsfJZaK9r",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["config"] = {
			},
			["version"] = 9,
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
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
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
				["pvptalent"] = {
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
			["authorOptions"] = {
			},
		},
	},
	
}