	object_const_def
	const VIRIDIANPOKECENTER1F_NURSE
	const VIRIDIANPOKECENTER1F_COOLTRAINER_M
	const VIRIDIANPOKECENTER1F_COOLTRAINER_F
	const VIRIDIANPOKECENTER1F_BUG_CATCHER

ViridianPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

ViridianPokecenter1FCooltrainerMScript:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .BlueReturned
	writetext ViridianPokecenter1FCooltrainerMText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianPokecenter1FCooltrainerMText_BlueReturned
	waitbutton
	closetext
	end

ViridianPokecenter1FCooltrainerFScript:
	jumptextfaceplayer ViridianPokecenter1FCooltrainerFText

ViridianPokecenter1FBugCatcherScript:
	jumptextfaceplayer ViridianPokecenter1FBugCatcherText

ViridianPokecenter1FCooltrainerMText:
	text "¿Dónde estará el"
	line "Líder del Gimnasio"

	para "de Ciudad Verde?"
	line "Quería desafiarle."
	done

ViridianPokecenter1FCooltrainerMText_BlueReturned:
	text "No hay ningún"
	line "Entrenador en el"

	para "Gimnasio de Ciudad"
	line "Verde."

	para "El Líder dice que"
	line "su política es"

	para "ganar sin tener"
	line "subordinados."
	done

ViridianPokecenter1FCooltrainerFText:
	text "Dicen que el"
	line "Gimnasio de Isla"

	para "Canela está"
	line "destruido."

	para "Me pregunto qué"
	line "habrá sido de"
	cont "Blaine, su Líder."
	done

ViridianPokecenter1FBugCatcherText:
	text "Mi sueño es ser"
	line "Líder de Gimnasio."
	
	para "pero en Kanto no hay"
	line "Gimnasios Bicho."

	para "Quizá me mude a"
	line "Johto."
	done

ViridianPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, VIRIDIAN_CITY, 5
	warp_event  6,  7, VIRIDIAN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FCooltrainerMScript, -1
	object_event  9,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FCooltrainerFScript, -1
	object_event 10,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter1FBugCatcherScript, -1
