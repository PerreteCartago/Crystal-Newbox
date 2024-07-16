	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F
	const ROUTE35GOLDENRODGATE_FISHER

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "Cueva Oscura da"
	next "a otro camino@"

GiftSpearowName:
	db "Espi@"

GiftSpearowOTName:
	db "Lucas@"

	db 0 ; unused

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateFisherScript:
	jumptextfaceplayer Route35GoldenrodGateFisherText

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "¡Perdona, joven!"
	line "¿Puedes hacerme un"
	cont "favor?"

	para "¿Puedes darle este"
	line "Pokémon con Carta"
	cont "a mi amigo?"

	para "Está en la"
	line "Ruta 31."
	done

Route35GoldenrodGateRandyThanksText:
	text "¿Lo harás? Genial."
	line "¡Gracias, joven!"

	para "Mi amigo es un"
	line "chico gordinflón"

	para "que siempre está"
	line "durmiendo."

	para "¡Le reconocerás"
	line "enseguida!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> recibió"
	line "Pokémon con Carta."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "Puedes leerla,"
	line "¡pero no la"
	cont "pierdas! ¡Ruta 31!"

	para "Ah, sí. Un extraño"
	line "árbol bloqueaba el"
	cont "camino."

	para "¿Lo habrán"
	line "retirado ya?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "No puedes llevar"
	line "otro Pokémon…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "¡Oh…! Entonces,"
	line "no importa…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "¡Gracias, joven!"
	line "¡Muchas gracias"

	para "por habérselo"
	line "llevado!"

	para "¡Toma esto por"
	line "las molestias!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "¿A que mi amigo"
	line "estaba durmiendo?"
	cont "Te lo dije."
	done

Route35GoldenrodGatePokefanFText:
	text "Un extraño árbol"
	line "bloquea el camino."

	para "Si le hablas,"
	line "se mueve."

	para "Dicen que se"
	line "volvió loco cuando"

	para "alguien lo mojó"
	line "con una Regadera."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "Me gusta la Nana"
	line "Pokémon que ponen"
	cont "en la radio."
	done

Route35GoldenrodGateFisherText:
	text "Me pregunto"
	line "cuántos tipos de"

	para "Pokémon hay en"
	line "el mundo."

	para "Hace tres años, el"
	line "Prof. Oak dijo que"

	para "había 150 tipos"
	line "distintos."
	done


Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1
