	object_const_def
	const VIRIDIAN_FOREST_BUG_CATCHER1
	const VIRIDIAN_FOREST_BUG_CATCHER2
	const VIRIDIAN_FOREST_BUG_CATCHER3
	const VIRIDIAN_FOREST_BUG_CATCHER4
	const VIRIDIAN_FOREST_BUG_CATCHER5
	const VIRIDIAN_FOREST_YOUNGSTER
	const VIRIDIAN_FOREST_BEAUTY
	const VIRIDIAN_FOREST_POKE_BALL1
	const VIRIDIAN_FOREST_POKE_BALL2
	const VIRIDIAN_FOREST_POKE_BALL3

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCazabichosCirilo:
	trainer BUG_CATCHER, CIRILO, EVENT_BEAT_CIRILO_VIRIDIAN_FOREST, CazabichosCiriloSeenText, CazabichosCiriloBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CazabichosCiriloAfterBattleText
	waitbutton
	closetext
	end

TrainerCazabichosLino:
	trainer BUG_CATCHER, LINO, EVENT_BEAT_LINO_VIRIDIAN_FOREST, CazabichosLinoSeenText, CazabichosLinoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CazabichosLinoAfterBattleText
	waitbutton
	closetext
	end

TrainerCazabichosAmadeo:
	trainer BUG_CATCHER, AMADEO, EVENT_BEAT_AMADEO_VIRIDIAN_FOREST, CazabichosAmadeoSeenText, CazabichosAmadeoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CazabichosAmadeoAfterBattleText
	waitbutton
	closetext
	end

TrainerCazabichosAsier:
	trainer BUG_CATCHER, ASIER, EVENT_BEAT_ASIER_VIRIDIAN_FOREST, CazabichosAsierSeenText, CazabichosAsierBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CazabichosAsierAfterBattleText
	waitbutton
	closetext
	end

TrainerCazabichosManlio:
	trainer BUG_CATCHER, MANLIO, EVENT_BEAT_MANLIO_VIRIDIAN_FOREST, CazabichosManlioSeenText, CazabichosManlioBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext CazabichosManlioAfterBattleText
	waitbutton
	closetext
	end

ViridianNorthSign:
	jumptext ViridianNorthSignText

ViridianWarningSign:
	jumptext ViridianWarningText

ViridianSouthSign:
	jumptext ViridianSouthSignText

ViridianForestYoungsterScript:
	jumptextfaceplayer ViridianForestYoungsterText

ViridianForestBeautyScript:
	jumptextfaceplayer ViridianForestBeautyText

ViridianForestHiddenNugget:
	hiddenitem NUGGET, EVENT_VIRIDIAN_FOREST_NUGGET

ViridianForestBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_VIRIDIAN_FOREST_BIG_MUSHROOM

ViridianForestLeafStone:
	hiddenitem LEAF_STONE, EVENT_VIRIDIAN_FOREST_LEAF_STONE

ViridianForestFuryCutter:
	itemball TM_FURY_CUTTER

ViridianForestRareCandy:
	itemball RARE_CANDY

ViridianForestPPUP:
	itemball PP_UP

ViridianForestYoungsterText:
	text "¡Vine aquí con"
	line "unos amigos!"

	para "¡Van en busca"
	line "de peleas de"
	cont "Pokémon!"
	done

ViridianSouthSignText:
	text "Bosque verde,"
	line "Entrada sur."
	done

ViridianForestBeautyText:
	para "Si quieres evitar"
	line "los combates,"
	cont "¡aléjate de las"
	cont "zonas de hierba!"
	done

ViridianWarningText:
	text "¡ATENCIÓN"
	line "ENTRENADORES!"

	para "No bloqueen toda"
	line "la ruta con su"
	cont "línea de visión."

	para "Permitan a los"
	line "demás cruzar sin"
	cont "forzar un combate"

	para "Gracias."
	done

ViridianNorthSignText:
	text "Bosque verde,"
	line "Entrada norte."
	done

CazabichosCiriloSeenText:
	text "¿sabes que los <POKE>"
	line "mon evolucionan?"
	done

CazabichosLinoSeenText:
	text "¡Eh, espera!"

	para "¿Por qué tienes"
	line "tanta prisa?"
	done

CazabichosAmadeoSeenText:
	text "No soy especial-"
	line "mente grande."

	para "Pero tampoco soy"
	line "ningún enclenque"
	done

CazabichosAsierSeenText:
	text "¡Sssh!"

	para "Vas a hacer que"
	line "se escapen los"
	cont "<POKE>mon."
	done

CazabichosManlioSeenText:
	text "¡Bienvenido al!"
	line "Bosque Verde."

	para "El paraíso para"
	line "los amantes de"
	cont "los bichos."
	done

CazabichosCiriloBeatenText:
	text "Muy bien hecho mis"
	line "queridos <POKE>mon."
	done

CazabichosLinoBeatenText:
	text "¡Me rindo!"

	para "Eres demasiado"
	line "fuerte."
	done

CazabichosAmadeoBeatenText:
	text "¡Vaya!"

	para "Pues se ve que"
	line "tampoco soy dema-"
	cont "siado fuerte."
	done

CazabichosAsierBeatenText:
	text "Uuuuf..."
	done

CazabichosManlioBeatenText:
	text "¡Impresionante!"
	done

CazabichosCiriloAfterBattleText:
	text "Los <POKE>mon tipo"
	line "bicho evolucionan"
	cont "muy rápido."

	para "Son geniales."
	done

CazabichosLinoAfterBattleText:
	text "A veces puedes en-"
	line "contrar cosas por"
	cont "el suelo."
	done

CazabichosAmadeoAfterBattleText:
	text "Así no hay forma"
	line "de ahorrar."
	done

CazabichosAsierAfterBattleText:
	text "El sonido al mor-"
	line "der la hierba."

	para "El ruido al pisar"
	line "las hojas secas."

	para "Su chapoteo en"
	line "las gotas de agua"

	para "Amo todo lo que"
	line "tenga que ver con"
	cont "Pokémon bicho."
	done

CazabichosManlioAfterBattleText:
	text "¡Enhorabuena!"

	para "Con tu talento"
	line "llegarás donde te"
	cont "propongas."
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 47, VIRIDIAN_SOUTH_GATE, 1
	warp_event 16, 47, VIRIDIAN_SOUTH_GATE, 2
	warp_event  1,  0, VIRIDIAN_NORTH_GATE, 3
	warp_event  2,  0, VIRIDIAN_NORTH_GATE, 4


	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, ViridianNorthSign
	bg_event 26, 17, BGEVENT_READ, ViridianWarningSign
	bg_event 20, 42, BGEVENT_READ, ViridianSouthSign
	bg_event  4, 22, BGEVENT_ITEM, ViridianForestHiddenNugget
	bg_event 30,  3, BGEVENT_ITEM, ViridianForestBigMushroom
	bg_event 24, 41, BGEVENT_ITEM, ViridianForestLeafStone

	def_object_events
	object_event  1, 30, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerCazabichosCirilo, -1
	object_event 28, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerCazabichosLino, -1
	object_event 30, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 5, TrainerCazabichosAmadeo, -1
	object_event 12,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerCazabichosAsier, -1
	object_event 26, 40, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCazabichosManlio, -1
	object_event 15, 42, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 3, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianForestYoungsterScript, -1
	object_event 12, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestBeautyScript, -1
	object_event  1, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0,ViridianForestFuryCutter, EVENT_VIRIDIAN_FOREST_FURY_CUTTER
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestRareCandy, EVENT_VIRIDIAN_FOREST_RARE_CANDY
	object_event 32,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPPUP, EVENT_VIRIDIAN_FOREST_PP_UP
