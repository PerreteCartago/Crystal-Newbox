	object_const_def

Museum1F_MapScripts:
	def_scene_scripts

	def_callbacks


Museum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 7
	warp_event 16,  7, PEWTER_CITY, 8
	warp_event 17,  7, PEWTER_CITY, 8
	warp_event  7,  7, MUSEUM_2F, 1

	def_coord_events

	def_bg_events
	
	def_object_events