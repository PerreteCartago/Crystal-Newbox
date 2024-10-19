	object_const_def
	const ROUTE2GATE_SCIENTIST
	const ROUTE2GATE_GUARD

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateScientistScript:
	jumptextfaceplayer Route2GateScientistText

Route2GateGuardScript:
	jumptextfaceplayer Route2GateGuardText

Route2GateScientistText:
	text "¿Eres <PLAY_G>?"

	para "Soy el Ayudante"
	line "del Prof. Oak."

	para "No tenía ni idea"
	line "de dónde estabas."

	para "El Laboratorio del"
	line "Prof. Oak está en"
	cont "Pueblo Paleta."
	done

Route2GateGuardText:
	text "Por aquí no pasa"
	line "mucha gente."

	para "La gente suele ir"
	line "más por el Bosque"
	cont "Verde."

	para "La ruta es más"
	line "bonita."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  0, ROUTE_2, 3
	warp_event  6,  0, ROUTE_2, 4
	warp_event  5, 11, ROUTE_2, 2
	warp_event  6, 11, ROUTE_2, 2
	warp_event 10, 10, ROUTE_2_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateScientistScript, -1
	object_event  1,  5, SPRITE_GUARD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateGuardScript, -1
