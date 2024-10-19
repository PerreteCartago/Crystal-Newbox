	object_const_def

Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks


Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  0, PUERTA_NORTE, 3
	warp_event  6,  0, PUERTA_NORTE, 3
	warp_event  5, 11, PUERTA_SUR, 3
	warp_event  6, 11, PUERTA_SUR, 3
	warp_event 10, 10, SEGUNDA_PLANTA, 1

	def_coord_events

	def_bg_events
	
	def_object_events