	object_const_def
	const CINNABAR_LAB_SCIENTIST

CinnabarLab_MapScripts:
	def_scene_scripts

	def_callbacks

CientificoHall:
	jumptextfaceplayer _Lab1Text1

FujiFaceSign:
	jumptext _Lab1Text2

TradeSign:
	jumptext _Lab1Text3

MetronomeSign:
	jumptext _Lab1Text4

FossilSign:
	jumptext _Lab1Text5

_Lab1Text1:
	text "Aquí estudiamos a"
	line "los Pokémon."

	para "La gente suele"
	line "traernos a raros"
	cont "Pokémon para"
	cont "analizarlos."
	done

_Lab1Text2:
	text "¡Una foto del"
	line "fundador del"
	cont "Laboratorio,"
	cont "el Dr. Fuji!"
	done

_Lab1Text3:
	text "Laboratorio"
	line "Reuniones"
	done

_Lab1Text4:
	text "Laboratorio"
	line "Sala de I-D"
	done

_Lab1Text5:
	text "Laboratorio"
	line "Sala de Pruebas"
	done

CinnabarLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_ISLAND, 6
	warp_event  3,  7, CINNABAR_ISLAND, 5
	warp_event  8,  4, CINNABAR_LAB_TRADE_ROOM, 1
	warp_event 12,  4, CINNABAR_LAB_METRONOME_ROOM, 1
	warp_event 16,  4, CINNABAR_LAB_FOSSIL_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event  9,  4, BGEVENT_READ, TradeSign
	bg_event 13,  4, BGEVENT_READ, MetronomeSign
	bg_event 17,  4, BGEVENT_READ, FossilSign
	bg_event  3,  2, BGEVENT_READ, FujiFaceSign

	def_object_events
	object_event  3,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CientificoHall, -1
