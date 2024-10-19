	object_const_def

Route2Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateHikerScript:
	jumptextfaceplayer Route2GateHikerText

Route2GateHikerText:
	text "Tanto Digglet fue"
	line "demasiado para mis"
	cont "Pokémon tipo roca."
	
	para "No habría podido"
	line "salir de no ser"
	cont "por mi Machop."
	done

Route2Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_2_GATE, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  3,  3, SPRITE_HIKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateHikerScript, -1
