	object_const_def
	const LAVENDERTOWN_POKEFAN_M
	const LAVENDERTOWN_TEACHER
	const LAVENDERTOWN_GRAMPS
	const LAVENDERTOWN_YOUNGSTER

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LavenderTownFlypointCallback

LavenderTownFlypointCallback:
	setflag ENGINE_FLYPOINT_LAVENDER
	endcallback

LavenderTownPokefanMScript:
	jumptextfaceplayer LavenderTownPokefanMText

LavenderTownTeacherScript:
	jumptextfaceplayer LavenderTownTeacherText

LavenderTownGrampsScript:
	jumptextfaceplayer LavenderTownGrampsText

LavenderTownYoungsterScript:
	jumptextfaceplayer LavenderTownYoungsterText

LavenderTownSign:
	jumptext LavenderTownSignText

KantoRadioStationSign:
	jumptext KantoRadioStationSignText

VolunteerPokemonHouseSign:
	jumptext VolunteerPokemonHouseSignText

SoulHouseSign:
	jumptext SoulHouseSignText

LavenderPokecenterSignText:
	jumpstd PokecenterSignScript

LavenderMartSignText:
	jumpstd MartSignScript

LavenderTownPokefanMText:
	text "Menudo edificio,"
	line "¿eh?"

	para "Es la Torre Radio"
	line "de Kanto."
	done

LavenderTownTeacherText:
	text "Kanto tiene muchos"
	line "programas de radio"
	cont "buenos."
	done

LavenderTownGrampsText:
	text "Viene gente de"
	line "todas partes a"

	para "rendir homenaje a"
	line "las almas de los"

	para "Pokémon que han"
	line "partido."
	done

LavenderTownYoungsterText:
	text "Para despertar a"
	line "los Pokémon,"

	para "sintoniza Flauta"
	line "Pokémon."

	para "¡Todo entrenador"
	line "debería saberlo!"
	done

LavenderTownSignText:
	text "Pueblo Lavanda"

	para "El noble pueblo"
	line "púrpura"
	done

KantoRadioStationSignText:
	text "Emisora de"
	line "Kanto"

	para "¡Tus programas"
	line "favoritos a"
	cont "cualquier hora!"
	done

VolunteerPokemonHouseSignText:
	text "Casa Pokémon"
	line "de Voluntarios de"
	cont "Pueblo Lavanda"
	done

SoulHouseSignText:
	text "CEMENTERIO"

	para "Que las almas de"
	line "los Pokémon"
	cont "descansen en paz"
	done

LavenderTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  9, LAVENDER_POKECENTER_1F, 1
	warp_event  3, 21, MR_FUJIS_HOUSE, 1
	warp_event  7, 21, LAVENDER_SPEECH_HOUSE, 1
	warp_event  7, 15, LAVENDER_NAME_RATER, 1
	warp_event  1,  9, LAVENDER_MART, 2
	warp_event  3, 15, SOUL_HOUSE, 1
	warp_event 17, 19, LAV_RADIO_TOWER_1F, 1
	warp_event 18,  9, POKEMON_TOWER_1F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  9, BGEVENT_READ, LavenderTownSign
	bg_event 19, 21, BGEVENT_READ, KantoRadioStationSign
	bg_event  1, 21, BGEVENT_READ, VolunteerPokemonHouseSign
	bg_event  1, 15, BGEVENT_READ, SoulHouseSign
	bg_event  8,  9, BGEVENT_READ, LavenderPokecenterSignText
	bg_event  2,  9, BGEVENT_READ, LavenderMartSignText

	def_object_events
	object_event  6, 23, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderTownPokefanMScript, -1
	object_event 12, 11, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderTownTeacherScript, -1
	object_event  4, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderTownGrampsScript, -1
	object_event  9, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 1, LavenderTownYoungsterScript, -1
