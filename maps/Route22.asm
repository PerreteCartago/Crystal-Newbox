Route22_MapScripts:
	def_scene_scripts

	def_callbacks

VictoryRoadEntranceSign:
	jumptext VictoryRoadEntranceSignText

VictoryRoadEntranceSignText:
	text "Liga Pokémon"

	para "Entrada a"
	line "Calle Victoria"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, ROUTE_22_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  7, 11, BGEVENT_READ, VictoryRoadEntranceSign

	def_object_events
