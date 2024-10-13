	object_const_def

Route4West_MapScripts:
	def_scene_scripts

	def_callbacks


MtMoonPokecenterSign:
	jumpstd PokecenterSignScript

Route3MtMoonSquareSign:
	jumptext Route3MtMoonSquareSignText


Route3MtMoonSquareSignText:
	text "Plaza Mt. Moon"

	para "Sube las"
	line "escaleras"
	done

Route4West_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  5, MOUNT_MOON, 2
	warp_event 11,  5, POKECENTER_2F, 1


	def_coord_events

	def_bg_events
	bg_event 17,  7, BGEVENT_READ, Route3MtMoonSquareSign
	bg_event 12,  5, BGEVENT_READ, MtMoonPokecenterSign

	def_object_events

