	object_const_def
	const MAHOGANYPOKECENTER1F_NURSE
	const MAHOGANYPOKECENTER1F_POKEFAN_M
	const MAHOGANYPOKECENTER1F_YOUNGSTER
	const MAHOGANYPOKECENTER1F_COOLTRAINER_F

MahoganyPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

MahoganyPokecenter1FPokefanMScript:
	jumptextfaceplayer MahoganyPokecenter1FPokefanMText

MahoganyPokecenter1FYoungsterScript:
	jumptextfaceplayer MahoganyPokecenter1FYoungsterText

MahoganyPokecenter1FCooltrainerFScript:
	jumptextfaceplayer MahoganyPokecenter1FCooltrainerFText

MahoganyPokecenter1FPokefanMText:
	text "¿Qué pasa?"
	line "¿Ha vuelto el"
	cont "Team Rocket?"

	para "He visto hombres"
	line "de negro en el"
	cont "Lago de la Furia."
	done

MahoganyPokecenter1FYoungsterText:
	text "No permito que mis"
	line "Pokémon evolu-"
	cont "cionen demasiado"
	cont "pronto."

	para "Antes de dejarles"
	line "evolucionar, les"

	para "enseño algunos"
	line "movimientos."
	done

MahoganyPokecenter1FCooltrainerFText:
	text "Al evolucionar,"
	line "los Pokémon se"

	para "fortalecen, pero"
	line "tardan más en"
	cont "aprender ataques."
	done

MahoganyPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, MAHOGANY_TOWN, 4
	warp_event  6,  7, MAHOGANY_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FPokefanMScript, -1
	object_event  9,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FYoungsterScript, -1
	object_event 10,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyPokecenter1FCooltrainerFScript, -1
