	object_const_def
	const POKEMON_TOWER_4F_CHANNELER1
	const POKEMON_TOWER_4F_CHANNELER2
	const POKEMON_TOWER_4F_CHANNELER3
	const POKEMON_TOWER_4F_POKEBALL1
	const POKEMON_TOWER_4F_POKEBALL2
	const POKEMON_TOWER_4F_POKEBALL3

PokemonTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerPaula:
	trainer CHANNELER, PAULA, EVENT_BEAT_PAULA_CHANNELER, PaulaSeenText, PaulaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PaulaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerJimena:
	trainer CHANNELER, JIMENA, EVENT_BEAT_JIMENA, JimenaSeenText, JimenaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JimenaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerLorena:
	trainer CHANNELER, LORENA, EVENT_BEAT_LORENA, LorenaSeenText, LorenaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LorenaAfterBattleText
	waitbutton
	closetext
	end

PokemonTower4FPPUP:
	itemball PP_UP

PokemonTower4FElixer:
	itemball ELIXER

PokemonTower4FEscapeRope:
	itemball ESCAPE_ROPE


PaulaSeenText:
	text "¡Un GHOST!"
	line "¡No! ¡Guaaah!"
	done

PaulaBeatenText:
	text "¿Dónde"
	line "está GHOST?"
	done

PaulaAfterBattleText:
	text "Debo haberlo"
	line "soñado..."
	done

JimenaSeenText:
	text "¡Maldito seas!"
	line "¡Guaaah!"
	done

JimenaBeatenText:
	text "¡Qué!"
	done

JimenaAfterBattleText:
	text "¡No podemos"
	line "desvelar la"
	cont "identidad de"
	cont "los GHOST!"
	done

LorenaSeenText:
	text "Uu Uu Uu..."
	line "¡No me vencerás!"
	done

LorenaBeatenText:
	text "¿Eh?"
	line "¿Quién? ¿Qué?"
	done

LorenaAfterBattleText:
	text "¡Que las difuntas"
	line "almas de los"
	cont "Pokémon"
	cont "descansen en paz!"
	done

PokemonTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_3F, 2
	warp_event  3,  9, POKEMON_TOWER_5F, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerPaula, -1
	object_event 14, 12, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerJimena, -1
	object_event 15,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerChannelerLorena, -1
	object_event  9, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FPPUP, EVENT_POKEMON_TOWER_4F_PP_UP
	object_event 12, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FEscapeRope, EVENT_POKEMON_TOWER_4F_ESCAPE_ROPE
	object_event 12, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower4FElixer, EVENT_POKEMON_TOWER_4F_ELIXER
