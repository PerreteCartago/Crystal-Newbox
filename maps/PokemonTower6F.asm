	object_const_def

PokemonTower6F_MapScripts:
	def_scene_scripts

	def_callbacks


PokemonTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_5F, 2
	warp_event  9, 16, POKEMON_TOWER_7F, 1

	def_coord_events

	def_bg_events
	
	def_object_events