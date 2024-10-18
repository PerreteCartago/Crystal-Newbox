	object_const_def
	const ROUTE11_YOUNGSTER1
	const ROUTE11_YOUNGSTER2
	const ROUTE11_YOUNGSTER3
	const ROUTE11_YOUNGSTER4
	const ROUTE11_FRUIT_TREE
	const ROUTE11_YOUNGSTER5
	const ROUTE11_PI1
	const ROUTE11_PI2
	const ROUTE11_PI3
	const ROUTE11_PI4
	const ROUTE11_ENGINEER1
	const ROUTE11_ENGINEER2

Route11_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerYoungsterOwen:
	trainer YOUNGSTER, OWEN, EVENT_BEAT_YOUNGSTER_OWEN, YoungsterOwenSeenText, YoungsterOwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterOwenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJason:
	trainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJasonAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicHerman:
	trainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicHermanAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicFidel:
	trainer PSYCHIC_T, FIDEL, EVENT_BEAT_PSYCHIC_FIDEL, PsychicFidelSeenText, PsychicFidelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFidelAfterBattleText
	waitbutton
	closetext
	end

TrainerDavi:
	trainer YOUNGSTER, DAVI, EVENT_BEAT_DAVI, DaviSeenText, DaviBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DaviAfterBattleText
	waitbutton
	closetext
	end

TrainerHugue:
	trainer PI, HUGUE, EVENT_BEAT_HUGUE, HugueSeenText, HugueBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HugueAfterBattleText
	waitbutton
	closetext
	end

TrainerJaren:
	trainer PI, JAREN, EVENT_BEAT_JAREN, JarenSeenText, JarenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JarenAfterBattleText
	waitbutton
	closetext
	end

TrainerDarian:
	trainer PI, DARIAN, EVENT_BEAT_DARIAN, DarianSeenText, DarianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DarianAfterBattleText
	waitbutton
	closetext
	end

TrainerGaspar:
	trainer PI, GASPAR, EVENT_BEAT_GASPAR, GasparSeenText, GasparBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GasparAfterBattleText
	waitbutton
	closetext
	end

TrainerBernardo:
	trainer ENGINEER, BERNARDO, EVENT_BEAT_BERNARDO, BernardoSeenText, BernardoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BernardoAfterBattleText
	waitbutton
	closetext
	end

TrainerPerico:
	trainer ENGINEER, PERICO, EVENT_BEAT_PERICO, PericoSeenText, PericoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PericoAfterBattleText
	waitbutton
	closetext
	end

Route11Sign:
	jumptext Route11SignText

Route11FruitTree:
	fruittree FRUITTREE_ROUTE_11

Route11HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_11_HIDDEN_REVIVE

YoungsterOwenSeenText:
	text "No se puede hacer"
	line "trampa en Pokémon."

	para "¡Que quede bien"
	line "claro!"
	done

YoungsterOwenBeatenText:
	text "¿Qué? ¿Cómo ha"
	line "podido ocurrir?"
	done

YoungsterOwenAfterBattleText:
	text "He luchado con"
	line "con coraje."

	para "Mi honor está"
	line "intacto."
	done

YoungsterJasonSeenText:
	text "Cuando llevo"
	line "pantalones cortos"

	para "por la hierba, me"
	line "pican las piernas."
	done

YoungsterJasonBeatenText:
	text "¡Ayyyy!"
	line "¡Me han pisado!"
	done

YoungsterJasonAfterBattleText:
	text "Voy a capturar más"
	line "Pokémon en la"
	cont "hierba."
	done

PsychicHermanSeenText:
	text "<……>"
	done

PsychicHermanBeatenText:
	text "<……>"
	done

PsychicHermanAfterBattleText:
	text "…"

	para "Perdí cuando tenía"
	line "los ojos cerrados."
	done

PsychicFidelSeenText:
	text "Ya veo…"

	para "Todo lo que hay"
	line "que ver de ti…"
	done

PsychicFidelBeatenText:
	text "No me imaginaba tu"
	line "poder…"
	done

PsychicFidelAfterBattleText:
	text "Fuerza de"
	line "convicción…"

	para "Eres fuerte porque"
	line "confías en tus"
	cont "Pokémon."
	done

Route11SignText:
	text "Ruta 11"
	done

HugueSeenText::
	text "¡Gana, pierde o"
	line "empata!"
	done

HugueBeatenText::
	text "¡Vale!"
	line "¡Has ganado!"
	done

HugueAfterBattleText::
	text "¡Los Pokémon son"
	line "vida! ¡Y vivir"
	cont "es jugar!"
	done

JarenSeenText::
	text "¡Competición!"
	line "¡No me canso de"
	cont "competir!"
	done

JarenBeatenText::
	text "¡Tuve"
	line "una oportunidad!"
	done

JarenAfterBattleText::
	text "¡No puedes ser un"
	line "cobarde en el"
	cont "mundo Pokémon!"
	done

DaviSeenText::
	text "¡Vamos allá, pero"
	line "no hagas trampas!"
	done

DaviBeatenText::
	text "¿Qué?"
	line "¡No puede ser!"
	done

DaviAfterBattleText::
	text "¡Hice todo lo que"
	line "pude! ¡Y no me"
	cont "arrepiento!"
	done

BernardoSeenText::
	text "¡Cuidado! ¡Estoy"
	line "colocando unos"
	cont "cables!"
	done

BernardoBeatenText::
	text "¡Muy"
	line "eléctrico!"
	done

BernardoAfterBattleText::
	text "¡Di a todos"
	line "que ahorren"
	cont "energía!"
	done

GasparSeenText::
	text "¡JAJAJA! ¡No he"
	line "perdido nunca!"
	done

GasparBeatenText::
	text "¡La primera"
	line "vez que pierdo!"
	done

GasparAfterBattleText::
	text "¡Has tenido mucha"
	line "suerte!"
	done

DarianSeenText::
	text "Nunca he ganado..."
	done

DarianBeatenText::
	text "Se veía"
	line "venir..."
	done

DarianAfterBattleText::
	text "Tengo mala"
	line "suerte."
	done

PericoSeenText::
	text "¡Cuidado con"
	line "esos cables!"
	done

PericoBeatenText::
	text "¡Uaauu!"
	line "¡Vaya chispazo!"
	done

PericoAfterBattleText::
	text "¡Mejor volvamos"
	line "al trabajo!"
	done

Route11_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 43,  8, ROUTE_11_GATE_1F, 1
	warp_event 43,  9, ROUTE_11_GATE_1F, 2

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, Route11Sign
	bg_event 40,  5, BGEVENT_ITEM, Route11HiddenRevive

	def_object_events
	object_event 22, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterOwen, -1
	object_event 14,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterJason, -1
	object_event 22,  0, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerPsychicHerman, -1
	object_event 11,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicFidel, -1
	object_event 42, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11FruitTree, -1
	object_event 43,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerDavi, -1
	object_event 26,  9, SPRITE_PI, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHugue, -1
	object_event 37, 17, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerJaren, -1
	object_event  7,  4, SPRITE_PI, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerDarian, -1
	object_event 33,  0, SPRITE_PI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerGaspar, -1
	object_event 23,  5, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 4, TrainerBernardo, -1
	object_event  2, 16, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 3, TrainerPerico, -1
