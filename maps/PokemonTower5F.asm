	object_const_def
	const POKEMON_TOWER_5F_CHANNELER1
	const POKEMON_TOWER_5F_CHANNELER2
	const POKEMON_TOWER_5F_CHANNELER3
	const POKEMON_TOWER_5F_CHANNELER4
	const POKEMON_TOWER_5F_CHANNELER5
	const POKEMON_TOWER_5F_POKEBALL1

PokemonTower5F_MapScripts:
	def_scene_scripts
	scene_script GenericDummyScript

	def_callbacks

PokemonTower5F_HealPad:
	special HealParty
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_10
	iffalse GenericDummyScript
	clearevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_10
	special FadeOutToWhite
	pause 6
	special FadeInFromWhite
	opentext
	writetext .text
	waitbutton
	closetext
	end

.text
	text "¡Has entrado en"
	line "una zona de"
	cont "pureza y"
	cont "seguridad!"

	para "¡Los Pokémon de"
	line "<PLAYER> están"
	cont "curados!"
	done

GenericDummyScript:
	end

PokemonTower5F_EnableHealPad:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_10
	end

HealingZone:
	jumptextfaceplayer _PokemonTower5Text1

TrainerChannelerTamara:
	trainer CHANNELER, TAMARA, EVENT_BEAT_TAMARA, TamaraSeenText, TamaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TamaraAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerJana:
	trainer CHANNELER, JANA, EVENT_BEAT_JANA, JanaSeenText, JanaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JanaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerLina:
	trainer CHANNELER, LINA, EVENT_BEAT_LINA, LinaSeenText, LinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LinaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerRenata:
	trainer CHANNELER, RENATA, EVENT_BEAT_RENATA, RenataSeenText, RenataBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RenataAfterBattleText
	waitbutton
	closetext
	end

PokemonTower5FNugget:
	itemball NUGGET

_PokemonTower5Text1:
	text "¡Ven aquí niño!"
	line "¡Sellé este lugar"
	cont "con magia blanca!"

	para "¡Aquí puedes"
	line "descansar!"
	done

RenataSeenText:
	text "Dame..."
	line "tu... alma..."
	done

RenataBeatenText:
	text "¡Gasp!"
	done

RenataAfterBattleText:
	text "¡Estaba poseído!"
	done

LinaSeenText:
	text "Ven... con..."
	line "nosotros..."
	done

LinaBeatenText:
	text "¡Vaya"
	line "pesadilla!"
	done

LinaAfterBattleText:
	text "¡Estaba poseído!"
	done

JanaSeenText:
	text "¡Zombis!"
	done

JanaBeatenText:
	text "¿Ja?"
	done

JanaAfterBattleText:
	text "¡Recuperé"
	line "la razón!"
	done

TamaraSeenText:
	text "¡Oooo!..."
	line "¡Uuuu!...."
	done

TamaraBeatenText:
	text "¡Uuuu!"
	done

TamaraAfterBattleText:
	text "¡A pesar de mi"
	line "entrenamiento fui"
	cont "atrapado por los"
	cont "espíritus!"
	done

PokemonTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_4F, 2
	warp_event 18,  9, POKEMON_TOWER_6F, 1

	def_coord_events
	coord_event  9,  8, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event  9,  9, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event 10,  8, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event 10,  9, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event 10, 10, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event 11,  8, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event 11,  9, SCENE_DEFAULT, PokemonTower5F_HealPad
	coord_event 11, 10, SCENE_DEFAULT, PokemonTower5F_EnableHealPad
	coord_event 12,  9, SCENE_DEFAULT, PokemonTower5F_EnableHealPad

	def_bg_events
	
	def_object_events
	object_event 12,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 3, HealingZone, -1
	object_event  6, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerTamara, -1
	object_event  9, 16, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerJana, -1
	object_event 14,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerChannelerLina, -1
	object_event 17,  7, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerChannelerRenata, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower5FNugget, EVENT_POKEMON_TOWER_5F_NUGGET
