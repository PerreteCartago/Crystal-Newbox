	object_const_def
	const ROUTE19_SWIMMER_GIRL1
	const ROUTE19_SWIMMER_GUY1
	const ROUTE19_SWIMMER_GUY2
	const ROUTE19_SWIMMER_GUY3
	const ROUTE19_FISHER1
	const ROUTE19_FISHER2
	const ROUTE19_SWIMMER_GUY4
	const ROUTE19_SWIMMER_GUY5
	const ROUTE19_SWIMMER_GUY6
	const ROUTE19_SWIMMER_GUY7
	const ROUTE19_SWIMMER_GUY8
	const ROUTE19_SWIMMER_GIRL2
	const ROUTE19_SWIMMER_GIRL3
	const ROUTE19_SWIMMER_GIRL4
	
Route19_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route19ClearRocksCallback

Route19ClearRocksCallback:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .Done
	changeblock  6,  6, $7a ; rock
	changeblock  8,  6, $7a ; rock
	changeblock 10,  6, $7a ; rock
	changeblock 12,  8, $7a ; rock
	changeblock  4,  8, $7a ; rock
	changeblock 10, 10, $7a ; rock
.Done:
	endcallback

TrainerSwimmerfDawn:
	trainer SWIMMERF, DAWN, EVENT_BEAT_SWIMMERF_DAWN, SwimmerfDawnSeenText, SwimmerfDawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDawnAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermHarold:
	trainer SWIMMERM, HAROLD, EVENT_BEAT_SWIMMERM_HAROLD, SwimmermHaroldSeenText, SwimmermHaroldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermHaroldAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermJerome:
	trainer SWIMMERM, JEROME, EVENT_BEAT_SWIMMERM_JEROME, SwimmermJeromeSeenText, SwimmermJeromeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermJeromeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermTucker:
	trainer SWIMMERM, TUCKER, EVENT_BEAT_SWIMMERM_TUCKER, SwimmermTuckerSeenText, SwimmermTuckerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermTuckerAfterBattleText
	waitbutton
	closetext
	end

Route19Fisher1Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher1Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher1Text_RocksCleared
	waitbutton
	closetext
	end

Route19Fisher2Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher2Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher2Text_RocksCleared
	waitbutton
	closetext
	end

Route19Sign:
	jumptext Route19SignText

CarefulSwimmingSign:
	jumptext CarefulSwimmingSignText

TrainerMarcelo:
	trainer SWIMMERM, MARCELO, EVENT_BEAT_MARCELO, MarceloSeenText, MarceloBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MarceloAfterBattleText
	waitbutton
	closetext
	end

TrainerRicardo:
	trainer SWIMMERM, RICARDO, EVENT_BEAT_RICARDO, RicardoSeenText, RicardoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RicardoAfterBattleText
	waitbutton
	closetext
	end

TrainerToni:
	trainer SWIMMERM, TONI, EVENT_BEAT_TONI, ToniSeenText, ToniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ToniAfterBattleText
	waitbutton
	closetext
	end

TrainerMateo:
	trainer SWIMMERM, MATEO, EVENT_BEAT_MATEO, MateoSeenText, MateoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MateoAfterBattleText
	waitbutton
	closetext
	end

TrainerAlejo:
	trainer SWIMMERM, ALEJO, EVENT_BEAT_ALEJO, AlejoSeenText, AlejoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AlejoAfterBattleText
	waitbutton
	closetext
	end

TrainerAlicia:
	trainer SWIMMERF, ALICIA, EVENT_BEAT_ALICIA, AliciaSeenText, AliciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AliciaAfterBattleText
	waitbutton
	closetext
	end

TrainerCoro:
	trainer SWIMMERF, CORO, EVENT_BEAT_CORO, CoroSeenText, CoroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CoroAfterBattleText
	waitbutton
	closetext
	end

TrainerAnia:
	trainer SWIMMERF, ANIA, EVENT_BEAT_ANIA, AniaSeenText, AniaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AniaAfterBattleText
	waitbutton
	closetext
	end

RicardoSeenText:
	text "¡Tengo que"
	line "calentar antes"
	cont "de nadar!"
	done

RicardoBeatenText:
	text "¡Ya"
	line "estoy caliente!"
	done

RicardoAfterBattleText::
	text "¡Gracias chico!"
	line "¡Ya puedo nadar!"
	done

MarceloSeenText:
	text "¡Alto! ¡Te va a"
	line "dar un ataque al"
	cont "corazón!"
	done

MarceloBeatenText:
	text "¡¡Auuu!!"
	line "¡Está helada!"
	done

MarceloAfterBattleText::
	text "¡Cuidado con"
	line "TENTACOOL!"
	done

MateoSeenText:
	text "¡Me gusta nadar!"
	line "¿Y a ti?"
	done

MateoBeatenText:
	text_start
	line "¡Vaya planchazo!"
	done

MateoAfterBattleText::
	text "¡Puedo ganar a"
	line "los #MON"
	cont "nadando!"
	done

ToniSeenText:
	text "¡Miro al mar"
	line "para olvidar!"
	done

ToniBeatenText:
	text "¡Oooooh!"
	line "¡Qué traumático!"
	done

ToniAfterBattleText::
	text "¡Miro al mar"
	line "para olvidar!"
	done

AniaSeenText:
	text "¡Oh! ¡Ese <POKE>mon"
	line "me gusta! ¿Me lo"
	cont "darás si gano?"
	done

AniaBeatenText:
	text "¡Oh!"
	line "¡He perdido!"
	done

AniaAfterBattleText::
	text "¡Queda un largo"
	line "camino hasta las"
	cont "ISLAS ESPUMA!"
	done

AliciaSeenText:
	text "¡Nadar es genial!"
	line "¡Pero quemarse"
	cont "al Sol no!"
	done

AliciaBeatenText:
	text_start
	line "¡Qué horror!"
	done

AliciaAfterBattleText::
	text "Mi novio quería"
	line "nadar hasta las"
	cont "ISLAS ESPUMA."
	done

AlejoSeenText:
	text "¡Estas aguas son"
	line "traicioneras!"
	done

AlejoBeatenText:
	text "¡Ooh!"
	line "¡Peligroso!"
	done

AlejoAfterBattleText::
	text "¡Me ha dado un"
	line "calambre! ¡Glup!"
	done

CoroSeenText:
	text "Nadé hasta aquí,"
	line "pero ya me cansé."
	done

CoroBeatenText:
	text "Estoy"
	line "agotada..."
	done

CoroAfterBattleText::
	text "LAPRAS es enorme,"
	line "sube encima de él"
	cont "y no te mojarás."
	done

_Route19Sign::
	text "Ruta 19:"
	line "Cidad Fucsia -"
	cont "Islas Espuma."
	done

SwimmermHaroldSeenText:
	text "¿Has nadado alguna"
	line "vez en el mar por"
	cont "la noche?"
	done

SwimmermHaroldBeatenText:
	text "¡Glup…!"
	done

SwimmermHaroldAfterBattleText:
	text "De noche, el mar"
	line "está oscuro. Da la"

	para "impresión de que"
	line "te va a tragar."
	done

SwimmermTuckerSeenText:
	text "(Resoplido)…"
	line "Un… poco más…"

	para "y… llegaré…"
	line "a Ciudad Fucsia…"
	done

SwimmermTuckerBeatenText:
	text "¡Me ahogo!"
	done

SwimmermTuckerAfterBattleText:
	text "Le… pedí a mi"
	line "novia que nadara"
	cont "a Ciudad Fucsia…"
	done

SwimmerfDawnSeenText:
	text "¡No me gustan los"
	line "peques!"
	done

SwimmerfDawnBeatenText:
	text "Podría ganarte"
	line "nadando…"
	done

SwimmerfDawnAfterBattleText:
	text "No hay que nadar"
	line "mucho desde Ciudad"

	para "Fucsia a las Islas"
	line "Espuma…"

	para "¡Con todo lo gran-"
	line "de que es, menudo"
	cont "blandengue!"
	done

SwimmermJeromeSeenText:
	text "Soy malísimo"
	line "nadando."

	para "Sólo estoy"
	line "chapoteando por"

	para "estas aguas poco"
	line "profundas."
	done

SwimmermJeromeBeatenText:
	text "Creía que podía"
	line "ganar."
	done

SwimmermJeromeAfterBattleText:
	text "Puede que no nade"
	line "muy bien, pero me"
	cont "encanta el mar."
	done

Route19Fisher1Text:
	text "Lo siento. La"
	line "carretera está"
	cont "cortada por obras."

	para "Si quieres llegar"
	line "a Isla Canela, ve"

	para "por el Sur, desde"
	line "Pueblo Paleta."
	done

Route19Fisher1Text_RocksCleared:
	text "Estoy sudando."
	line "¡Voy a bañarme!"
	done

Route19Fisher2Text:
	text "A saber cuánto se"
	line "tardaría en mover"
	cont "esta roca…"
	done

Route19Fisher2Text_RocksCleared:
	text "Las obras de la"
	line "carretera ya han"
	cont "terminado."

	para "Ya puedo volver a"
	line "pescar."
	done

Route19SignText:
	text "RUTA 19"

	para "Ciudad Fucsia -"
	line "Islas Espuma"
	done

CarefulSwimmingSignText:
	text "Por favor, ten"
	line "cuidado si vas"

	para "nadando hasta las"
	line "Islas Espuma"

	para "Policía C. Fucsia"
	done

Route19_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_19_FUCHSIA_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 11, 15, BGEVENT_READ, Route19Sign
	bg_event 11,  1, BGEVENT_READ, CarefulSwimmingSign

	def_object_events
	object_event  8, 56, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerSwimmerfDawn, -1
	object_event  9, 29, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermHarold, -1
	object_event  5, 40, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermJerome, -1
	object_event 12, 45, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSwimmermTucker, -1
	object_event  6, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, Route19Fisher1Script, -1
	object_event  9, 13, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route19Fisher2Script, -1
	object_event 15, 37, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerRicardo, -1
	object_event  3, 32, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerMarcelo, -1
	object_event 11, 23, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerToni, -1
	object_event  4, 51, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerMateo, -1
	object_event 15, 51, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerAlejo, -1
	object_event 16, 26, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerAlicia, -1
	object_event 14, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerCoro, -1
	object_event  3, 22, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerAnia, -1
