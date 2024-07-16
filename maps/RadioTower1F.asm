	object_const_def
	const RADIOTOWER1F_RECEPTIONIST
	const RADIOTOWER1F_LASS
	const RADIOTOWER1F_YOUNGSTER
	const RADIOTOWER1F_ROCKET
	const RADIOTOWER1F_LUCKYNUMBERMAN
	const RADIOTOWER1F_CARD_WOMAN

RadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower1FReceptionistScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	writetext RadioTower1FReceptionistWelcomeText
	waitbutton
	closetext
	end

.Rockets:
	writetext RadioTower1FReceptionistNoToursText
	waitbutton
	closetext
	end

RadioTower1FLuckyNumberManScript:
	faceplayer
	opentext
	writetext RadioTower1FLuckyNumberManAskToPlayText
	promptbutton
	special CheckLuckyNumberShowFlag
	iffalse .skip
	special ResetLuckyNumberShowFlag
.skip
	special PrintTodaysLuckyNumber
	checkflag ENGINE_LUCKY_NUMBER_SHOW
	iftrue .GameOver
	writetext RadioTower1FLuckyNumberManThisWeeksIdIsText
	promptbutton
	closetext
	applymovement RADIOTOWER1F_LUCKYNUMBERMAN, RadioTower1FLuckyNumberManGoToPCMovement
	opentext
	writetext RadioTower1FLuckyNumberManCheckIfMatchText
	promptbutton
	waitsfx
	writetext RadioTower1FLuckyNumberManDotDotDotText
	playsound SFX_DEX_FANFARE_20_49
	waitsfx
	promptbutton
	special CheckForLuckyNumberWinners
	closetext
	applymovement RADIOTOWER1F_LUCKYNUMBERMAN, RadioTower1FLuckyNumberManReturnToPlayerMovement
	opentext
	ifless 2, .NoPrize ; 0-1 digits match
	ifless 3, .ThirdPlace ; 2 digits match
	ifless 5, .SecondPlace ; 3-4 digits match
	sjump .FirstPlace ; all digits match

.GameOver:
	writetext RadioTower1FLuckyNumberManComeAgainText
	waitbutton
	closetext
	end

.FirstPlace:
	writetext RadioTower1FLuckyNumberManPerfectMatchText
	playsound SFX_1ST_PLACE
	waitsfx
	promptbutton
	giveitem MASTER_BALL
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.SecondPlace:
	writetext RadioTower1FLuckyNumberManOkayMatchText
	playsound SFX_2ND_PLACE
	waitsfx
	promptbutton
	giveitem EXP_SHARE
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.ThirdPlace:
	writetext RadioTower1FLuckyNumberManWeakMatchText
	playsound SFX_3RD_PLACE
	waitsfx
	promptbutton
	giveitem PP_UP
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.NoPrize:
	writetext RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText
	waitbutton
	closetext
	end

.BagFull:
	writetext RadioTower1FLuckyNumberManNoRoomForYourPrizeText
	waitbutton
	closetext
	end

RadioTower1FRadioCardWomanScript:
	faceplayer
	opentext
	checkflag ENGINE_RADIO_CARD
	iftrue .GotCard
	writetext RadioTower1FRadioCardWomanOfferQuizText
	yesorno
	iffalse .NoQuiz
	writetext RadioTower1FRadioCardWomanQuestion1Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion2Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion3Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion4Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion5Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanYouWinText
	promptbutton
	getstring STRING_BUFFER_4, .RadioCardText
	scall .ReceiveItem
	writetext RadioTower1FPokegearIsARadioText
	promptbutton
	setflag ENGINE_RADIO_CARD
.GotCard:
	writetext RadioTower1FRadioCardWomanTuneInText
	waitbutton
	closetext
	end

.RadioCardText:
	db "Tarj. Radio@"

.ReceiveItem:
	jumpstd ReceiveItemScript
	end

.WrongAnswer:
	playsound SFX_WRONG
	writetext RadioTower1FRadioCardWomanWrongAnswerText
	waitbutton
	closetext
	end

.NoQuiz:
	writetext RadioTower1FRadioCardWomanNotTakingQuizText
	waitbutton
	closetext
	end

RadioTower1FLassScript:
	jumptextfaceplayer RadioTower1FLassText

RadioTower1FYoungsterScript:
	jumptextfaceplayer RadioTower1FYoungsterText

TrainerGruntM3:
	trainer GRUNTM, GRUNTM_3, EVENT_BEAT_ROCKET_GRUNTM_3, GruntM3SeenText, GruntM3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM3AfterBattleText
	waitbutton
	closetext
	end

RadioTower1FDirectory:
	jumptext RadioTower1FDirectoryText

RadioTower1FLuckyChannelSign:
	jumptext RadioTower1FLuckyChannelSignText

RadioTower1FLuckyNumberManGoToPCMovement:
	step RIGHT
	turn_head UP
	step_end

RadioTower1FLuckyNumberManReturnToPlayerMovement:
	step LEFT
	turn_head UP
	step_end

RadioTower1FReceptionistWelcomeText:
	text "¡Bienvenidos!"
	done

RadioTower1FReceptionistNoToursText:
	text "Hola. Lo siento,"
	line "pero hoy no se"
	cont "admiten visitas."
	done

RadioTower1FLuckyNumberManAskToPlayText:
	text "¿Quieres probar en"
	line "el Número de la"
	cont "Suerte?"

	para "¿Compruebo los"
	line "números ID de tus"
	cont "Pokémon?"

	para "Si tienes suerte,"
	line "ganarás un premio."
	done

RadioTower1FLuckyNumberManThisWeeksIdIsText:
	text "El número de esta"
	line "semana es @"
	text_ram wStringBuffer3
	text "."
	done

RadioTower1FLuckyNumberManCheckIfMatchText:
	text "A ver si coincide"
	line "con tu número."
	done

RadioTower1FLuckyNumberManDotDotDotText:
	text "<……>"
	line "<……>"
	done

RadioTower1FLuckyNumberManComeAgainText:
	text "Vuelve la próxima"
	line "semana y participa"

	para "otra vez en el"
	line "NUM de la Suerte."
	done

RadioTower1FLuckyNumberManPerfectMatchText:
	text "¡Uauu! ¡Tus cinco"
	line "números coinciden!"

	para "¡Ya tenemos"
	line "ganador!"

	para "¡Has ganado una"
	line "Máster Ball!"
	done

RadioTower1FLuckyNumberManOkayMatchText:
	text "¡Oye! ¡Tus tres"
	line "últimos números"
	cont "coinciden!"

	para "¡Ganaste el"
	line "segundo premio:"
	cont "Repartir Exp!"
	done

RadioTower1FLuckyNumberManWeakMatchText:
	text "¡Ooooh! ¡Tus dos"
	line "últimos números"
	cont "coinciden!"

	para "Ganaste el tercer"
	line "premio: Más PP."
	done

RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText:
	text "¡No! Tus números"
	line "ID no coinciden."
	done

RadioTower1FLuckyNumberManNoRoomForYourPrizeText:
	text "No tienes sitio"
	line "para tu premio."

	para "Hazle sitio y"
	line "vuelve enseguida."
	done

RadioTower1FRadioCardWomanOfferQuizText:
	text "Ahora tenemos una"
	line "promoción"
	cont "especial."

	para "Acierta estas 5"
	line "preguntas y gana"
	cont "una Tarjeta Radio."

	para "Introdúcela en tu"
	line "<POKE>gear para oír"

	para "la radio siempre"
	line "que quieras."

	para "¿Quieres"
	line "participar?"
	done

RadioTower1FRadioCardWomanQuestion1Text:
	text "1a Pregunta:"

	para "¿Hay Pokémon que"
	line "sólo aparecen por"
	cont "la mañana?"
	done

RadioTower1FRadioCardWomanQuestion2Text:
	text "¡Correcto!"
	line "2a Pregunta:"

	para "¿Es verdad que no"
	line "puedes comprar una"

	para "baya en una"
	line "Tienda?"
	done

RadioTower1FRadioCardWomanQuestion3Text:
	text "¡Acertaste!"
	line "3a Pregunta:"

	para "¿Contiene la MO01"
	line "el movimiento"
	cont "Destello?"
	done

RadioTower1FRadioCardWomanQuestion4Text:
	text "¡Vas bien!"
	line "4a Pregunta:"

	para "¿Pegaso usa"
	line "Pokémon pájaro?"
	done

RadioTower1FRadioCardWomanQuestion5Text:
	text "¡Guau! ¡Correcto!"
	line "Ésta es la última"
	cont "pregunta:"

	para "¿Sale Charmander"
	line "en las máquinas"

	para "del Casino de"
	line "Ciudad Trigal?"
	done

RadioTower1FRadioCardWomanYouWinText:
	text "¡Bingo!"
	line "¡Enhorabuena!"

	para "Éste es tu premio:"
	line "¡la Tarjeta Radio!"
	done

RadioTower1FPokegearIsARadioText:
	text "¡El <POKE>gear de"
	line "<PLAYER> se puede"
	cont "usar como radio!"
	done

RadioTower1FRadioCardWomanTuneInText:
	text "Sintoniza nuestros"
	line "programas."
	done

RadioTower1FRadioCardWomanWrongAnswerText:
	text "Lo siento mucho,"
	line "pero te has"

	para "equivocado."
	line "¡Vuelve a probar!"
	done

RadioTower1FRadioCardWomanNotTakingQuizText:
	text "¡Ah! Entiendo."
	line "Vuelve a probar si"
	cont "cambias de idea."
	done

RadioTower1FLassText:
	text "Nardo es un DJ"
	line "fabuloso."

	para "¡Su dulce voz me"
	line "derrite!"
	done

RadioTower1FYoungsterText:
	text "Me gusta Rosa, de"
	line "la Hora Pokémon,"

	para "aunque sólo"
	line "conozca su voz."
	done

GruntM3SeenText:
	text "¡Por fin nos hemos"
	line "apoderado de la"
	cont "Torre Radio!"

	para "¡Ahora todos"
	line "experimentarán el"

	para "verdadero terror"
	line "del Team Rocket!"

	para "¡Ya veréis qué"
	line "horribles somos!"
	done

GruntM3BeatenText:
	text "¡Demasiado fuerte!"
	line "Te vigilaremos…"
	done

GruntM3AfterBattleText:
	text "Eres muy fuerte."

	para "Arruinarías"
	line "nuestros planes."

	para "Mejor alertar a"
	line "los otros…"
	done

RadioTower1FDirectoryText:
	text "PB Recepción"
	line "P1 Ventas"

	para "P2 Personal"
	line "P3 Producción"

	para "P4 Oficinal del"
	line "   Director"
	done

RadioTower1FLuckyChannelSignText:
	text "¡CANAL SUERTE!"

	para "¡Gana con los ID"
	line "de los Pokémon!"

	para "¡Cambia Pokémon"
	line "y reúne diferentes"
	cont "números ID!"
	done

RadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 11
	warp_event  3,  7, GOLDENROD_CITY, 11
	warp_event 15,  0, RADIO_TOWER_2F, 2

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower1FDirectory
	bg_event 13,  0, BGEVENT_READ, RadioTower1FLuckyChannelSign

	def_object_events
	object_event  5,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower1FReceptionistScript, -1
	object_event 16,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower1FLassScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 15,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower1FYoungsterScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 14,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower1FLuckyNumberManScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 12,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower1FRadioCardWomanScript, EVENT_GOLDENROD_CITY_CIVILIANS
