	object_const_def


Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks



Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 13, ROUTE_22, 1
	warp_event 17, 13, ROUTE_22, 1
	warp_event  5,  0, VICTORY_ROAD_GATE, 1
	warp_event  4,  0, VICTORY_ROAD_GATE, 1

	def_coord_events

	def_bg_events
	
	def_object_events
