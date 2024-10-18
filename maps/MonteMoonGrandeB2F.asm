	object_const_def
	const MONTE_MOON_GRANDE_B2F_POKEBALL
	const MONTE_MOON_GRANDE_B2F_SCIENTIST1
	const MONTE_MOON_GRANDE_B2F_SCIENTIST2
	const MONTE_MOON_GRANDE_B2F_POKEMANIAC
	const MONTE_MOON_B2F_ROCK1
	const MONTE_MOON_B2F_ROCK2
	const MONTE_MOON_B2F_ROCK3
	const MONTE_MOON_B2F_ROCK4
	const MONTE_MOON_B2F_ROCK5
	const MONTE_MOON_B2F_ROCK6
	const MONTE_MOON_B2F_ROCK7
	const MONTE_MOON_B2F_ROCK8
	const MONTE_MOON_B2F_ROCK9
	const MONTE_MOON_B2F_ROCK10
	const MONTE_MOON_B2F_ROCK11

MonteMoonGrandeB2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerJohn2:
	trainer POKEMANIAC, JOHN2, EVENT_BEAT_JOHN2, John2SeenText, John2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext John2AfterBattleText
	waitbutton
	closetext
	end

TrainerMiguel:
	trainer SCIENTIST, MIGUEL, EVENT_BEAT_MIGUEL, MiguelSeenText, MiguelBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext MiguelAfterBattleText
	waitbutton
	closetext
	end

TrainerAlbert2:
	trainer SCIENTIST, ALBERT2, EVENT_BEAT_ALBERT2, Albert2SeenText, Albert2BeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext Albert2AfterBattleText
	waitbutton
	closetext
	end

MonteMoonGrandeB2FRock:
	jumpstd SmashRockScript

MonteMoonGrandeB2FThief:
	itemball TM_THIEF

MonteMoonGrandeMaxRevive:
	hiddenitem MAX_REVIVE, MONTE_MOON_GRANDE_B2F_MAX_REVIVE

MonteMoonGrandeHiddenMaxPotion:
	hiddenitem MAX_POTION, MONTE_MOON_GRANDE_HIDDEN_MAX_POTION

MonteMoonGrandeHiddenPPUP:
	hiddenitem PP_UP, MONTE_MOON_GRANDE_HIDDEN_PP_UP

MonteMoonGrandeHiddenShroom:
	hiddenitem BIG_MUSHROOM, MONTE_MOON_GRANDE_HIDDEN_SHROOM

MiguelSeenText::
	text "¡No toques nada!"

	para "¡Reclamo todos"
	line "los fósiles de"
	cont "esta cueva en"
	cont "nombre de la"
	cont "ciencia!"
	done

MiguelBeatenText::
	text "Bárbaro."
	done

MiguelAfterBattleText::
	text "Muy lejos, en la"
	line "Isla Canela, hay"
	cont "un Laboratorio"
	cont "de Pokémon."

	para "Si encuentras un"
	line "fosil usando golpe"
	cont "roca, llévalo"
	cont "allí, por favor."
	done

Albert2SeenText::
	text "¡Nuestro trabajo"
	line "aquí es muy"
	cont "importante!"
	cont "¡Lárgate, niño!"
	done

Albert2BeatenText::
	text "Pues,"
	line "eres muy bueno."
	done

Albert2AfterBattleText::
	text "Si encuentras un"
	line "fósil, ¡dámelo"
	cont "y lárgate!"
	done

John2SeenText::
	text "¿Estás con los"
	line "científicos?"
	done

John2BeatenText::
	text "Pues no."

	para "Un científico no"
	line "es tan bueno."
	done

John2AfterBattleText::
	text "Los científicos de"
	line "por aquí son unos"
	cont "pesados."

	para "Se creen los amos"
	line "del lugar."

	para "Busco un Clefairy,"
	line "no me importan"
	cont "vuestras roquitas."
	done

MonteMoonGrandeB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 27, MONTE_MOON_GRANDE_B1F, 5
	warp_event 21, 17, MONTE_MOON_GRANDE_B1F, 6
	warp_event 25,  7, MONTE_MOON_GRANDE_B1F, 7
	warp_event  5,  7, MONTE_MOON_GRANDE_B1F, 8


	def_coord_events

	def_bg_events
	bg_event  9, 18, BGEVENT_ITEM, MonteMoonGrandeHiddenPPUP
	bg_event 28, 27, BGEVENT_ITEM, MonteMoonGrandeHiddenMaxPotion
	bg_event 19, 23, BGEVENT_ITEM, MonteMoonGrandeHiddenShroom
	bg_event 33,  9, BGEVENT_ITEM, MonteMoonGrandeMaxRevive

	def_object_events
	object_event 29,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MonteMoonGrandeB2FThief, MONTE_MOON_GRANDE_B2F_THIEF
	object_event 30,  9, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerJohn2, -1
	object_event  9, 24, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerAlbert2, -1
	object_event 10,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMiguel, -1
	object_event 15, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event 17, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event 16, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event 11, 25, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event 11, 23, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event  8, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event  9, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event  7, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event  9, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event 10, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
	object_event  8, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrandeB2FRock, -1
