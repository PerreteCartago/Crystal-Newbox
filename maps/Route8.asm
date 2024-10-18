	object_const_def
	const ROUTE8_BIKER1
	const ROUTE8_BIKER2
	const ROUTE8_BIKER3
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE
	const ROUTE8_SUPER_NERD3
	const ROUTE8_SUPER_NERD4
	const ROUTE8_PI1
	const ROUTE8_PI2
	const ROUTE8_STANDING_LASS1
	const ROUTE8_STANDING_LASS2
	const ROUTE8_STANDING_LASS3
	const ROUTE8_STANDING_LASS4

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

TrainerLadis:
	trainer SUPER_NERD, LADIS, EVENT_BEAT_LADIS, LadisSeenText, LadisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LadisAfterBattleText
	waitbutton
	closetext
	end

TrainerAdrian:
	trainer SUPER_NERD, ADRIAN, EVENT_BEAT_ADRIAN, AdrianSeenText, AdrianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AdrianAfterBattleText
	waitbutton
	closetext
	end

TrainerNorber:
	trainer PI, NORBER, EVENT_BEAT_NORBER, NorberSeenText, NorberBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NorberAfterBattleText
	waitbutton
	closetext
	end

TrainerEusebio:
	trainer PI, EUSEBIO, EVENT_BEAT_EUSEBIO, EusebioSeenText, EusebioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EusebioAfterBattleText
	waitbutton
	closetext
	end

TrainerGeno:
	trainer LASS, GENO, EVENT_BEAT_GENO, GenoSeenText, GenoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GenoAfterBattleText
	waitbutton
	closetext
	end

TrainerLulu:
	trainer LASS, LULU, EVENT_BEAT_LULU, LuluSeenText, LuluBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LuluAfterBattleText
	waitbutton
	closetext
	end

TrainerAndrea:
	trainer LASS, ANDREA, EVENT_BEAT_ANDREA, AndreaSeenText, AndreaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AndreaAfterBattleText
	waitbutton
	closetext
	end

TrainerVeva:
	trainer LASS, VEVA, EVENT_BEAT_VEVA, VevaSeenText, VevaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VevaAfterBattleText
	waitbutton
	closetext
	end

BikerDwayneSeenText:
	text "Somos el grupo de"
	line "entrenadores de la"

	para "Federación Pokémon"
	line "de Kanto."

	para "¡Te vamos a"
	line "arrollar!"
	done

BikerDwayneBeatenText:
	text "¡Viva la"
	line "Federación"
	cont "Pokémon de Kanto!"
	done

BikerDwayneAfterBattleText:
	text "Tampoco te pongas"
	line "en plan tonto por"
	cont "haber ganado."
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
	text "Vía Subterránea:"
	line "Ciudad Azulona - "
	cont "Pueblo Lavanda."
	done

AdrianSeenText::
	text "Pareces bueno con"
	line "los Pokémon, "
	cont "¿Qué tal en"
	cont "química?"
	done

AdrianBeatenText::
	text "¡Ah!"
	line "¡Fusión nuclear!"
	done

AdrianAfterBattleText::
	text "¡Se me da mejor"
	line "en la escuela!"
	done

EusebioSeenText::
	text "¡Muy bien!"
	line "¡Echemos los"
	cont "dados!"
	done

EusebioBeatenText::
	text "¡Maldición!"
	line "¡Me quedé corto!"
	done

EusebioAfterBattleText::
	text "¡Hoy no es mi"
	line "día de suerte!"
	done

LadisSeenText::
	text "¡Necesitas una"
	line "buena estrategia!"
	done

LadisBeatenText::
	text "¡No"
	line "es lógico!"
	done

LadisAfterBattleText::
	text "Usa a Grimer"
	line "primero... y..."
	cont "y... después..."
	done

LuluSeenText::
	text "¡Me gustan los"
	line "Nidoran y por eso"
	cont "los colecciono!"
	done

LuluBeatenText::
	text "Pero,"
	line "¿por qué?"
	done

LuluAfterBattleText::
	text "¡Cuando los"
	line "Pokémon crecen se"
	cont "vuelven muy feos!"

	para "No me gustan"
	cont "cuando evolucionan"
	done

AndreaSeenText::
	text "¡Meowth es muy"
	line "mono, meow, meow!"
	done

AndreaBeatenText::
	text "¡Meow!"
	done

AndreaAfterBattleText::
	text "¡Creo que Pidgey"
	line "y Rattata también"
	cont "son muy monos!"
	done

VevaSeenText::
	text "¡Debemos de tener"
	line "un aspecto"
	cont "muy tonto!"
	done

VevaBeatenText:
	text "¡Mira lo"
	line "que has hecho!"
	done

VevaAfterBattleText::
	text "El guardián de la"
	line "puerta Azafrán no"
	cont "nos dejará pasar."

	para "¡Es muy malo!"
	done

NorberSeenText::
	text "¡Soy un jugador"
	line "errante!"
	done

NorberBeatenText::
	text "¡Perdí"
	line "el gran premio!"
	done

NorberAfterBattleText::
	text "¡El juego y los"
	line "Pokémon son como"
	cont "comer cacahuetes!"

	para "¡No puedes parar!"
	done

GenoSeenText::
	text "¿Qué Pokémon es"
	line "mono, redondo"
	cont "y blando?"
	done

GenoBeatenText::
	text "¡Alto!"

	para "¡No seas tan malo"
	line "con mi Pokémon!"
	done

GenoAfterBattleText::
	text "Dicen que"
	line "Clefairy se"
	cont "transforma cuando"
	cont "es expuesto a una"
	cont "Piedra Lunar."
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  8, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  9, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 17,  3, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 13,  3, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 16, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerDwayne, -1
	object_event 16, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBikerHarris, -1
	object_event 16, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerBikerZeke, -1
	object_event 35,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSupernerdSam, -1
	object_event 49, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdTom, -1
	object_event  8, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
	object_event 24,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerLadis, -1
	object_event  9,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerAdrian, -1
	object_event 45,  9, SPRITE_PI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerNorber, -1
	object_event 21, 12, SPRITE_PI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerEusebio, -1
	object_event 52,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerGeno, -1
	object_event 36,  9, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerLulu, -1
	object_event  6, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerAndrea, -1
	object_event 33, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerVeva, -1
