	object_const_def

ViridianNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianNorthGateSuperNerd:
	jumptextfaceplayer _ViridianForestExitText1

ViridianSouthGateGentleman:
	jumptextfaceplayer _ViridianForestExitText2

_ViridianForestExitText1::
	text "Muchos Pokémon"
	line "sólo viven en"
	cont "bosques y cuevas."

	para "¡Tienes que mirar"
	line "por todas partes"
	cont "para conseguirlos"
	cont "todos!"
	done

_ViridianForestExitText2::
	text "¿Has visto los"
	line "arbustos que hay"
	cont "junto al camino?"

	para "No sabemos qué"
	line "hacer con ellos."

	para "Constantemente los"
	line "cortamos y vuelven"
	cont "a crecer."
	
	para "Eso afecta al"
	line "turismo. No todos"
	cont "los turistas"
	cont "tienen un Pokémon"
	cont "con Corte."
	done

ViridianNorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_2, 7
	warp_event  5,  0, ROUTE_2, 7
	warp_event  4,  7, VIRIDIAN_FOREST, 3
	warp_event  5,  7, VIRIDIAN_FOREST, 4



	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianNorthGateSuperNerd, -1
	object_event  7,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ViridianSouthGateGentleman, -1