	object_const_def
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_LASS
	const GOLDENRODPOKECENTER1F_POKEFAN_F

GoldenrodPokecenter1F_MapScripts:
	def_scene_scripts
	scene_const SCENE_GOLDENRODPOKECENTER1F_GS_BALL

	def_callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecenter1F_GSBallSceneLeft:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1F_GSBallSceneRight:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	appear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement
	special RestartMapMusic
	disappear GOLDENRODPOKECENTER1F_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecenter1FGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecenter1FGameboyKidText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecenter1FPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecenter1FPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokeCenter1FLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokecomCenterWelcomeToTradeCornerText: ; unreferenced
	text "Hello! Welcome to"
	line "#COM CENTER"
	cont "TRADE CORNER."

	para "You can trade"
	line "#MON with other"
	cont "people far away."
	done

GoldenrodPokecomCenterWeMustHoldYourMonText: ; unreferenced
	text "To make a trade,"
	line "we must hold your"
	cont "#MON."

	para "Would you like to"
	line "trade?"
	done

GoldenrodPokecomCenterWhatMonDoYouWantText: ; unreferenced
	text "What kind of"
	line "#MON do you"
	cont "want in return?"
	done

GoldenrodPokecomCenterWeWillTradeYourMonForMonText: ; unreferenced
	text "Fine. We will try"
	line "to trade your"

	para "@"
	text_ram wStringBuffer3
	text " for"
	line "@"
	text_ram wStringBuffer4
	text "."

	para "We'll have to hold"
	line "your #MON"
	cont "during the trade."

	para "Please wait while"
	line "we prepare the"
	cont "room for it."
	done

GoldenrodPokecomCenterWeWillTradeYourMonForNewText: ; unreferenced
	text "Fine. We will try"
	line "to trade your"

	para "@"
	text_ram wStringBuffer3
	text " for a"
	line "#MON that you"
	cont "have never seen."

	para "We'll have to hold"
	line "your #MON"
	cont "during the trade."

	para "Please wait while"
	line "we prepare the"
	cont "room for it."
	done

GoldenrodPokecomCenterYourMonHasBeenReceivedText: ; unreferenced
	text "Your trade #MON"
	line "has been received."

	para "It will take time"
	line "to find a trade"

	para "partner. Please"
	line "come back later."
	done

GoldenrodPokecomCenterYouHaveOnlyOneMonText: ; unreferenced
	text "Oh? You have only"
	line "one #MON in"
	cont "your party. "

	para "Please come back"
	line "once you've in-"
	cont "creased the size"
	cont "of your party."
	done

GoldenrodPokecomCenterWeHopeToSeeYouAgainText: ; unreferenced
	text "We hope to see you"
	line "again."
	done

GoldenrodPokecomCenterCommunicationErrorText: ; unreferenced
	text "Communication"
	line "error…"
	done

GoldenrodPokecomCenterCantAcceptLastMonText: ; unreferenced
	text "If we accept that"
	line "#MON, what will"
	cont "you battle with?"
	done

GoldenrodPokecomCenterCantAcceptEggText: ; unreferenced
	text "Sorry. We can't"
	line "accept an EGG."
	done

GoldenrodPokecomCenterCantAcceptAbnormalMonText: ; unreferenced
	text "Sorry, but your"
	line "#MON appears to"

	para "be abnormal. We"
	line "can't accept it."
	done

GoldenrodPokecomCenterAlreadyHoldingMonText: ; unreferenced
	text "Oh? Aren't we"
	line "already holding a"
	cont "#MON of yours?"
	done

GoldenrodPokecomCenterCheckingTheRoomsText: ; unreferenced
	text "We'll check the"
	line "rooms."

	para "Please wait."
	done

GoldenrodPokecomCenterTradePartnerHasBeenFoundText: ; unreferenced
	text "Thank you for your"
	line "patience."

	para "A trade partner"
	line "has been found."
	done

GoldenrodPokecomCenterItsYourNewPartnerText: ; unreferenced
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."

	para "We hope to see you"
	line "again."
	done

GoldenrodPokecomCenterYourPartyIsFullText: ; unreferenced
	text "Uh-oh. Your party"
	line "is already full."

	para "Please come back"
	line "when you have room"
	cont "in your party."
	done

GoldenrodPokecomCenterNoTradePartnerFoundText: ; unreferenced
	text "It's unfortunate,"
	line "but no one has"

	para "come forward as a"
	line "trade partner."

	para "Would you like"
	line "your #MON back?"
	done

GoldenrodPokecomCenterReturnedYourMonText: ; unreferenced
	text "We have returned"
	line "your #MON."
	done

GoldenrodPokecomCenterYourMonIsLonelyText: ; unreferenced
	text "It's unfortunate,"
	line "but no one has"

	para "come forward as a"
	line "trade partner."

	para "We've held your"
	line "#MON for a long"

	para "time. As a result,"
	line "it is very lonely."

	para "Sorry, but we must"
	line "return it to you."
	done

GoldenrodPokecenter1FWeHopeToSeeYouAgainText_2: ; unreferenced
	text "We hope to see you"
	line "again."
	done

GoldenrodPokecomCenterContinueToHoldYourMonText: ; unreferenced
	text "Fine. We will"
	line "continue to hold"
	cont "your #MON."
	done

GoldenrodPokecomCenterRecentlyLeftYourMonText: ; unreferenced
	text "Oh? You left your"
	line "#MON with us"
	cont "only recently."

	para "Please come back"
	line "later."
	done

GoldenrodPokecomCenterSaveBeforeTradeCornerText: ; unreferenced
	text "We'll SAVE before"
	line "connecting to the"
	cont "CENTER."
	done

GoldenrodPokecomCenterWhichMonToTradeText: ; unreferenced
	text "Which #MON do"
	line "you want to trade?"
	done

GoldenrodPokecomCenterTradeCanceledText: ; unreferenced
	text "Sorry, but we must"
	line "cancel the trade."
	done

GoldenrodPokecomCenterEggTicketText: ; unreferenced
	text "Oh!"

	para "I see you have an"
	line "EGG TICKET!"

	para "It's a coupon that"
	line "special people can"

	para "redeem for a"
	line "special #MON!"
	done

GoldenrodPokecomCenterOddEggBriefingText: ; unreferenced
	text "Let me give you a"
	line "quick briefing."

	para "Trades held at the"
	line "TRADE CORNER are"

	para "between two"
	line "trainers who don't"

	para "know each other's"
	line "identity."

	para "As a result, it"
	line "may take time."

	para "However, an ODD"
	line "EGG is available"
	cont "just for you."

	para "It will be sent to"
	line "you right away."

	para "Please choose one"
	line "of the rooms in"

	para "the CENTER."
	line "An ODD EGG will be"

	para "sent from the"
	line "chosen room."
	done

GoldenrodPokecomCenterPleaseWaitAMomentText: ; unreferenced
	text "Please wait a"
	line "moment."
	done

GoldenrodPokecomCenterHereIsYourOddEggText: ; unreferenced
	text "Thank you for"
	line "waiting."

	para "We received your"
	line "ODD EGG."

	para "Here it is!"

	para "Please raise it"
	line "with loving care."
	done

GoldenrodPokecomCenterNoEggTicketServiceText: ; unreferenced
	text "I'm awfully sorry."

	para "The EGG TICKET"
	line "exchange service"
	cont "isn't running now."
	done

GoldenrodPokecomCenterNewsMachineText: ; unreferenced
	text "It's a #MON"
	line "NEWS MACHINE."
	done

GoldenrodPokecomCenterWhatToDoText: ; unreferenced
	text "What would you"
	line "like to do?"
	done

GoldenrodPokecomCenterNewsMachineExplanationText: ; unreferenced
	text "#MON NEWS is"
	line "news compiled from"

	para "the SAVE files of"
	line "#MON trainers."

	para "When reading the"
	line "NEWS, your SAVE"

	para "file may be sent"
	line "out."

	para "The SAVE file data"
	line "will contain your"

	para "adventure log and"
	line "mobile profile."

	para "Your phone number"
	line "will not be sent."

	para "The contents of"
	line "the NEWS will vary"

	para "depending on the"
	line "SAVE files sent by"

	para "you and the other"
	line "#MON trainers."

	para "You might even be"
	line "in the NEWS!"
	done

GoldenrodPokecomCenterWouldYouLikeTheNewsText: ; unreferenced
	text "¿Quieres leer las"
	line "Noticias?"
	done

GoldenrodPokecomCenterReadingTheLatestNewsText: ; unreferenced
	text "Leyendo las"
	line "últimas Noticias…"
	cont "Espera, por favor."
	done

GoldenrodPokecomCenterNoOldNewsText: ; unreferenced
	text "No hay Noticias"
	line "antiguas…"
	done

GoldenrodPokecomCenterCorruptedNewsDataText: ; unreferenced
	text "Los datos de las"
	line "Noticias están"
	cont "dañados."

	para "Por favor, baja"
	line "las Noticias otra"
	cont "vez."
	done

GoldenrodPokecomCenterMakingPreparationsText: ; unreferenced
	text "Estamos en los"
	line "preparativos."

	para "Por favor, vuelve"
	line "más tarde"
	cont

GoldenrodPokecomCenterSaveBeforeNewsMachineText: ; unreferenced
	text "GUARDAREMOS tu"
	line "progreso antes de"

	para "poner en marcha la"
	line "Máquina de las"
	cont "Noticias."
	done

GoldenrodPokecomCenterPerson1Text: ; unreferenced
	text "Uau, este CENTRO"
	line "pokémon es enorme."

	para "Lo acaban de"
	line "construir. También"

	para "han instalado"
	line "muchas máquinas"
	cont "nuevas."
	done

GoldenrodPokecomCenterPerson2Text: ; unreferenced
	text "¡Ideé algo nuevo"
	line "para el Centro de"
	cont "Cambio!"

	para "¡Equipo a Pidgey"
	line "con una Carta y"

	para "después preparo el"
	line "intercambio con"
	cont "otro Pokémon!"

	para "¡Si todo el mundo"
	line "lo hiciera, la"

	para "Carta llegaría a"
	line "todo tipo de"
	cont "gente!"

	para "¡Lo llamo Carta"
	line "Pidgey!"

	para "¡Si se vuelve"
	line "popular, voy a"

	para "hacer un montón de"
	line "nuevos amigos!"
	done

GoldenrodPokecomCenterPerson3Text: ; unreferenced
	text "Se dice que puedes"
	line "cambiar Pokémon"

	para "hasta con"
	line "desconocidos."

	para "Pero todavía están"
	line "con preparativos."
	done

GoldenrodPokecomCenterPerson4Text: ; unreferenced
	text "Una chica que no"
	line "conozco me envió"

	para "su Hoppip."
	line "Deberías cambiar"

	para "un Pokémon por"
	line "otro que quieras."
	done

GoldenrodPokecomCenterPerson5Text: ; unreferenced
	text "¡Recibí un Hoppip"
	line "hembra, pero se"
	cont "llama Stanley!"

	para "¡Así se llama mi"
	line "padre!"
	done

GoldenrodPokecomCenterPerson6Text: ; unreferenced
	text "¿Qué es la Máquina"
	line "de las Noticias?"

	para "¿Recoge noticias"
	line "de un área más"

	para "amplia que la"
	line "radio?"
	done

GoldenrodPokecomCenterPerson7Text: ; unreferenced
	text "El Centro Pokémon"
	line "se enlazará con"

	para "los otros Centros"
	line "Pokémon por"

	para "medio de una red"
	line "inalámbrica."

	para "Lo que significa"
	line "que podré conec-"
	cont "tarme con todo"
	line "tipo de gente."
	done

GoldenrodPokecomCenterPerson8Text: ; unreferenced
	text "Las máquinas no"
	line "están en uso"
	cont "todavía."

	para "Aunque mola venir"
	line "a un sitio tan"

	para "chulo antes que"
	line "nadie."
	done

GoldenrodPokecomCenterPerson9Text: ; unreferenced
	text "Mi amigo salió en"
	line "las Noticias hace"

	para "poco. ¡No me lo"
	line "podía creer!"
	done

GoldenrodPokecomCenterPerson10Text: ; unreferenced
	text "¡No puedo dejar de"
	line "leer las últimas"
	cont "Noticias!"
	done

GoldenrodPokecomCenterPerson11Text: ; unreferenced
	text "Si aparezco en las"
	line "Noticias y me hago"

	para "famoso, supongo"
	line "que me adorarán."

	para "Estoy tramando"
	line "cómo podría salir"
	cont "en las Noticias…"
	done

GoldenrodPokecenter1FGameboyKidText:
	text "En el Coliseo de"
	line "arriba se lucha"
	cont "enlazado."

	para "Los récords se"
	line "apuntan en la"

	para "pared, así que no"
	line "puedo perder."
	done

GoldenrodPokecomCenterPerson12Text: ; unreferenced
	text "Vine por aquí"
	line "cuando me enteré"

	para "de que el Centro"
	line "Pokémon de Trigal"

	para "tenía máquinas"
	line "nuevas que nadie"
	cont "había visto antes."

	para "Pero parece que"
	line "siguen ocupados"

	para "con todos los"
	line "preparativos…"
	done

GoldenrodPokecomCenterPerson13Text: ; unreferenced
	text "¡Sólo de ver todas"
	line "estas cosas nuevas"

	para "me siento mucho"
	line "más joven!"
	done

GoldenrodPokecenter1FLassText:
	text "Un Pokémon de"
	line "nivel superior no"
	cont "siempre gana."

	para "Aun así, su tipo"
	line "puede tener alguna"
	cont "desventaja."

	para "No creo que haya"
	line "un único Pokémon"

	para "que sea el más"
	line "fuerte."
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, ¿no?"

	para "¡Felicidades!"

	para "¡Estamos de"
	line "promoción, hemos"

	para "recibido una GS"
	line "BALL para ti!"

	para "¡Por favor,"
	line "acéptala!"
	done

GoldenrodPokeCenter1FLinkReceptionistPleaseDoComeAgainText:
	text "¡Vuelve cuando"
	line "quieras!"
	done

GoldenrodPokecomCenterSignText: ; unreferenced
	text "Centro <POKE>com"
	line "PB Información"

	para "Izquierda:"
	line "Administración"

	para "Centro:"
	line "Centro de Cambio"

	para "Derecha:"
	line "Noticias  Pokémon!"
	done

GoldenrodPokecomCenterNewsMachineNotYetText: ; unreferenced
	text "¡Es una Máquina de"
	line "Noticias Pokémon!"

	para "No está operativa"
	line "todavía…"

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
	text "¡Llevas mucho peso"
	line "en la mochila!"

	para "¡Oye! ¿No tendrás"
	line "algo llamado"
	cont "Carta Eón?"

	para "Mi hija está"
	line "buscando una."

	para "Puedes darme una,"
	line "¿verdad?"
	done

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
	text "¿Entregas una"
	line "Carta Eón?"
	done

GoldenrodPokecenter1FPokefanFThisIsForYouText:
	text "¡Oh, genial!"
	line "¡Gracias, cariño!"

	para "¡Toma esto en"
	line "agradecimiento!"
	done

GoldenrodPokecenter1FPokefanFDaughterWillBeDelightedText:
	text "¡A mi hija le"
	line "encantará!"
	done

GoldenrodPokecenter1FPokefanFTooBadText:
	text "¿Oh? ¿No tienes?"
	line "Qué lástima…"
	done

GoldenrodPokecenter1FPokefanFAnotherTimeThenText:
	text "Oh… Bueno, en otra"
	line "ocasión será."
	done

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
	text "<PLAYER> entrega"
	line "la Carta Eón."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOLDENROD_CITY, 15
	warp_event  4,  7, GOLDENROD_CITY, 15
	warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events
	coord_event  3,  7, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneLeft
	coord_event  4,  7, SCENE_GOLDENRODPOKECENTER1F_GS_BALL, GoldenrodPokecenter1F_GSBallSceneRight

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
	object_event  7,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
