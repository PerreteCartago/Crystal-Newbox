	object_const_def
	const VERMILIONPIDGEYHOUSE_YOUNGSTER
	const VERMILIONPIDGEYHOUSE_PIDGEY
	const VERMILIONPIDGEYHOUSE_LETTER

VermilionPidgeyHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPidgeHouseYoungsterScript:
	jumptextfaceplayer _VermilionHouse1Text1

VermilionPidgeHousePidgeyScript:
	opentext
	writetext _VermilionHouse1Text2
	cry PIDGEY
	waitbutton
	closetext
	end

VermilionPidgeHouseLetterScript:
	jumptext _VermilionHouse1Text3

_VermilionHouse1Text1:
	text "¡Mi Pidgey volvió"
	line "de Ciudad Celeste"
	cont "con una carta de"
	cont "mi primo."
	done

_VermilionHouse1Text2:
	text "Pidgey: ¡Pid pid!"
	done

_VermilionHouse1Text3:
	text "Querido Pippi,"
	line "espero verte"
	cont "pronto."

	para "No pude entrar en"
	line "la Mazmorra rara."

	para "un señor prohíbe"
	line "la entrada a en-"
	cont "trenadores poco"
	cont "experimentados."

	para "Debo derrotar a"
	line "Azul para probar"
	cont " mi valía."
	done

VermilionPidgeyHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 11
	warp_event  3,  7, VERMILION_CITY, 11

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeHouseYoungsterScript, -1
	object_event  6,  6, SPRITE_PIDGEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeHousePidgeyScript, -1
	object_event  3,  4, SPRITE_PAPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPidgeHouseLetterScript, -1
