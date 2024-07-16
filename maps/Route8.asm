	object_const_def
	const ROUTE8_BIKER1
	const ROUTE8_BIKER2
	const ROUTE8_BIKER3
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE

Route8_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBikerDwayne:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BikerDwayneSeenText, BikerDwayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerDwayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHarris:
	trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHarrisAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerZeke:
	trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BikerZekeSeenText, BikerZekeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerZekeAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdSam:
	trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdSamAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdTomAfterBattleText
	waitbutton
	closetext
	end

Route8LockedDoor:
	jumptext Route8LockedDoorText

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

Route8FruitTree:
	fruittree FRUITTREE_ROUTE_8

BikerDwayneSeenText:
	text "Somos el grupo de"
	line "entrenadores de la"

	para "Federación Pokémon"
	line "de Kanto."

	para "¡Te vamos a"
	line "arrollar!"
	done

BikerDwayneBeatenText:
	text "¡Lo… lo siento!"
	done

BikerDwayneAfterBattleText:
	text "¡Viva la"
	line "Federación"
	cont "Pokémon de Kanto!"
	done

BikerHarrisSeenText:
	text "La policía ha"
	line "cerrado la Vía"

	para "Subterránea."
	line "¡Qué fastidio!"
	done

BikerHarrisBeatenText:
	text "¡Per… perdóname!"
	done

BikerHarrisAfterBattleText:
	text "Destruido por"
	line "alguien de Johto…"
	done

BikerZekeSeenText:
	text "Somos la"
	line "Federación"

	para "Pokémon de Kanto."
	line "¡Allá vamos!"
	done

BikerZekeBeatenText:
	text "¡Vaya! ¡Perdona!"
	done

BikerZekeAfterBattleText:
	text "Intentaremos no"
	line "molestar a nadie"
	cont "a partir de ahora."
	done

SupernerdSamSeenText:
	text "¿Cómo funciona el"
	line "Magnetotrén?"
	done

SupernerdSamBeatenText:
	text "Quiero ver el"
	line "Magnetotrén…"
	done

SupernerdSamAfterBattleText:
	text "¡El poder de los"
	line "imanes es inmenso!"
	done

SupernerdTomSeenText:
	text "Mmm… Tienes muchas"
	line "Medallas de"
	cont "Gimnasio."
	done

SupernerdTomBeatenText:
	text "Tal y como pensé…"
	line "¡Eres fuerte!"
	done

SupernerdTomAfterBattleText:
	text "Las Medallas de"
	line "Gimnasio te dan"

	para "ventaja en los"
	line "combates."
	done

Route8LockedDoorText:
	text "Está cerrada…"
	done

Route8UndergroundPathSignText:
	text "El cartel está"
	line "roto."

	para "Es imposible"
	line "leerlo…"
	done


Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  5, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 10,  5, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 10,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerDwayne, -1
	object_event 10,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBikerHarris, -1
	object_event 10, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerBikerZeke, -1
	object_event 23,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdSam, -1
	object_event 31, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdTom, -1
	object_event 33,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
