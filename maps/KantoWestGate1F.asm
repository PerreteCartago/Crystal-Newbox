	object_const_def

Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks


Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, PUERTA_OESTE, 3
	warp_event  0,  5, PUERTA_OESTE, 3
	warp_event  7,  4, PUERTA_ESTE, 3
	warp_event  7,  5, PUERTA_ESTE, 3
	warp_event  6,  8, SEGUNDA_PLANTA, 3

	def_coord_events

	def_bg_events
	
	def_object_events