	object_const_def

Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks


Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  6, PUERTA_OESTE, 3
	warp_event  0,  7, PUERTA_OESTE, 3
	warp_event 13,  6, PUERTA_ESTE, 3
	warp_event 13,  7, PUERTA_ESTE, 3
	warp_event 12, 12, SEGUNDA_PLANTA, 3

	def_coord_events

	def_bg_events
	
	def_object_events