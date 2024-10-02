	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_SNORLAX
	const VERMILIONCITY_POKEFAN_M

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCityTeacherScript:
	jumptextfaceplayer VermilionCityTeacherText

VermilionMachopOwner:
	jumptextfaceplayer VermilionMachopOwnerText

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
	jumptextfaceplayer VermilionCitySuperNerdText

VermilionSnorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext VermilionCitySnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext VermilionCityRadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear VERMILIONCITY_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .Done
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
.AlreadyGotItem:
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityDiglettsCaveSign:
	jumptext VermilionCityDiglettsCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionCityTeacherText:
	text "Ciudad Carmín es"
	line "el puerto más"

	para "importante de"
	line "Kanto."

	para "En él atracan"
	line "lujosos"

	para "transatlánticos"
	line "de todo el mundo."
	done

VermilionMachopOwnerText:
	text "Mi Pokémon está"
	line "preparando el"

	para "terreno donde"
	line "edificar."

	para "Pero no tengo"
	line "dinero para el"
	cont "proyecto…"
	done

VermilionMachopText1:
	text "Machop: ¡Machop,"
	line "machop!"
	done

VermilionMachopText2:
	text "Un Machop gruñe"
	line "mientras pisotea"
	cont "el suelo."
	done

VermilionCitySuperNerdText:
	text "En Kanto hay ocho"
	line "Gimnasios."

	para "Ese gran edificio"
	line "es el Gimnasio"

	para "Pokémon de Ciudad"
	line "Carmín."
	done

VermilionCitySnorlaxSleepingText:
	text "Snorlax duerme"
	line "plácidamente…"
	done

VermilionCityRadioNearSnorlaxText:
	text "El <POKE>gear está"
	line "cerca del Snorlax"
	cont "dormido."

	para "…"

	para "¡Snorlax se"
	line "despertó!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Los entrenadores"
	line "expertos se reúnen"
	cont "en Kanto."

	para "Los Líderes de"
	line "Gimnasio son muy"
	cont "fuertes."

	para "No serán fáciles"
	line "de vencer."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "¿Has conseguido ya"
	line "alguna Medalla de"
	cont "Gimnasio de Kanto?"

	para "¿A que los"
	line "entrenadores de"

	para "Kanto son muy"
	line "fuertes?"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "Supongo que pronto"
	line "habrás conseguido"

	para "todas las Medallas"
	line "de Kanto."

	para "Cuando tengas las"
	line "ocho Medallas,"
	cont "dímelo."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "¡Enhorabuena!"

	para "Tienes todas las"
	line "Medallas de Kanto."

	para "Te recompensaré"
	line "por tu esfuerzo."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Llevar distintos"
	line "tipos de Pokémon"

	para "te debería ayudar"
	line "en el combate."

	para "Seguro que las"
	line "Medallas de Kanto"
	cont "te ayudarán."
	done

VermilionCitySignText:
	text "Ciudad Carmín"

	para "El puerto de los"
	line "ocasos exquisitos"
	done

VermilionGymSignText:
	text "Líder del Gimnasio"
	line "Pokémon de Ciudad"
	cont "Carmín: LT. Surge"

	para "El rayo americano"
	done

PokemonFanClubSignText:
	text "Club de Fans"
	line "de Pokémon"
	cont "¡Bienvenidos!"
	done

VermilionCityDiglettsCaveSignText:
	text "Cueva Diglett"
	done

VermilionCityPortSignText:
	text "Entrada al Puerto"
	line "Carmín"
	done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event 11,  3, VERMILION_POKECENTER_1F, 1
	warp_event  9, 13, POKEMON_FAN_CLUB, 1
	warp_event 15, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 23, 13, VERMILION_MART, 2
	warp_event 23, 19, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 12, 19, VERMILION_GYM, 1
	warp_event 19, 33, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 33, VERMILION_PORT_PASSAGE, 2
	warp_event 44, 13, DIGLETTS_CAVE, 1

	def_coord_events

	def_bg_events
	bg_event 27,  3, BGEVENT_READ, VermilionCitySign
	bg_event  7, 19, BGEVENT_READ, VermilionGymSign
	bg_event  7, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 41, 13, BGEVENT_READ, VermilionCityDiglettsCaveSign
	bg_event 29, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 12,  3, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 24, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 35, 13, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 25,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 29,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 18, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 44, 14, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionSnorlax, EVENT_VERMILION_CITY_SNORLAX
	object_event 15,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
