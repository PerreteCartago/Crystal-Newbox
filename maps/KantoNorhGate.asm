	object_const_def

Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks


Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PUERTA_NORTE, 3
	warp_event  3,  7, PUERTA_NORTE, 3
	warp_event  4,  7, PUERTA_SUR, 3
	warp_event  4,  7, PUERTA_SUR, 3
	warp_event  4,  7, SEGUNDA_PLANTA, 1

	def_coord_events

	def_bg_events
	
	def_object_events