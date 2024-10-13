	object_const_def
	const POKEMON_TOWER_3F_CHANNELER1
	const POKEMON_TOWER_3F_CHANNELER2
	const POKEMON_TOWER_3F_CHANNELER3


PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonTower3FHiddenPP_UP:
	hiddenitem PP_UP, EVENT_POKEMON_TOWER_3F_HIDDEN_PP_UP

TrainerChannelerCari:
	trainer CHANNELER, CARI, EVENT_BEAT_CARI, CariSeenText, CariBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CariAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerPatricia:
	trainer CHANNELER, PATRICIA, EVENT_BEAT_PATRICIA, PatriciaSeenText, PatriciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PatriciaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerEspe:
	trainer CHANNELER, ESPE, EVENT_BEAT_ESPE, EspeSeenText, EspeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EspeAfterBattleText
	waitbutton
	closetext
	end

CariSeenText:
	text "Urrg...Aaa..."
	line "Uuuu...graa.."
	done

CariBeatenText:
	text "¡Uauu!"
	line "¡Estoy salvado!"
	done

CariAfterBattleText:
	text "Los Ghost son"
	line "identificados con"
	cont "nuestros Scope"
	cont "Silph."
	done

PatriciaSeenText:
	text "Kikiki...."
	line "¡Gaaah!"
	done

PatriciaBeatenText:
	text "¿Mmm?"
	line "¿Pero qué hago?"
	done

PatriciaAfterBattleText:
	text "¡Perdona!"
	line "¡Estaba poseído!"
	done

EspeSeenText::
	text "¡Fuera, espíritu"
	line "infernal!"
	done

EspeBeatenText::
	text "¡El"
	line "espíritu se fue!"
	done

EspeAfterBattleText:
	text "¡Mis amigos"
	line "también estaban"
	cont "poseídos!"
	done

PokemonTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_2F, 2
	warp_event 18,  9, POKEMON_TOWER_4F, 1

	def_coord_events

	def_bg_events
	bg_event  6, 14, BGEVENT_ITEM, PokemonTower3FHiddenPP_UP


	def_object_events
	object_event  9,  8, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerCari, -1
	object_event 11,  3, SPRITE_CHANNELER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerPatricia, -1
	object_event 10, 13, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerChannelerEspe, -1
