local S = unpack(SanUI)

S.weakAuras = {
		
	["displays"] = {
		["SanUI_ClearcastingFeral"] = {
			["parent"] = "SanUI_Buffs",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"16870", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							16870, -- [1]
						},
						["names"] = {
							"Clearcasting", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["custom_hide"] = "timed",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
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
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["ignoreOptionsEventErrors"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_ClearcastingFeral",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "JNpbew2Ie(u",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["SanUI_Rake"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 50,
			["yOffset"] = -11.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
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
			["internalVersion"] = 36,
			["sparkHidden"] = "NEVER",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.607843137254902, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["stickyDuration"] = false,
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
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["sparkOffsetX"] = 0,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["sparkRotationMode"] = "AUTO",
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["spark"] = false,
			["id"] = "SanUI_Rake",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 120,
			["useAdjustededMax"] = false,
			["uid"] = "8P8KOaQDLvL",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1822", -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["event"] = "Health",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							1822, -- [1]
						},
						["unit"] = "target",
						["names"] = {
							"Rake", -- [1]
						},
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "SanUI_FeralBleeds",
		},
		["SanUI_CenarionWard"] = {
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
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 102351,
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "Cenarion Ward",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["charges"] = "2",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 102351,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
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
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
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
			["regionType"] = "icon",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_CenarionWard",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "fmKNF)sCdX7",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
		},
		["SanUI_RipResto"] = {
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
						["auranames"] = {
							"1079", -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["unit"] = "target",
						["spellIds"] = {
							1079, -- [1]
						},
						["type"] = "aura2",
						["names"] = {
							"Rip", -- [1]
						},
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
					["single"] = "DRUID",
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
						nil, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["use_class"] = true,
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_TargetDebuffs",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["ignoreOptionsEventErrors"] = true,
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_RipResto",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 39.9999885559082,
			["frameStrata"] = 1,
			["uid"] = "7ev2u3wl0TH",
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["SanUI_Rip"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 50,
			["yOffset"] = -44.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
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
			["internalVersion"] = 36,
			["sparkHidden"] = "NEVER",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.619607843137255, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"1079", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["event"] = "Health",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							1079, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Rip", -- [1]
						},
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["customTextUpdate"] = "update",
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
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
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["useAdjustededMax"] = false,
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["spark"] = false,
			["id"] = "SanUI_Rip",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 120,
			["uid"] = "u)NJe(Wk5Nm",
			["config"] = {
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "SanUI_FeralBleeds",
			["icon"] = true,
		},
		["SanUI_ChosenOfElune"] = {
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
						["auranames"] = {
							"102560", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							102560, -- [1]
						},
						["names"] = {
							"Incarnation: Chosen of Elune", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["custom_hide"] = "timed",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["difficulty"] = {
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
					},
				},
				["use_spec"] = true,
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_ChosenOfElune",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "(bi3r6DoCXI",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["SanUI_SunfireC"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["parent"] = "SanUI_ChickenDots",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
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
			["internalVersion"] = 36,
			["sparkHidden"] = "NEVER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["barColor"] = {
				0.16078431372549, -- [1]
				0.16078431372549, -- [2]
				0.164705882352941, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["sparkOffsetX"] = 0,
			["xOffset"] = -46,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 24,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"93402", -- [1]
						},
						["ownOnly"] = true,
						["use_specific_unit"] = false,
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "target",
						["event"] = "Health",
						["useGroup_count"] = false,
						["names"] = {
							"Sunfire", -- [1]
						},
						["useName"] = true,
						["spellIds"] = {
							93402, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["matchesShowOn"] = "showOnActive",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "RIGHT",
			["authorOptions"] = {
			},
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
			["desaturate"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["texture"] = "Tukui_Blank_Texture",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["auto"] = true,
			["id"] = "SanUI_SunfireC",
			["zoom"] = 0.3,
			["alpha"] = 1,
			["width"] = 98,
			["config"] = {
			},
			["uid"] = "YCxLEp9aVbA",
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
								0.1333333333333333, -- [2]
								0.2509803921568627, -- [3]
								1, -- [4]
							},
							["property"] = "sub.3.text_color",
						}, -- [1]
					},
				}, -- [1]
			},
			["icon"] = true,
			["customTextUpdate"] = "update",
		},
		["SanUI_SolarCount"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/lle0AHxzR/4",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "charges",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["spellCount"] = "0",
						["use_track"] = true,
						["use_charges"] = false,
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_spellCount"] = true,
						["spellName"] = 190984,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "Wrath",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["spellCount_operator"] = ">",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
						["track"] = "charges",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_text_format_1.charges_format"] = "none",
					["text_font"] = "2002",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_visible"] = true,
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_1.s_format"] = "none",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["semver"] = "1.1.1",
			["cooldownTextDisabled"] = false,
			["regionType"] = "icon",
			["parent"] = "SanUI_ChickenDots",
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = -22,
			["ignoreOptionsEventErrors"] = true,
			["config"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "SanUI_SolarCount",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "c2H7RTOG4lQ",
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
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["SanUI_FlourishOffCD"] = {
			["parent"] = "SanUI_Urgent",
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
						["names"] = {
						},
						["spellName"] = 197721,
						["charges_operator"] = ">=",
						["charges"] = "2",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "Flourish",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 197721,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 4,
					["multi"] = {
						[4] = true,
					},
				},
				["role"] = {
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
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
						["DRUID"] = true,
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
			["regionType"] = "icon",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_FlourishOffCD",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "ND5(KQn)pLn",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_Efflo"] = {
			["xOffset"] = 0,
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
						["custom_hide"] = "timed",
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["event"] = "Totem",
						["totemType"] = 1,
						["names"] = {
							"Power of the Archdruid", -- [1]
						},
						["use_inverse"] = true,
						["spellIds"] = {
							189870, -- [1]
						},
						["use_totemName"] = true,
						["totemName"] = 145205,
						["use_remaining"] = false,
						["unevent"] = "auto",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["use_combat"] = true,
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["regionType"] = "icon",
			["displayIcon"] = 134222,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "shrink",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "SanUI_Urgent",
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["config"] = {
			},
			["id"] = "SanUI_Efflo",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "wCTDtzVKi8i",
			["inverse"] = true,
			["stickyDuration"] = false,
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
		["SanUI_BloodTalons"] = {
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
						["auranames"] = {
							"155672", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["use_stealable"] = true,
						["spellIds"] = {
							155672, -- [1]
						},
						["names"] = {
							"Bloodtalons", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["useName"] = true,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["faction"] = {
					["multi"] = {
					},
				},
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
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
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
			["ignoreOptionsEventErrors"] = true,
			["authorOptions"] = {
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_BloodTalons",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["uid"] = "4RKYdRM0XN5",
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_Buffs",
		},
		["SanUI_Abundance2"] = {
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
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:SanUI_Abundance2",
					["glow_action"] = "show",
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
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
						["useStacks"] = true,
						["auranames"] = {
							"207640", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Abundance", -- [1]
						},
						["useCount"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["stacksOperator"] = ">=",
						["event"] = "Health",
						["unit"] = "player",
						["count"] = "5",
						["countOperator"] = ">=",
						["spellIds"] = {
							207640, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["use_tooltip"] = false,
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["stacks"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
				["pvptalent"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["icon"] = true,
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["parent"] = "SanUI_Buffs",
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_Abundance2",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "rlhU0zFVM3v",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["SanUI_Abundance"] = {
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
					["do_custom"] = false,
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
						["useStacks"] = true,
						["auranames"] = {
							"207640", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Abundance", -- [1]
						},
						["useCount"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["stacksOperator"] = "<",
						["countOperator"] = "<",
						["event"] = "Health",
						["count"] = "5",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
							207640, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["use_tooltip"] = false,
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["stacks"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
			["regionType"] = "icon",
			["icon"] = true,
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_Abundance",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "4d2gt6DbO5V",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_Buffs",
		},
		["SanUI_LunarCount"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/lle0AHxzR/4",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "charges",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["spellCount"] = "0",
						["use_track"] = true,
						["use_charges"] = false,
						["type"] = "status",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_spellCount"] = true,
						["spellName"] = 194153,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "Starfire",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["spellCount_operator"] = ">",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
						["track"] = "charges",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 4,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_text_format_1.charges_format"] = "none",
					["text_font"] = "2002",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_visible"] = true,
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_text_format_1.s_format"] = "none",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_class"] = true,
				["use_spec"] = true,
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["semver"] = "1.1.1",
			["cooldownTextDisabled"] = false,
			["regionType"] = "icon",
			["parent"] = "SanUI_ChickenDots",
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
			["xOffset"] = 22,
			["ignoreOptionsEventErrors"] = true,
			["config"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["tocversion"] = 90002,
			["id"] = "SanUI_LunarCount",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "1g)BjEmiofg",
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
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["SanUI_Urgent"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"SanUI_Efflo", -- [1]
				"SanUI_Swiftmend2Charges", -- [2]
				"SanUI_CenarionWard", -- [3]
				"SanUI_FlourishOffCD", -- [4]
				"SanUI_TFoffCD", -- [5]
				"SanUI_BerserkOffCD", -- [6]
				"SanUI_CelestialAlignmentOffCD", -- [7]
				"SanUI_FuryOfEluneOffCD", -- [8]
				"SanUI_FoNOffCD", -- [9]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -252.586791992188,
			["yOffset"] = 151.039916992188,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 6,
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
			["columnSpace"] = 1,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
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
			["internalVersion"] = 36,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fullCircle"] = true,
			["animate"] = false,
			["gridType"] = "RD",
			["scale"] = 1,
			["rowSpace"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["authorOptions"] = {
			},
			["arcLength"] = 360,
			["ignoreOptionsEventErrors"] = true,
			["config"] = {
			},
			["borderOffset"] = 16,
			["limit"] = 5,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_Urgent",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["width"] = 40.0000610351563,
			["borderInset"] = 0,
			["uid"] = "pSurIV(yV3P",
			["constantFactor"] = "RADIUS",
			["stagger"] = 0,
			["conditions"] = {
			},
			["useLimit"] = false,
			["selfPoint"] = "TOP",
		},
		["SanUI_FeralSnapshotLogic"] = {
			["user_y"] = 0,
			["user_x"] = -0.0200000107288361,
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sameTexture"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_custom"] = false,
				},
				["init"] = {
				},
			},
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
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
				["talent2"] = {
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
						[2] = true,
					},
				},
				["use_zone"] = false,
				["use_class"] = true,
				["role"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "AruJATrdD0A",
			["displayIcon"] = "Interface\\Icons\\",
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["parent"] = "SanUI_FeralBleedSnapshots",
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["unit"] = "player",
						["use_unit"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED,PLAYER_REGEN_ENABLED,PLAYER_ENTERING_WORLD,PLAYER_ALIVE",
						["custom"] = "function (event, _, param, _, source, ...)\n    Rip_sDamage = Rip_sDamage or {}\n    Rake_sDamage = Rake_sDamage or {}\n    Thrash_sDamage = Thrash_sDamage or {}\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" and source == UnitGUID(\"player\") then\n        local _, _, _, destination, _, _, _, spell = ...\n        \n        -- snapshot on spellcast\n        if spell == 1079 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Rip_sDamage_cast = WA_stats_RipTick\n        elseif spell == 1822 and (param == \"SPELL_CAST_SUCCESS\" or param == \"SPELL_DAMAGE\" or param == \"SPELL_MISSED\") then\n            WA_calcStats_feral()\n            Rake_sDamage_cast = WA_stats_RakeTick\n        elseif spell == 106830 and param == \"SPELL_CAST_SUCCESS\" then\n            WA_calcStats_feral()\n            Thrash_sDamage_cast = WA_stats_ThrashTick\n        end\n        \n        -- but only record the snapshot if it successfully applied\n        if spell == 1079 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rip_sDamage[destination] = Rip_sDamage_cast\n        elseif spell == 155722 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Rake_sDamage[destination] = Rake_sDamage_cast\n        elseif spell == 106830 and (param == \"SPELL_AURA_APPLIED\" or param == \"SPELL_AURA_REFRESH\") then\n            Thrash_sDamage[destination] = Thrash_sDamage_cast\n        end\n        \n        -- clean up out of combat\n    elseif (not UnitAffectingCombat(\"player\")) and (not IsEncounterInProgress()) then\n        Rip_sDamage = {}\n        Rake_sDamage = {}\n        Thrash_sDamage = {}\n    end\nend",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["check"] = "event",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["height"] = 1.00008153915405,
			["rotate"] = true,
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["mirror"] = false,
			["crop_y"] = 0,
			["foregroundColor"] = {
				1, -- [1]
				0.0549019607843137, -- [2]
				0.0549019607843137, -- [3]
				1, -- [4]
			},
			["backgroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White_Border",
			["crop_x"] = 0.459999978542328,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["ignoreOptionsEventErrors"] = true,
			["stacksContainment"] = "INSIDE",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["icon"] = true,
			["id"] = "SanUI_FeralSnapshotLogic",
			["width"] = 1.00002479553223,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
			["backgroundColor"] = {
				0.101960784313726, -- [1]
				0.101960784313726, -- [2]
				0.101960784313726, -- [3]
				1, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
		},
		["SanUI_SolarEclipse"] = {
			["authorOptions"] = {
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
						["auranames"] = {
							"326053", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Clearcasting", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["spellIds"] = {
							16870, -- [1]
						},
						["type"] = "aura2",
						["useGroup_count"] = false,
						["combineMatches"] = "showLowest",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
			["regionType"] = "icon",
			["displayIcon"] = 535045,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["xOffset"] = -22,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = false,
			["config"] = {
			},
			["id"] = "SanUI_SolarEclipse",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["uid"] = "iRDDIEpsEjq",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_ChickenDots",
		},
		["SanUI_TigersFury"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["customText"] = "return \"\"",
			["yOffset"] = -44.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
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
			["internalVersion"] = 36,
			["id"] = "SanUI_TigersFury",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.552941176470588, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["backdropColor"] = {
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0.3,
			["spark"] = false,
			["auto"] = true,
			["sparkHidden"] = "NEVER",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 120,
			["icon"] = true,
			["uid"] = "baXr6UmA4D(",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"Tiger's Fury", -- [1]
						},
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["type"] = "status",
						["use_specific_unit"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Cooldown Progress (Spell)",
						["unit"] = "player",
						["realSpellName"] = "Tiger's Fury",
						["use_spellName"] = true,
						["spellIds"] = {
							5217, -- [1]
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellName"] = 5217,
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["spellName"] = 5217,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "SanUI_FeralRota",
		},
		["SanUI_FoNOffCD"] = {
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
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["charges"] = "2",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 205636,
						["event"] = "Cooldown Progress (Spell)",
						["use_charges"] = false,
						["realSpellName"] = "Force of Nature",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["unevent"] = "auto",
						["type"] = "status",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 205636,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
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
			["regionType"] = "icon",
			["xOffset"] = 0,
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "slidetop",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "spin",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_FoNOffCD",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "b(cDLehKHQo",
			["inverse"] = false,
			["parent"] = "SanUI_Urgent",
			["conditions"] = {
			},
			["cooldown"] = false,
			["desaturate"] = false,
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
				["talent"] = {
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
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["difficulty"] = {
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
				["race"] = {
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
			["shadowXOffset"] = 1,
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
						["useGroup_count"] = false,
						["auranames"] = {
							"Rake", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_tooltip"] = false,
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
						["use_spellId"] = true,
						["type"] = "aura2",
						["custom_hide"] = "custom",
						["custom_type"] = "status",
						["name_operator"] = "==",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Rake",
						["unevent"] = "auto",
						["event"] = "Chat Message",
						["customStacks"] = "\n\n",
						["customDuration"] = "",
						["customName"] = "",
						["custom"] = "function()\n    if WA_rake then return true end\nend",
						["debuffType"] = "HARMFUL",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["unit"] = "target",
						["names"] = {
							"Rake", -- [1]
						},
					},
					["untrigger"] = {
						["custom"] = "function()\n    if not WA_rake then return true end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text"] = true,
			["stickyDuration"] = false,
			["height"] = 14.3158273696899,
			["timerFlags"] = "None",
			["wordWrap"] = "WordWrap",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["displayText"] = "%c",
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
			["border"] = false,
			["borderEdge"] = "None",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["textSize"] = 12,
			["icon_side"] = "RIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "gJc(ujjYpNk",
			["ignoreOptionsEventErrors"] = true,
			["width"] = 12.5790948867798,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["timer"] = true,
			["id"] = "SanUI_RakeRatio",
			["timerSize"] = 12,
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["justify"] = "CENTER",
			["shadowYOffset"] = -1,
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["icon"] = false,
		},
		["SanUI_TargetDebuffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"SanUI_Thrash", -- [1]
				"SanUI_Moonfire", -- [2]
				"SanUI_Sunfire", -- [3]
				"SanUI_RakeResto", -- [4]
				"SanUI_RipResto", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 199.679946018324,
			["yOffset"] = -113.493018440225,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 8,
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["columnSpace"] = 1,
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["height"] = 39.9999389648438,
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
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
			["arcLength"] = 360,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fullCircle"] = true,
			["animate"] = false,
			["gridType"] = "RD",
			["scale"] = 1,
			["rowSpace"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["authorOptions"] = {
			},
			["useLimit"] = false,
			["ignoreOptionsEventErrors"] = true,
			["config"] = {
			},
			["borderOffset"] = 16,
			["sort"] = "none",
			["width"] = 232,
			["id"] = "SanUI_TargetDebuffs",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 0,
			["uid"] = "hSqFre2OAN7",
			["constantFactor"] = "RADIUS",
			["rotation"] = 0,
			["conditions"] = {
			},
			["selfPoint"] = "LEFT",
			["radius"] = 200,
		},
		["SanUI_MoonfireC"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 46,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["sparkDesaturate"] = false,
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
						["auranames"] = {
							"8921", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_specific_unit"] = false,
						["event"] = "Health",
						["useGroup_count"] = false,
						["names"] = {
							"Moonfire", -- [1]
						},
						["useName"] = true,
						["spellIds"] = {
							8921, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["backdropInFront"] = false,
			["sparkOffsetX"] = 0,
			["barColor"] = {
				0.16078431372549, -- [1]
				0.16078431372549, -- [2]
				0.164705882352941, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["stickyDuration"] = false,
			["parent"] = "SanUI_ChickenDots",
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 24,
			["icon"] = true,
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
				["spec"] = {
					["single"] = 1,
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
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "LEFT",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["useAdjustededMax"] = false,
			["icon_side"] = "RIGHT",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["texture"] = "Tukui_Blank_Texture",
			["auto"] = true,
			["zoom"] = 0.3,
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["id"] = "SanUI_MoonfireC",
			["ignoreOptionsEventErrors"] = true,
			["frameStrata"] = 1,
			["width"] = 98,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "pMqXf)TF7gb",
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
								0.1529411764705883, -- [2]
								0.1568627450980392, -- [3]
								1, -- [4]
							},
							["property"] = "sub.3.text_color",
						}, -- [1]
					},
				}, -- [1]
			},
			["sparkRotationMode"] = "AUTO",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
		},
		["SanUI_Innervate"] = {
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
						["auranames"] = {
							"29166", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							29166, -- [1]
						},
						["names"] = {
							"Innervate", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["custom_hide"] = "timed",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 4,
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["desaturate"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_Innervate",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "O0NaCumQ6dY",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["SanUI_SavageRoar"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 0,
			["customText"] = "return \"\"",
			["yOffset"] = -11.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
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
			["internalVersion"] = 36,
			["sparkHidden"] = "NEVER",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.549019607843137, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"52610", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							52610, -- [1]
						},
						["use_specific_unit"] = false,
						["names"] = {
							"Savage Roar", -- [1]
						},
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["useAdjustededMax"] = false,
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["spark"] = false,
			["id"] = "SanUI_SavageRoar",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 120,
			["uid"] = "hyyTjnO8Dxt",
			["config"] = {
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["parent"] = "SanUI_FeralRota",
			["icon"] = true,
		},
		["SanUI_Swiftmend2Charges"] = {
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
						["use_charges"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["spellName"] = 18562,
						["charges_operator"] = ">=",
						["charges"] = "2",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Swiftmend",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
						["spellName"] = 18562,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["role"] = {
					["multi"] = {
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
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_Swiftmend2Charges",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "wp10u3D8cTP",
			["inverse"] = false,
			["parent"] = "SanUI_Urgent",
			["conditions"] = {
			},
			["cooldown"] = false,
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
			["font"] = "Micron55",
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
				["talent2"] = {
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
						[2] = true,
					},
				},
				["use_zone"] = false,
				["use_class"] = true,
				["role"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
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
			["shadowXOffset"] = 1,
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
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["type"] = "custom",
						["custom_hide"] = "custom",
						["custom_type"] = "event",
						["name_operator"] = "==",
						["event"] = "Chat Message",
						["countOperator"] = "~=",
						["count"] = "0",
						["events"] = "PLAYER_ENTERING_WORLD,ACTIVE_TALENT_GROUP_CHANGED,PLAYER_REGEN_DISABLED",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["custom"] = "function()\n    \n    local tf = GetSpellInfo(5217)\n    local sr = GetSpellInfo(52610)\n    local bt = GetSpellInfo(155672)\n    local inc = GetSpellInfo(102543)\n    local prowl = GetSpellInfo(5215)\n    local sm = GetSpellInfo(58984)\n    \n    function WA_calcStats_feral()\n        local DamageMult = 1 --select(7, UnitDamage(\"player\"))\n        \n        local CP = GetComboPoints(\"player\", \"target\")\n        if CP == 0 then CP = 5 end\n        \n        if UnitBuff(\"player\", tf) then\n            DamageMult = DamageMult * 1.15\n        end\n        \n        if UnitBuff(\"player\", sr) then\n            DamageMult = DamageMult * 1.4\n        end\n        \n        WA_stats_BTactive = WA_stats_BTactive or  0\n        if UnitBuff(\"player\", bt) then\n            WA_stats_BTactive = GetTime()\n            DamageMult = DamageMult * 1.3\n        elseif GetTime() - WA_stats_BTactive < .2 then\n            DamageMult = DamageMult * 1.3\n        end\n        \n        local RakeMult = 1\n        WA_stats_prowlactive = WA_stats_prowlactive or  0\n        if UnitBuff(\"player\", inc) then\n            RakeMult = 2\n        elseif UnitBuff(\"player\", prowl) or UnitBuff(\"player\", sm) then\n            WA_stats_prowlactive = GetTime()\n            RakeMult = 2\n        elseif GetTime() - WA_stats_prowlactive < .2 then\n            RakeMult = 2\n        end\n        \n        WA_stats_RipTick = CP*DamageMult\n        WA_stats_RipTick5 = 5*DamageMult\n        WA_stats_RakeTick = DamageMult*RakeMult\n        WA_stats_ThrashTick = DamageMult\n    end\n    \n    return true\nend",
						["check"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["anchorFrameType"] = "SCREEN",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fontSize"] = 8,
			["wordWrap"] = "WordWrap",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["border"] = true,
			["borderEdge"] = "fer09",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["borderSize"] = 11,
			["displayTextLeft"] = "Dream of Cenarius [%s]",
			["icon_side"] = "LEFT",
			["shadowYOffset"] = -1,
			["uid"] = "ynRUwBTzdnt",
			["ignoreOptionsEventErrors"] = true,
			["displayTextRight"] = "%p",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 8,
			["justify"] = "CENTER",
			["id"] = "SanUI_FeralStatLogic",
			["stacksFont"] = "Emblem",
			["frameStrata"] = 5,
			["width"] = 10.8948659896851,
			["height"] = 8.42102813720703,
			["parent"] = "SanUI_FeralBleedSnapshots",
			["inverse"] = false,
			["stacksFlags"] = "None",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["backgroundColor"] = {
				0.203921568627451, -- [1]
				0.203921568627451, -- [2]
				0.203921568627451, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
		},
		["SanUI_GuardianOfUrsoc"] = {
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"102558", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							102560, -- [1]
						},
						["names"] = {
							"Incarnation: Chosen of Elune", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 3,
					["multi"] = {
						[4] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
				["use_class"] = true,
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_GuardianOfUrsoc",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "M)1tV1kxC4v",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["desaturate"] = false,
		},
		["SanUI_SurvivalInstincts"] = {
			["parent"] = "SanUI_Buffs",
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
						["auranames"] = {
							"61336", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Survival Instincts", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							61336, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 4,
					["multi"] = {
						[4] = true,
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
				["role"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["icon"] = true,
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_SurvivalInstincts",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "wy1lbqGy8GU",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["SanUI_CelestialAlignment"] = {
			["authorOptions"] = {
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"194223", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
						["useGroup_count"] = false,
						["spellIds"] = {
							117679, -- [1]
						},
						["names"] = {
							"Incarnation", -- [1]
						},
						["custom_hide"] = "timed",
						["combineMatches"] = "showLowest",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 42,
			["load"] = {
				["talent2"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["stickyDuration"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_CelestialAlignment",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 42,
			["uid"] = "0Gez8LT0XB4",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
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
				["talent"] = {
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
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["use_zone"] = false,
				["difficulty"] = {
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
				["race"] = {
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
			["shadowXOffset"] = 1,
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
						["auranames"] = {
							"Rip", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Rip", -- [1]
						},
						["use_tooltip"] = false,
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["custom_hide"] = "custom",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["custom"] = "function()\n    return true\nend",
						["useName"] = true,
						["use_debuffClass"] = false,
						["custom_type"] = "status",
						["unit"] = "target",
						["type"] = "aura2",
						["event"] = "Chat Message",
						["customStacks"] = "\n\n",
						["customDuration"] = "",
						["customName"] = "",
						["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["custom"] = "function()\n    return false\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["wordWrap"] = "WordWrap",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["stacksFlags"] = "None",
			["stacksFont"] = "Friz Quadrata TT",
			["icon"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["textSize"] = 12,
			["icon_side"] = "RIGHT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "G6BkkLkPYmc",
			["ignoreOptionsEventErrors"] = true,
			["anchorFrameType"] = "SCREEN",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "CENTER",
			["height"] = 14.3158273696899,
			["id"] = "SanUI_RipRatio",
			["timerSize"] = 12,
			["frameStrata"] = 5,
			["width"] = 12.5790948867798,
			["displayTextRight"] = " ",
			["shadowYOffset"] = -1,
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
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
			["authorOptions"] = {
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["xOffset"] = 83,
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
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
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
			["ignoreOptionsEventErrors"] = true,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 36,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_FeralRota",
			["yOffset"] = -205,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["uid"] = "H04yQp16Dlo",
			["config"] = {
			},
			["scale"] = 1,
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["pvptalent"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
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
		},
		["SanUI_ThrashCat"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 50,
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
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
			["internalVersion"] = 36,
			["id"] = "SanUI_ThrashCat",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.588235294117647, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["authorOptions"] = {
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkOffsetX"] = 0,
			["sparkRotationMode"] = "AUTO",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["config"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["zoom"] = 0.3,
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["texture"] = "Tukui_Blank_Texture",
			["sparkHidden"] = "NEVER",
			["uid"] = "Dz(kR46v9Y8",
			["alpha"] = 1,
			["width"] = 120,
			["icon"] = true,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"106830", -- [1]
						},
						["ownOnly"] = true,
						["unit"] = "target",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = false,
						["event"] = "Health",
						["matchesShowOn"] = "showOnActive",
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							106830, -- [1]
						},
						["names"] = {
							"Thrash", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "SanUI_FeralBleeds",
		},
		["SanUI_SotF"] = {
			["authorOptions"] = {
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
						["auranames"] = {
							"158478", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Soul of the Forest", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							158478, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 4,
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
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_SotF",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "13ITocYsjV6",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
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
			["xOffset"] = 0,
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
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["ignoreOptionsEventErrors"] = true,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 36,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_BearMitigation",
			["yOffset"] = -0.5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "KInY5eVVAKx",
			["config"] = {
			},
			["borderInset"] = 11,
			["authorOptions"] = {
			},
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
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
			["authorOptions"] = {
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["xOffset"] = -133,
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
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
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
			["ignoreOptionsEventErrors"] = true,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 36,
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "SanUI_FeralBleeds",
			["yOffset"] = -205,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["scale"] = 1,
			["uid"] = "(I5tZO9Hg6U",
			["config"] = {
			},
			["borderInset"] = 11,
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
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["pvptalent"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
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
		},
		["SanUI_Incarnation"] = {
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"117679", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Incarnation", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							117679, -- [1]
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 4,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["ignoreOptionsEventErrors"] = true,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "SanUI_Incarnation",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 40,
			["uid"] = "c)oxyUkDmd)",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["SanUI_RakeResto"] = {
			["parent"] = "SanUI_TargetDebuffs",
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
						["auranames"] = {
							"1822", -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["unit"] = "target",
						["spellIds"] = {
							1822, -- [1]
						},
						["type"] = "aura2",
						["names"] = {
							"Rake", -- [1]
						},
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
					["single"] = "DRUID",
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
						nil, -- [2]
						true, -- [3]
						true, -- [4]
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
				["use_spec"] = false,
				["difficulty"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["icon"] = true,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_RakeResto",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 39.9999885559082,
			["alpha"] = 1,
			["uid"] = "29yh3rm938K",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["stickyDuration"] = false,
		},
		["SanUI_PredatorySwiftness"] = {
			["authorOptions"] = {
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
						["auranames"] = {
							"16974", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Predatory Swiftness", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							16974, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[20] = true,
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[4] = true,
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
				["class"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["parent"] = "SanUI_Buffs",
			["ignoreOptionsEventErrors"] = true,
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_PredatorySwiftness",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "Y8FhaKituda",
			["inverse"] = false,
			["zoom"] = 0.3,
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
		["SanUI_BerserkOffCD"] = {
			["authorOptions"] = {
			},
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
						["names"] = {
						},
						["spellName"] = 106951,
						["charges_operator"] = ">=",
						["charges"] = "2",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "Berserk",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 106951,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 2,
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
				["use_spec"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
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
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["parent"] = "SanUI_Urgent",
			["ignoreOptionsEventErrors"] = true,
			["selfPoint"] = "CENTER",
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_BerserkOffCD",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "zN))L6jcMOQ",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["icon"] = true,
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
			["xOffset"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["ignoreOptionsEventErrors"] = true,
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
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["yOffset"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "SanUI_FeralBleedSnapshots",
			["regionType"] = "group",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "0Rlk3VCpkY(",
			["borderInset"] = 11,
			["selfPoint"] = "BOTTOMLEFT",
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
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
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
				["difficulty"] = {
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
		["SanUI_Clearcasting"] = {
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"16870", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Clearcasting", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							16870, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["use_class"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "DRUID",
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "SanUI_Buffs",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_Clearcasting",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "YK2KeIxzSjn",
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["SanUI_Starfall"] = {
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
						["auranames"] = {
							"191034", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							191034, -- [1]
						},
						["names"] = {
							"Starfall", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["ignoreOptionsEventErrors"] = true,
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_Starfall",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "4Mqoh1SMf4Y",
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["SanUI_ArcanicPulsar"] = {
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
						["auranames"] = {
							"287773", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_hide"] = "timed",
						["useGroup_count"] = false,
						["spellIds"] = {
							164545, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["combineMatches"] = "showLowest",
						["useName"] = true,
						["names"] = {
							"Solar Empowerment", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "    %s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = false,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
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
				["class"] = {
					["single"] = "DRUID",
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
				["use_class"] = true,
				["use_spec"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 0,
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
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
			["ignoreOptionsEventErrors"] = true,
			["authorOptions"] = {
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_ArcanicPulsar",
			["uid"] = ")5gNa)40hdy",
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "stacks",
						["op"] = ">=",
						["value"] = "8",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "SanUI_Buffs",
		},
		["SanUI_LunarEclipse"] = {
			["parent"] = "SanUI_ChickenDots",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useGroup_count"] = false,
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							16870, -- [1]
						},
						["auranames"] = {
							"48518", -- [1]
						},
						["names"] = {
							"Clearcasting", -- [1]
						},
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class_and_spec"] = {
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
				["talent2"] = {
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
				["class"] = {
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["use_class_and_spec"] = false,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["regionType"] = "icon",
			["displayIcon"] = 135753,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = 22,
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["uid"] = "WbXPoabS5Ex",
			["id"] = "SanUI_LunarEclipse",
			["width"] = 40,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
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
			["desaturate"] = false,
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
				["talent"] = {
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
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_zone"] = false,
				["use_class"] = true,
				["role"] = {
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
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
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
			["shadowXOffset"] = 1,
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
						["useGroup_count"] = false,
						["auranames"] = {
							"Thrash", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_tooltip"] = false,
						["useName"] = true,
						["buffShowOn"] = "showOnActive",
						["events"] = "SPELL_AURA_APPLIED, SPELL_AURA_REFRESHED, SPELL_AURA_REMOVED",
						["use_spellId"] = true,
						["type"] = "aura2",
						["custom_hide"] = "custom",
						["unevent"] = "auto",
						["name_operator"] = "==",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["name"] = "Thrash",
						["custom_type"] = "status",
						["event"] = "Chat Message",
						["customStacks"] = "\n\n",
						["customDuration"] = "",
						["customName"] = "",
						["custom"] = "function()\n    if WA_thrashc then return true end\nend",
						["debuffType"] = "HARMFUL",
						["check"] = "update",
						["combineMatches"] = "showLowest",
						["unit"] = "target",
						["names"] = {
							"Thrash", -- [1]
						},
					},
					["untrigger"] = {
						["custom"] = "function()\n    if not WA_thrashc then return true end\nend",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["text"] = true,
			["stickyDuration"] = false,
			["timer"] = true,
			["timerFlags"] = "None",
			["wordWrap"] = "WordWrap",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 14,
			["height"] = 14.3157987594605,
			["backgroundColor"] = {
				0.67843137254902, -- [1]
				0.67843137254902, -- [2]
				0.67843137254902, -- [3]
				1, -- [4]
			},
			["uid"] = "OWvQ)z5L6eB",
			["border"] = false,
			["borderEdge"] = "None",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["borderSize"] = 16,
			["shadowYOffset"] = -1,
			["icon_side"] = "RIGHT",
			["borderOffset"] = 5,
			["stacksFlags"] = "None",
			["ignoreOptionsEventErrors"] = true,
			["width"] = 12.5790948867798,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = " ",
			["timerSize"] = 12,
			["id"] = "SanUI_ThrashCatRatio",
			["justify"] = "CENTER",
			["frameStrata"] = 5,
			["anchorFrameType"] = "SCREEN",
			["displayTextLeft"] = " ",
			["icon"] = false,
			["inverse"] = false,
			["authorOptions"] = {
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["config"] = {
			},
			["parent"] = "SanUI_FeralBleedSnapshots",
		},
		["SanUI_Barkskin"] = {
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
						["auranames"] = {
							"22812", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							22812, -- [1]
						},
						["names"] = {
							"Barkskin", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["custom_hide"] = "timed",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
			["regionType"] = "icon",
			["xOffset"] = 0,
			["parent"] = "SanUI_Buffs",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["desaturate"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_Barkskin",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "ZQLAUzw7r5n",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
		["SanUI_Inc"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["customText"] = "return \"\"",
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
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
			["internalVersion"] = 36,
			["sparkHidden"] = "NEVER",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.619607843137255, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"102543", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							102543, -- [1]
						},
						["use_specific_unit"] = false,
						["names"] = {
							"Incarnation: King of the Jungle", -- [1]
						},
						["combineMatches"] = "showLowest",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["customTextUpdate"] = "update",
			["width"] = 120,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["useAdjustededMax"] = false,
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["auto"] = true,
			["id"] = "SanUI_Inc",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "i6UDhEwhSA7",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["parent"] = "SanUI_FeralRota",
			["icon"] = true,
		},
		["SanUI_CombatTime"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    if aura_env.StartTime then\n        local combatTime = GetTime() - aura_env.StartTime\n        return string.format(\"%02d:%02d\", combatTime/60, combatTime%60)\n    else\n        return \"13:37\"\n    end\nend\n\n\n\n",
			["yOffset"] = -437.8949737548828,
			["anchorPoint"] = "CENTER",
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
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["height"] = 71.5789566040039,
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
					["multi"] = {
					},
				},
				["talent2"] = {
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
				["use_size"] = true,
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
					["single"] = "twenty",
					["multi"] = {
					},
				},
			},
			["fontSize"] = 72,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["ignoreOptionsEventErrors"] = true,
			["selfPoint"] = "BOTTOM",
			["justify"] = "LEFT",
			["shadowYOffset"] = -1,
			["id"] = "SanUI_CombatTime",
			["fixedWidth"] = 200,
			["frameStrata"] = 1,
			["width"] = 26.8947486877441,
			["uid"] = "xfRYP1PJ8sC",
			["config"] = {
			},
			["xOffset"] = 13.41351318359375,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
		},
		["SanUI_FuryOfEluneOffCD"] = {
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
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_charges"] = false,
						["names"] = {
						},
						["custom_hide"] = "timed",
						["charges_operator"] = ">=",
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 202770,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "Fury of Elune",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "2",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 202770,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["difficulty"] = {
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
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "SanUI_Urgent",
			["ignoreOptionsEventErrors"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "slidetop",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "spin",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0.3,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_FuryOfEluneOffCD",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "cFNRaYqD42Q",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["SanUI_Ironfur"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 17.9202880859375,
			["yOffset"] = -217,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
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
			["internalVersion"] = 36,
			["id"] = "SanUI_Ironfur",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.580392156862745, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["icon"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999923706055,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["use_debuffClass"] = false,
						["auranames"] = {
							"192081", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "player",
						["useGroup_count"] = false,
						["use_tooltip"] = false,
						["spellIds"] = {
							192081, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["combineMatches"] = "showLowest",
						["names"] = {
							"Ironfur", -- [1]
						},
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
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
				["use_class"] = true,
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["authorOptions"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["config"] = {
			},
			["sparkOffsetX"] = 0,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["useAdjustededMax"] = false,
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["spark"] = false,
			["sparkHidden"] = "NEVER",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 113.653327941895,
			["uid"] = "6yNDqRBnTq6",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "SanUI_BearMitigation",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
		},
		["SanUI_Starlord"] = {
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"202345", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Starlord", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["spellIds"] = {
							202345, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = " %s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
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
					["single"] = "DRUID",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
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
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_Starlord",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "zpbPiuS102e",
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["SanUI_Berserk"] = {
			["sparkWidth"] = 10,
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["customText"] = "return \"\"",
			["yOffset"] = -77.9999685287476,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
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
			["internalVersion"] = 36,
			["id"] = "SanUI_Berserk",
			["selfPoint"] = "CENTER",
			["backdropInFront"] = false,
			["barColor"] = {
				0.607843137254902, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subborder",
					["border_anchor"] = "bar",
					["border_offset"] = 5,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						0.5, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "None",
					["border_size"] = 16,
				}, -- [1]
				{
					["type"] = "aurabar_bar",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "2002",
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_precision"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontType"] = "None",
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_dynamic"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%n",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "ICON_CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [5]
			},
			["height"] = 23.9999370574951,
			["backdropColor"] = {
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["sparkOffsetX"] = 0,
			["config"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 30,
			["ignoreOptionsEventErrors"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["zoom"] = 0.3,
			["spark"] = false,
			["auto"] = true,
			["sparkHidden"] = "NEVER",
			["texture"] = "Tukui_Blank_Texture",
			["alpha"] = 1,
			["width"] = 120,
			["icon"] = true,
			["uid"] = "1a2Dnqi6aJO",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"106951", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["type"] = "aura2",
						["buffShowOn"] = "showOnActive",
						["spellIds"] = {
							106951, -- [1]
						},
						["unit"] = "player",
						["names"] = {
							"Berserk", -- [1]
						},
						["combineMatches"] = "showLowest",
						["use_specific_unit"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["parent"] = "SanUI_FeralRota",
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
				"SanUI_SunfireC", -- [2]
				"SanUI_LunarEclipse", -- [3]
				"SanUI_SolarEclipse", -- [4]
				"SanUI_SolarCount", -- [5]
				"SanUI_LunarCount", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["authorOptions"] = {
			},
			["border"] = false,
			["yOffset"] = -222,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["selfPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderInset"] = 11,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["ignoreOptionsEventErrors"] = true,
			["anchorFrameFrame"] = "AceGUI30Button1",
			["internalVersion"] = 36,
			["borderOffset"] = 5,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "SanUI_ChickenDots",
			["borderEdge"] = "None",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "7TEN)MUT4Ik",
			["config"] = {
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
			["regionType"] = "group",
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
				["talent2"] = {
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
		},
		["SanUI_Moonfire"] = {
			["authorOptions"] = {
			},
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
						["auranames"] = {
							"8921", -- [1]
						},
						["ownOnly"] = true,
						["names"] = {
							"Moonfire", -- [1]
						},
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HARMFUL",
						["unit"] = "target",
						["spellIds"] = {
							8921, -- [1]
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["combineMatches"] = "showLowest",
						["custom_hide"] = "timed",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
					["single"] = "DRUID",
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
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["pvptalent"] = {
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
			["regionType"] = "icon",
			["xOffset"] = 0,
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "SanUI_TargetDebuffs",
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 39.9999885559082,
			["id"] = "SanUI_Moonfire",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "N9m(SGIShkE",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["icon"] = true,
		},
		["SanUI_Pulverize"] = {
			["xOffset"] = 0,
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
						["auranames"] = {
							"80313", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["custom_hide"] = "timed",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							80313, -- [1]
						},
						["names"] = {
							"Pulverize", -- [1]
						},
						["unit"] = "player",
						["combineMatches"] = "showLowest",
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
				["class"] = {
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
				["talent2"] = {
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
						[4] = true,
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
			["regionType"] = "icon",
			["icon"] = true,
			["authorOptions"] = {
			},
			["parent"] = "SanUI_Buffs",
			["desaturate"] = false,
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_Pulverize",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 40,
			["frameStrata"] = 1,
			["uid"] = "IFVn3XksQ70",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
		},
		["SanUI_Buffs"] = {
			["grow"] = "LEFT",
			["controlledChildren"] = {
				"SanUI_Clearcasting", -- [1]
				"SanUI_ChosenOfElune", -- [2]
				"SanUI_GuardianOfUrsoc", -- [3]
				"SanUI_Starlord", -- [4]
				"SanUI_ClearcastingFeral", -- [5]
				"SanUI_Barkskin", -- [6]
				"SanUI_Pulverize", -- [7]
				"SanUI_SurvivalInstincts", -- [8]
				"SanUI_Incarnation", -- [9]
				"SanUI_Innervate", -- [10]
				"SanUI_Starfall", -- [11]
				"SanUI_Abundance", -- [12]
				"SanUI_Abundance2", -- [13]
				"SanUI_SotF", -- [14]
				"SanUI_BloodTalons", -- [15]
				"SanUI_PredatorySwiftness", -- [16]
				"SanUI_ArcanicPulsar", -- [17]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -215.893615722656,
			["yOffset"] = -128.853515625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 7,
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
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["columnSpace"] = 1,
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
			["sort"] = "none",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["rowSpace"] = 1,
			["animate"] = false,
			["gridType"] = "RD",
			["scale"] = 1,
			["useLimit"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["fullCircle"] = true,
			["stagger"] = 0,
			["ignoreOptionsEventErrors"] = true,
			["borderInset"] = 0,
			["borderOffset"] = 16,
			["config"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_Buffs",
			["gridWidth"] = 5,
			["frameStrata"] = 1,
			["width"] = 956.999969482422,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["uid"] = "K(bjwZZwKUY",
			["constantFactor"] = "RADIUS",
			["internalVersion"] = 36,
			["conditions"] = {
			},
			["arcLength"] = 360,
			["authorOptions"] = {
			},
		},
		["SanUI_Thrash"] = {
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
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"106832", -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["names"] = {
							"Thrash", -- [1]
						},
						["spellIds"] = {
							106832, -- [1]
						},
						["type"] = "aura2",
						["unit"] = "target",
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "     %s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOM",
					["text_fontSize"] = 19,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
					["single"] = "DRUID",
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
				["use_class"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["icon"] = true,
			["parent"] = "SanUI_TargetDebuffs",
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_Thrash",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 39.9999885559082,
			["frameStrata"] = 1,
			["uid"] = "2)(P64qi)hC",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["SanUI_TFoffCD"] = {
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
						["names"] = {
						},
						["spellName"] = 5217,
						["charges_operator"] = ">=",
						["charges"] = "2",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = "Tiger's Fury",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 5217,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 40,
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
					["single"] = 2,
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
				["use_spec"] = true,
				["use_combat"] = true,
				["use_class"] = true,
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
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "spin",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["ignoreOptionsEventErrors"] = true,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["width"] = 40,
			["id"] = "SanUI_TFoffCD",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "QCerj7cNLzv",
			["inverse"] = false,
			["parent"] = "SanUI_Urgent",
			["conditions"] = {
			},
			["cooldown"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["SanUI_CelestialAlignmentOffCD"] = {
			["authorOptions"] = {
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
						["use_unit"] = true,
						["unit"] = "player",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["charges_operator"] = ">=",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 194223,
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "Celestial Alignment",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["charges"] = "2",
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 194223,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["preset"] = "slidetop",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "spin",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.996078431372549, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_font"] = "SCT TwCenMT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
				["spec"] = {
					["single"] = 1,
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
				["ingroup"] = {
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
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["difficulty"] = {
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
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["ignoreOptionsEventErrors"] = true,
			["zoom"] = 0.3,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "SanUI_CelestialAlignmentOffCD",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 40,
			["alpha"] = 1,
			["uid"] = "PCOK3yesv)K",
			["inverse"] = false,
			["parent"] = "SanUI_Urgent",
			["conditions"] = {
			},
			["cooldown"] = false,
			["stickyDuration"] = false,
		},
		["SanUI_Sunfire"] = {
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
						["auranames"] = {
							"93402", -- [1]
						},
						["ownOnly"] = true,
						["subeventPrefix"] = "SPELL",
						["use_tooltip"] = false,
						["buffShowOn"] = "showOnActive",
						["useName"] = true,
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["useGroup_count"] = false,
						["custom_hide"] = "timed",
						["unit"] = "target",
						["spellIds"] = {
							93402, -- [1]
						},
						["type"] = "aura2",
						["names"] = {
							"Sunfire", -- [1]
						},
						["combineMatches"] = "showLowest",
						["debuffType"] = "HARMFUL",
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 36,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
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
					["single"] = "DRUID",
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
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = false,
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
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["icon"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["ignoreOptionsEventErrors"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["alpha"] = 1,
			["id"] = "SanUI_Sunfire",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 39.9999885559082,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "w9n)xPvCh(u",
			["inverse"] = false,
			["zoom"] = 0.3,
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "SanUI_TargetDebuffs",
		},
	},
		
}
