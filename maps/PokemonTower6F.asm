	object_const_def
	const POKEMON_TOWER_6F_CHANNELER1
	const POKEMON_TOWER_6F_CHANNELER2
	const POKEMON_TOWER_6F_CHANNELER3
	const POKEMON_TOWER_6F_POKEBALL1
	const POKEMON_TOWER_6F_POKEBALL2

PokemonTower6F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerChannelerAngelica:
	trainer CHANNELER, ANGELICA_CHANNELER, EVENT_BEAT_ANGELICA_CHANNELER, AngelicaSeenText, AngelicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AngelicaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerJuliana:
	trainer CHANNELER, JULIANA, EVENT_BEAT_JULIANA, JulianaSeenText, JulianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JulianaAfterBattleText
	waitbutton
	closetext
	end

TrainerChannelerEmilia:
	trainer CHANNELER, EMILIA, EVENT_BEAT_EMILIA, EmiliaSeenText, EmiliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EmiliaAfterBattleText
	waitbutton
	closetext
	end

PokemonTower6FHiddenSpellTag:
	hiddenitem SPELL_TAG, EVENT_POKEMON_TOWER_6F_HIDDEN_SPELL_TAG

PokemonTower6FRareCandy:
	itemball RARE_CANDY

PokemonTower6FFullRestore:
	itemball FULL_RESTORE

AngelicaSeenText:
	text "Da... me..."
	line "sangre..."
	done

AngelicaBeatenText:
	text "¡Grrr!"
	done

AngelicaAfterBattleText:
	text "Me siento anémica"
	line "y débil..."
	done

EmiliaSeenText::
	text "¡Uuff... Guaa!"
	done

EmiliaBeatenText:
	text "¡Algo"
	line "se ha caído!"
	done

EmiliaAfterBattleText::
	text "¡No me lo creo!"
	line "¡Era un malvado"
	cont "espíritu!"
	done

JulianaSeenText:
	text "¡¡¡Ki...ki..."
	line "ki...ki...ki!!!"
	done

JulianaBeatenText:
	text "¡Kiii!"
	prompt

JulianaAfterBattleText:
	text "¿Qué está pasando"
	line "aquí?"
	done

PokemonTower6F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  9, POKEMON_TOWER_5F, 2
	warp_event  9, 16, POKEMON_TOWER_7F, 1

	def_coord_events

	def_bg_events
	bg_event 10, 16, BGEVENT_ITEM, PokemonTower6FHiddenSpellTag

	
	def_object_events
	object_event  9,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerAngelica, -1
	object_event 16,  5, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerChannelerJuliana, -1
	object_event 12, 10, SPRITE_CHANNELER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerChannelerEmilia, -1
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FRareCandy, EVENT_POKEMON_TOWER_6F_RARE_CANDY
	object_event 14, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower6FFullRestore, EVENT_POKEMON_TOWER_6F_FULL_RESTORE
