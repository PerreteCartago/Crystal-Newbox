	object_const_def

PokemonTower4F_MapScripts:
	def_scene_scripts

	def_callbacks


PokemonTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_3F, 2
	warp_event  3,  9, POKEMON_TOWER_5F, 1

	def_coord_events

	def_bg_events
	
	def_object_events