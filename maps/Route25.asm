	object_const_def
	const ROUTE25_MISTY
	const ROUTE25_COOLTRAINER_M1
	const ROUTE25_SUPER_NERD
	const ROUTE25_COOLTRAINER_M2
	const ROUTE25_POKE_BALL
	const ROUTE25_POKEFAN_M
	const ROUTE25_LASS1
	const ROUTE25_YOUNGSTER4
	const ROUTE25_LASS2
	const ROUTE25_YOUNGSTER1
	const ROUTE25_YOUNGSTER2
	const ROUTE25_YOUNGSTER3
	const ROUTE25_COOLTRAINER_M3
	const ROUTE25_POKEFAN_M2
;	const ROUTE25_POKEFAN_M3
	const ROUTE25_POKEFAN_M4
	const ROUTE25_COOLTRAINER_F

Route25_MapScripts:
	def_scene_scripts
	scene_script Route25Noop1Scene, SCENE_ROUTE25_NOOP
	scene_script Route25Noop2Scene, SCENE_ROUTE25_MISTYS_DATE

	def_callbacks

Route25Noop1Scene:
	end

Route25Noop2Scene:
	end

Route25MistyDate1Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement1
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement1
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement1
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route25MistyDate2Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement2
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement2
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement2
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route25MistyDate3Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement1
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement3
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement1
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

TrainerSupernerdPat:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, SupernerdPatSeenText, SupernerdPatBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdPatAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermKevin:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_KEVIN
	iftrue .AfterBattle
	checkevent EVENT_CLEARED_NUGGET_BRIDGE
	iftrue .AfterNuggetBridge
	writetext CooltrainermKevinNuggetText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoomForNugget
	setevent EVENT_CLEARED_NUGGET_BRIDGE
.AfterNuggetBridge:
	writetext CooltrainermKevinSeenText
	waitbutton
	closetext
	winlosstext CooltrainermKevinBeatenText, 0
	loadtrainer COOLTRAINERM, KEVIN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_KEVIN
	opentext
.AfterBattle:
	writetext CooltrainermKevinAfterBattleText
	waitbutton
.NoRoomForNugget:
	closetext
	end

CharmanderScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARMANDER
	iftrue .GotCharmander
	writetext YouTakeThisCharmanderText
	yesorno
	iffalse .Refused
	writetext ThanksText
	promptbutton
	waitsfx
	writetext ReceivedCharmanderText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHARMANDER, 5
	setevent EVENT_GOT_CHARMANDER
	writetext CharmanderAlternatetiveText
	waitbutton
	closetext
	end

.Refused:
	writetext NoCharmanderText
	waitbutton
	closetext
	end

.GotCharmander:
	writetext AfterGiveAwayText
	waitbutton
	closetext
	end

BillsHouseSign:
	jumptext BillsHouseSignText

Route25Protein:
	itemball PROTEIN

Route25HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_25_HIDDEN_POTION

Route25MistysDateLeavesMovement1:
	big_step DOWN
	step_end

Route25MistysDateLeavesMovement2:
	big_step DOWN
	big_step DOWN
	step_end


Route25MistyApproachesPlayerMovement3:
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyApproachesPlayerMovement1:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyApproachesPlayerMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement1:
	step DOWN
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement2:
	step UP
	step LEFT
	step_end

Route25MistyLeavesMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

TrainerHerminia:
	trainer LASS, CONNIE3, EVENT_BEAT_CONNIE3, HerminiaSeenText, HerminiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HerminiaAfterBattleText
	waitbutton
	closetext
	end

TrainerCiro:
	trainer YOUNGSTER, CIRO, EVENT_BEAT_CIRO, CiroSeenText, CiroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CiroAfterBattleText
	waitbutton
	closetext
	end

TrainerDane:
	trainer YOUNGSTER, DANE, EVENT_BEAT_DANE, DaneSeenText, DaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DaneAfterBattleText
	waitbutton
	closetext
	end

TrainerFidel:
	trainer COOLTRAINERM, STEVE, EVENT_BEAT_STEVE, FidelSeenText, FidelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FidelAfterBattleText
	waitbutton
	closetext
	end

TrainerPepe:
	trainer YOUNGSTER, PEPE, EVENT_BEAT_PEPE, PepeSeenText, PepeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PepeAfterBattleText
	waitbutton
	closetext
	end

TrainerFrancis:
	trainer HIKER, FRANCIS, EVENT_BEAT_FRANCIS, FrancisSeenText, FrancisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FrancisAfterBattleText
	waitbutton
	closetext
	end

TrainerUbaldo:
	trainer HIKER, UBALDO, EVENT_BEAT_UBALDO, UbaldoSeenText, UbaldoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext UbaldoAfterBattleText
	waitbutton
	closetext
	end

TrainerNoboru:
	trainer HIKER, NOBORU, EVENT_BEAT_NOBORU, NoboruSeenText, NoboruBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NoboruAfterBattleText
	waitbutton
	closetext
	end

TrainerElia:
	trainer COOLTRAINERF, ELIA, EVENT_BEAT_ELIA, EliaSeenText, EliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EliaAfterBattleText
	waitbutton
	closetext
	end

EliaSeenText:
	text "¡Hola!"

	para "Mi chico es"
	line "genial."
	done

EliaBeatenText:
	text "¡No estaba en muy"
	line "buena forma."
	done

EliaAfterBattleText:
	text "¡Ojalá mi chico"
	line "fuera tan bueno"
	cont "como tú."
	done

NoboruSeenText:
	text "¿Estoy buscando a"
	line "un coleccionista"
	cont "que vive en el"
	cont "Cabo Celeste."
	done

NoboruBeatenText:
	text "¡Me has ganado!"
	done

NoboruAfterBattleText:
	text "El coleccionista"
	line "tiene muchos"
	cont "Pokémon raros."
	done

UbaldoSeenText:
	text "¿Vas a casa de"
	line "Bill?"

	para "¡Pues luchemos"
	line "primero."
	done

UbaldoBeatenText:
	text "¡Me rindo!"
	done

UbaldoAfterBattleText:
	text "El camino de abajo"
	line "es un atajo a"
	cont "Ciudad Celeste."
	done

FrancisSeenText:
	text "Acabo de bajar del"
	line "Monte Moon, pero"
	cont "estoy listo."
	done

FrancisBeatenText:
	text "¡Te has esforzado"
	line "mucho."
	done

FrancisAfterBattleText:
	text "¡Aaaaaaaargh!"

	para "Me ha mordido un"
	line "Zubat."
	done

FidelSeenText:
	text "Soy un buen"
	line "chico"

	para "Y tengo novia."
	done

FidelBeatenText:
	text "Vaya..."
	done

FidelAfterBattleText:
	text "Bueno, mi chica"
	line "me animará."
	done

PepeSeenText:
	text "Los entrenadores"
	line "de la zona vienen"
	cont "aquí a practicar."
	done

PepeBeatenText:
	text "¡Eres"
	line "espectacular!"
	done

PepeAfterBattleText:
	text "Todo Pokémon tiene"
	line "puntos débiles."

	para "Por eso me gusta"
	line "entrenar varios"
	cont "tipos."
	done

DaneSeenText:
	text "Mi padre me llevó"
	line "a una gran fiesta"
	cont "en el SS Anne, en"
	cont "Ciudad Carmín."
	done

DaneBeatenText:
	text "¡No estoy"
	line "enfadado!"
	done

DaneAfterBattleText:
	text "En el SS Anne vi"
	line "entrenadores de"
	cont "todo el mundo."
	done

CiroSeenText:
	text "¡Sabía que tenía"
	line "que luchar"
	cont "contigo!"
	done

CiroBeatenText:
	text "¡Sabía que iba a"
	line "perder!"
	done

CiroAfterBattleText:
	text "Si tu Pokémon"
	line "está confuso lo"
	cont "mejor es cambiarlo"
	done

HerminiaSeenText:
	text "Mi amigo tiene"
	line "unos Pokémon muy"
	cont "monos."

	para "¡Qué envidia!"
	done

HerminiaBeatenText:
	text "¡No estoy"
	line "enfadada!"
	done

HerminiaAfterBattleText:
	text "¿Vienes del Monte"
	line "Moon?"

	para "¿Me das un"
	line "Clefairy?"
	done

Route25MistyDateText:
	text "Misty: ¡Auuu!"
	line "¿Por qué has"

	para "tenido que venir a"
	line "molestarnos?"

	para "¿Sabes cómo te"
	line "llama la gente?"

	para "¡Pelma! ¿Me oyes"
	line "bien, pelma?"

	para "…"

	para "¿Eh…?"
	line "Esas Medallas…"

	para "¿Son Medallas de"
	line "Gimnasio de Johto?"

	para "Si tienes ocho, no"
	line "eres moco de pavo."

	para "Entonces, vale."
	line "Ven al Gimnasio de"
	cont "Celeste."

	para "Soy Misty, la"
	line "Líder de Gimnasio"
	cont "de Ciudad Celeste."
	done

SupernerdPatSeenText:
	text "¡Mufufufu…!"

	para "No tengo nada que"
	line "ver con los otros"
	cont "seis entrenadores."

	para "Pero he esperado a"
	line "que estés débil"

	para "de tanto pelear"
	line "para vencerte."
	done

SupernerdPatBeatenText:
	text "¿No sientes"
	line "cansancio?"
	done

SupernerdPatAfterBattleText:
	text "Lo siento… No"
	line "haré más trampas."
	done

CooltrainermKevinNuggetText:
	text "Tuviste que luchar"
	line "una vez más, pero"
	cont "ganaste."

	para "Como te prometí,"
	line "el premio es tuyo."
	done

CooltrainermKevinSeenText:
	text "Pero después de"
	line "verte luchar, me"

	para "gustaría saber"
	line "cómo me iría a mí."

	para "Déjame luchar"
	line "contra ti."
	done

CooltrainermKevinBeatenText:
	text "¡Nunca había visto"
	line "nada igual!"
	done

CooltrainermKevinAfterBattleText:
	text "¡Ha sido"
	line "fantástico!"

	para "Tus Pokémon y tú"
	line "sois realmente"
	cont "buenos."
	done

BillsHouseSignText:
	text "Casa del Mar"
	line "Casa de Bill"
	done

YouTakeThisCharmanderText:
	text "No soy bueno como"
	line "entrenador de"
	cont "Pokémon."

	para "Debo soltar a mi"
	line "Charmander porque"
	cont "no lo he cuidado"
	cont "bien."

	para "Si prometes"
	line "cuidarlo"
	cont "es tuyo."
	done

ThanksText:
	text "Bien."
	done

ReceivedCharmanderText:
	text "<PLAYER> recibió"
	line "a Charmander."
	done

NoCharmanderText:
	text "Vaya..."
	done

CharmanderAlternatetiveText:
	text "Cuida bien a mi"
	line "Charmander."
	done

AfterGiveAwayText:
	text "¿Qué tal le va"
	line "a Charmander?"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 63,  3, BILLS_HOUSE, 1

	def_coord_events
	coord_event 58,  5, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate3Script
	coord_event 58,  6, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate1Script
	coord_event 58,  7, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate2Script

	def_bg_events
	bg_event 61,  3, BGEVENT_READ, BillsHouseSign
	bg_event  4,  5, BGEVENT_ITEM, Route25HiddenPotion

	def_object_events
	object_event 62,  9, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 62, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event  8, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT,  0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdPat, -1
	object_event  9, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerCooltrainermKevin, -1
	object_event 42,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25Protein, EVENT_ROUTE_25_PROTEIN
	object_event  8,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, CharmanderScript, -1
	object_event  9, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassShannon, -1
	object_event  8, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperLloyd, -1
	object_event 27,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerHerminia, -1
	object_event 31,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCiro, -1
	object_event 36,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerDane, -1
	object_event 42,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerPepe, -1
	object_event 69,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerFidel, -1
	object_event 47,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerFrancis, -1
;	object_event 52,  7, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerUbaldo, -1
	object_event 33,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerNoboru, -1
	object_event 70,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerElia, -1
