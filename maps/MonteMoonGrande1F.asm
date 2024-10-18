	object_const_def
	const MONTE_MOON_GRANDE_GENTLEMAN
	const MONTE_MOON_POKEBALL
	const MONTE_MOON_HIKER
	const MONTE_MOON_YOUNGSTER
	const MONTE_MOON_LASS1
	const MONTE_MOON_LASS2
	const MONTE_MOON_BUG_CATCHER1
	const MONTE_MOON_BUG_CATCHER2
	const MONTE_MOON_BUG_SUPERNERD
	const MONTE_MOON_1F_ROCK1
	const MONTE_MOON_1F_ROCK2
	const MONTE_MOON_1F_ROCK3
	const MONTE_MOON_1F_ROCK4
	const MONTE_MOON_1F_ROCK5
	const MONTE_MOON_1F_ROCK6

MonteMoonGrande1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMarcos:
	trainer HIKER, MARCOS, EVENT_BEAT_MARCOS, MarcosSeenText, MarcosBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext MarcosAfterBattleText
	waitbutton
	closetext
	end

TrainerJose:
	trainer YOUNGSTER, JOSE, EVENT_BEAT_JOSE, JoseSeenText, JoseBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext JoseAfterBattleText
	waitbutton
	closetext
	end

TrainerMirma:
	trainer LASS, MIRNA, EVENT_BEAT_MIRMA, MirmaSeenText, MirmaBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext MirmaAfterBattleText
	waitbutton
	closetext
	end

TrainerIris:
	trainer LASS, IRIS, EVENT_BEAT_IRIS, IrisSeenText, IrisBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext IrisAfterBattleText
	waitbutton
	closetext
	end

TrainerRobi:
	trainer BUG_CATCHER, ROBI, EVENT_BEAT_ROBI, RobiSeenText, RobiBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext RobiAfterBattleText
	waitbutton
	closetext
	end

TrainerCasimiro:
	trainer BUG_CATCHER, CASIMIRO, EVENT_BEAT_CASIMIRO, CasimiroSeenText, CasimiroBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext CasimiroAfterBattleText
	waitbutton
	closetext
	end

TrainerGustavo:
	trainer SUPER_NERD, GUSTAVO, EVENT_BEAT_GUSTAVO, GustavoSeenText, GustavoBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext GustavoAfterBattleText
	waitbutton
	closetext
	end

MonteMoonGrandeHiddenStardust:
	hiddenitem STARDUST, MONTE_MOON_GRANDE_HIDDEN_STARDUST

MonteMoonGrandeHiddenTinyMushroom:
	hiddenitem TINYMUSHROOM, MONTE_MOON_GRANDE_HIDDEN_TINYSHROOM

MonteMoonGrandeHiddenMaxRevive:
	hiddenitem MAX_REVIVE, MONTE_MOON_GRANDE_HIDDEN_MAX_REVIVE

MonteMoonGrandeHiddenNugget:
	hiddenitem NUGGET, MONTE_MOON_GRANDE_HIDDEN_NUGGET

MonteMoonGrande1FRarecandy:
	itemball RARE_CANDY

GentlemanMonteMoonScript:
	jumptextfaceplayer GentlemanMonteMoonText

MonteMoonGrandeSign:
	jumptext MonteMoonGrandeSignText

MonteMoonGrande1FRock:
	jumpstd SmashRockScript

MonteMoonGrandeSignText:
	text "Monte Moon:"
	line "Ruta subterránea."
	done

MarcosSeenText::
	text "¡Guau! ¡Me has"
	line "impresionado!"

	para "¡Pero si eres"
	line "sólo un niño!"
	done

MarcosBeatenText::
	text "¡Uau!"

	para "¡Has vuelto"
	line "a impresionarme!"
	done

MarcosAfterBattleText::
	text "¡Los niños como"
	line "tú no deberían"
	cont "estar aquí!"
	done

JoseSeenText::
	text "¿Estás aquí"
	line "para explorar?"
	done

JoseBeatenText::
	text "¡Perder"
	line "apesta!"
	done

JoseAfterBattleText::
	text "¡Vine aquí para"
	line "impresionar a"
	cont "las chicas!"
	done

MirmaSeenText::
	text "¡Uau! ¡Esto es"
	line "mucho más grande"
	cont "de lo que creía!"
	done

MirmaBeatenText::
	text "¡Oh!"
	line "¡He perdido!"
	done

MirmaAfterBattleText::
	text "¿Cómo se sale"
	line "de aquí?"
	done

GustavoSeenText::
	text "¡Qué! ¡No me"
	line "traiciones!"
	done

GustavoBeatenText::
	text "¡Mis Pokémon no lo"
	line "han conseguido!"
	done

GustavoAfterBattleText::
	text "¡Debo encontrar"
	line "un Pokémon"
	cont "más fuerte!"
	done

IrisSeenText::
	text "¿Qué? Estoy"
	line "esperando aquí"
	cont "a mis amigos."
	done

IrisBeatenText::
	text "¿He perdido?"
	done

IrisAfterBattleText::
	text "Dicen que aquí"
	line "hay unos fósiles"
	cont "muy raros."
	done

CasimiroSeenText::
	text "En la cueva hay"
	line "unos hombres muy"
	cont "sospechosos."

	para "¿Y tú qué?"
	done

CasimiroBeatenText::
	text "¡Me has ganado!"
	done

CasimiroAfterBattleText::
	text "En realidad solo"
	line "son científicos"
	cont "maleducados."

	para "Están en la planta"
	cont "baja."
	done

RobiSeenText::
	text "¡Cruza esta"
	line "cueva y llegarás"
	cont "a Ciudad Celeste!"
	done

RobiBeatenText::
	text "He perdido."
	done

RobiAfterBattleText::
	text "¡Zubat es"
	line "muy fuerte!"

	para "¡Atrapar uno"
	line "sería muy útil!"
	done

GentlemanMonteMoonText:
	text "Voy a Ciudad"
	line "Celeste."
	
	para "Quería ir por la"
	line "ruta de arriba,"
	cont "por la cima."

	para "Pero no está bien"
	line "indicado y acabé"
	cont "por aquí."
	done

MonteMoonGrande1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 41, ROUTE_4_WEST, 3
	warp_event 14, 41, ROUTE_4_WEST, 3
	warp_event 35,  7, ROUTE_4_EAST, 2
	warp_event  5,  5, MONTE_MOON_GRANDE_B1F, 1
	warp_event 17, 17, MONTE_MOON_GRANDE_B1F, 2
	warp_event 25, 21, MONTE_MOON_GRANDE_B1F, 3
	warp_event 29,  3, MONTE_MOON_GRANDE_B1F, 4

	def_coord_events

	def_bg_events
	bg_event 15, 29, BGEVENT_READ, MonteMoonGrandeSign
	bg_event 37, 23, BGEVENT_ITEM, MonteMoonGrandeHiddenStardust
	bg_event 22, 36, BGEVENT_ITEM, MonteMoonGrandeHiddenTinyMushroom
	bg_event  8,  9, BGEVENT_ITEM, MonteMoonGrandeHiddenMaxRevive
	bg_event  3, 28, BGEVENT_ITEM, MonteMoonGrandeHiddenNugget

	def_object_events
	object_event 20,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GentlemanMonteMoonScript, -1
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MonteMoonGrande1FRarecandy, MONTE_MOON_GRANDE_1F_RARECANDY
	object_event 23,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMarcos, -1
	object_event 18, 30, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerJose, -1
	object_event 23, 36, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerIris, -1
	object_event 36, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMirma, -1
	object_event 36, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerCasimiro, -1
	object_event  4, 32, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerRobi, -1
	object_event  5, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerGustavo, -1
	object_event 21, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1
	object_event 22, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1
	object_event 20, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1
	object_event 36, 38, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1
	object_event 35, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1
	object_event 37, 39, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MonteMoonGrande1FRock, -1

