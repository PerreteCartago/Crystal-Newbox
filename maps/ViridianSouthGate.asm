	object_const_def

ViridianSouthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianSouthGateGirl:
	jumptextfaceplayer _ViridianForestEntranceText1

ViridianSouthGateYoungster:
	jumptextfaceplayer _ViridianForestEntranceText2

_ViridianForestEntranceText1::
	text "¿Piensas ir al"
	line "Bosque Verde?"
	cont "¡Ten cuidado!"
	cont "¡Es un auténtico"
	cont "laberinto!"
	done

_ViridianForestEntranceText2::
	text "¡Puede que mi"
	line "Rattata sea"
	cont "pequeño, pero"
	cont "su mordisco es"
	cont "muy potente!"

	para "¿Tú tienes alguno?"
	done

ViridianSouthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 1
	warp_event  5,  0, VIRIDIAN_FOREST, 2
	warp_event  4,  7, ROUTE_2, 6
	warp_event  5,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianSouthGateGirl, -1
	object_event  7,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianSouthGateYoungster, -1
