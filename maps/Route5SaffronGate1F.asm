	object_const_def
	const ROUTE5SAFFRONGATE_OFFICER

Route5SaffronGate1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route5SaffronGateOfficerScript:
	jumptextfaceplayer Route5SaffronGateOfficerText

Route5SaffronGateOfficerText:
	text "Eres de Johto,"
	line "¿verdad?"

	para "¿Qué opinas de"
	line "Kanto? Es bonito,"
	cont "¿no crees?"
	done

Route5SaffronGate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_5, 2
	warp_event  5,  0, ROUTE_5, 3
	warp_event  4,  7, SAFFRON_CITY, 9
	warp_event  5,  7, SAFFRON_CITY, 9
	warp_event  8,  6, ROUTE_5_SAFFRON_GATE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1