Route23_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

Route23FlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauSign:
	jumptext IndigoPlateauSignText

IndigoPlateauSignText:
	text "Meseta Añil"

	para "¡El objetivo"
	line "final de los"
	cont "entrenadores!"

	para "El CG de la"
	line "Liga Pokémon"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 12,  5, INDIGO_PLATEAU_POKECENTER_1F, 2
	warp_event 11, 27, VICTORY_ROAD, 10
	warp_event 12, 27, VICTORY_ROAD, 10

	def_coord_events

	def_bg_events
	bg_event 13,  7, BGEVENT_READ, IndigoPlateauSign

	def_object_events
