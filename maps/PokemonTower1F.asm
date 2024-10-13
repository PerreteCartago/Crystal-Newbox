	object_const_def
	const POKEMON_TOWER_1F_RECEPTIONIST
	const POKEMON_TOWER_1F_CHANNELER
	const POKEMON_TOWER_1F_BALDING_GUY
	const POKEMON_TOWER_1F_GIRL
	const POKEMON_TOWER_1F_POKEFAN_F

PokemonTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTowerReceptionist:
	jumptextfaceplayer _PokemonTower1Text1

PokemonTowerChanneler:
	jumptextfaceplayer _PokemonTower1Text5

PokemonTowerGrowlithe:
	jumptextfaceplayer _PokemonTower1Text4

PokemonTowerPokefanF:
	jumptextfaceplayer _PokemonTower1Text2

PokemonTowerGirl:
	jumptextfaceplayer _PokemonTower1Text3


_PokemonTower1Text1:
	text "La Torre Pokémon"
	line "fue erigida en"
	cont "memoria de los"
	cont "Pokémon que"
	cont "han muerto."
	done

_PokemonTower1Text2:
	text "¿Has venido a"
	line "rendirles"
	cont "homenaje?"

	para "¡Bendito seas!"
	done

_PokemonTower1Text3:
	text "Vine a rezar"
	line "por mi Clefairy."

	para "¡Sniff! No puedo"
	line "dejar de llorar..."
	done

_PokemonTower1Text4:
	text "Mi Growlithe..."
	line "¿Por qué has"
	cont "tenido que morir?"
	done

_PokemonTower1Text5:
	text "¡Soy Exorcista!"

	para "¡Hay espíritus"
	line "muy turbados!"
	done

PokemonTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 17, LAVENDER_TOWN, 8
	warp_event 10, 17, LAVENDER_TOWN, 8
	warp_event 18,  9, POKEMON_TOWER_2F, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 15, 13, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokemonTowerReceptionist, -1
	object_event 15,  6, SPRITE_CHANNELER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokemonTowerChanneler, -1
	object_event  9,  2, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokemonTowerGrowlithe, -1
	object_event  5,  8, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokemonTowerGirl, -1
	object_event  8, 12, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokemonTowerPokefanF, -1


