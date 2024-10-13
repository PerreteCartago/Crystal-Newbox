	object_const_def
	const ROUTE5_POKEFAN_M
	const ROUTE5_TEACHER

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5PokefanMScript:
	jumptextfaceplayer Route5PokefanMText

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5UndergroundPathEntranceTeacherScript:
	jumptextfaceplayer Route5UndergroundPathEntranceTeacherText

Route5UndergroundPathEntranceTeacherText:
	text "Muchas ciudades de"
	line "Johto están llenas"

	para "de historia. ¡Cómo"
	line "me gustaría ir!"
	done

Route5PokefanMText:
	text "La carretera está"
	line "cortada hasta que"

	para "arreglen la"
	line "Central Energía."
	done

Route5UndergroundPathSignText:
	text "Vía Subterránea"

	para "Ciudad Celeste -"
	line "Ciudad Carmín"
	done

HouseForSaleSignText:
	text "¿Qué es esto?"

	para "Casa en venta…"
	line "No vive nadie."
	done


Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 29, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 33, ROUTE_5_SAFFRON_GATE_1F, 1
	warp_event  9, 33, ROUTE_5_SAFFRON_GATE_1F, 2
	warp_event 10, 21, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 31, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 21, BGEVENT_READ, HouseForSaleSign

	def_object_events
	object_event 17, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event 14, 28, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route5UndergroundPathEntranceTeacherScript, -1
