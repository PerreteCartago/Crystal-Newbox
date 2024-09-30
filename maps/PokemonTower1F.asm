	object_const_def

PokemonTower1F_MapScripts:
	def_scene_scripts

	def_callbacks


PokemonTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 17, LAVENDER_TOWN, 8
	warp_event 10, 17, LAVENDER_TOWN, 8
	warp_event 18,  9, POKEMON_TOWER_2F, 1

	def_coord_events

	def_bg_events
	
	def_object_events