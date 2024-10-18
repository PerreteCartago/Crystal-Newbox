	object_const_def

Route4West_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint
.Flypoint:
	setflag ENGINE_FLYPOINT_ROUTE_4_WEST
	return

MtMoonPokecenterSign:
	jumpstd PokecenterSignScript

Route3MtMoonSquareSign:
	jumptext Route3MtMoonSquareSignText

Route3MtMoonLongSign:
	jumptext Route3MtMoonLongSignText


Route3MtMoonSquareSignText:
	text "Plaza Mt. Moon"

	para "Sube las"
	line "escaleras"
	done

Route3MtMoonLongSignText:
	text "Mt. Moon."
	line "Ruta interior."
	done

Route4West_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  7, MOUNT_MOON, 2
	warp_event  9, 15, MTMOON_POKECENTER, 1
	warp_event 18, 15, MONTE_MOON_GRANDE_1F, 1


	def_coord_events

	def_bg_events
	bg_event  5, 15, BGEVENT_READ, Route3MtMoonSquareSign
	bg_event 10, 15, BGEVENT_READ, MtMoonPokecenterSign
	bg_event 17, 17, BGEVENT_READ, Route3MtMoonLongSign

	def_object_events

