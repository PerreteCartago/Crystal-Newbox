	object_const_def

Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks


Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, PUERTA_NORTE, 3
	warp_event  5,  0, PUERTA_NORTE, 3
	warp_event  4,  7, PUERTA_SUR, 3
	warp_event  5,  7, PUERTA_SUR, 3
	warp_event  8,  6, SEGUNDA_PLANTA, 3

	def_coord_events

	def_bg_events
	
	def_object_events