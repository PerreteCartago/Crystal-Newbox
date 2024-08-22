	object_const_def
	const ROUTE32_FISHER1
	const ROUTE32_FISHER2
	const ROUTE32_FISHER3
	const ROUTE32_YOUNGSTER1
	const ROUTE32_YOUNGSTER2
	const ROUTE32_YOUNGSTER3
	const ROUTE32_LASS1
	const ROUTE32_COOLTRAINER_M
	const ROUTE32_YOUNGSTER4
	const ROUTE32_FISHER4
	const ROUTE32_POKE_BALL1
	const ROUTE32_FISHER5
	const ROUTE32_FRIEDA
	const ROUTE32_POKE_BALL2

Route32_MapScripts:
	def_scene_scripts
	scene_script Route32Noop1Scene, SCENE_ROUTE32_COOLTRAINER_M_BLOCKS
	scene_script Route32Noop2Scene, SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	scene_script Route32Noop3Scene, SCENE_ROUTE32_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route32FriedaCallback

Route32Noop1Scene:
	end

Route32Noop2Scene:
	end

Route32Noop3Scene:
	end

Route32FriedaCallback:
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .FriedaAppears
	disappear ROUTE32_FRIEDA
	endcallback

.FriedaAppears:
	appear ROUTE32_FRIEDA
	endcallback

Route32CooltrainerMScript:
	faceplayer
Route32CooltrainerMContinueScene:
	opentext
	checkevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	iftrue .GotMiracleSeed
	checkflag ENGINE_ZEPHYRBADGE
	iffalse .DontHaveZephyrBadge
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .GiveMiracleSeed
	writetext Route32CooltrainerMText_AideIsWaiting
	waitbutton
	closetext
	end

.GoToSproutTower: ; unreferenced
	writetext Route32CooltrainerMText_UnusedSproutTower
	waitbutton
	closetext
	end

.GiveMiracleSeed:
	writetext Route32CooltrainerMText_HaveThisSeed
	promptbutton
	verbosegiveitem MIRACLE_SEED
	iffalse .BagFull
	setevent EVENT_GOT_MIRACLE_SEED_IN_ROUTE_32
	sjump .GotMiracleSeed

.DontHaveZephyrBadge:
	writetext Route32CooltrainerMText_VioletGym
	waitbutton
	closetext
	end

.GotMiracleSeed:
	writetext Route32CooltrainerMText_ExperiencesShouldBeUseful
	waitbutton
.BagFull:
	closetext
	end

Route32CooltrainerMStopsYouScene:
	turnobject ROUTE32_COOLTRAINER_M, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Route32CooltrainerMText_WhatsTheHurry
	waitbutton
	closetext
	follow PLAYER, ROUTE32_COOLTRAINER_M
	applymovement PLAYER, Movement_Route32CooltrainerMPushesYouBackToViolet
	stopfollow
	turnobject PLAYER, DOWN
	scall Route32CooltrainerMContinueScene
	applymovement ROUTE32_COOLTRAINER_M, Movement_Route32CooltrainerMReset1
	applymovement ROUTE32_COOLTRAINER_M, Movement_Route32CooltrainerMReset2
	end

Route32RoarTMGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM05_ROAR
	iftrue .AlreadyHaveRoar
	writetext Text_RoarIntro
	promptbutton
	verbosegiveitem TM_ROAR
	iffalse .Finish
	setevent EVENT_GOT_TM05_ROAR
.AlreadyHaveRoar:
	writetext Text_RoarOutro
	waitbutton
.Finish:
	closetext
	end

Route32WannaBuyASlowpokeTailScript:
	turnobject ROUTE32_FISHER4, DOWN
	turnobject PLAYER, UP
	sjump _OfferToSellSlowpokeTail

SlowpokeTailSalesmanScript:
	faceplayer
_OfferToSellSlowpokeTail:
	setscene SCENE_ROUTE32_NOOP
	opentext
	writetext Text_MillionDollarSlowpokeTail
	yesorno
	iffalse .refused
	writetext Text_ThoughtKidsWereLoaded
	waitbutton
	closetext
	end

.refused
	writetext Text_RefusedToBuySlowpokeTail
	waitbutton
	closetext
	end

TrainerCamperRoland:
	trainer CAMPER, ROLAND, EVENT_BEAT_CAMPER_ROLAND, CamperRolandSeenText, CamperRolandBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperRolandAfterText
	waitbutton
	closetext
	end

TrainerFisherJustin:
	trainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherJustinSeenText, FisherJustinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJustinAfterText
	waitbutton
	closetext
	end

TrainerFisherRalph1:
	trainer FISHER, RALPH1, EVENT_BEAT_FISHER_RALPH, FisherRalph1SeenText, FisherRalph1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_RALPH
	opentext
	checkflag ENGINE_RALPH_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_QWILFISH_SWARM
	iftrue .Swarm
	checkcellnum PHONE_FISHER_RALPH
	iftrue .NumberAccepted
	checkevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext FisherRalphAfterText
	promptbutton
	setevent EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_RALPH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, RALPH1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext FisherRalph1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight4
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
	loadtrainer FISHER, RALPH1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, RALPH2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, RALPH3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FISHER, RALPH4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer FISHER, RALPH5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_RALPH_READY_FOR_REMATCH
	end

.Swarm:
	writetext FisherRalphSwarmText
	waitbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

TrainerFisherHenry:
	trainer FISHER, HENRY, EVENT_BEAT_FISHER_HENRY, FisherHenrySeenText, FisherHenryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherHenryAfterText
	waitbutton
	closetext
	end

TrainerPicnickerLiz1:
	trainer PICNICKER, LIZ1, EVENT_BEAT_PICNICKER_LIZ, PicnickerLiz1SeenText, PicnickerLiz1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_LIZ
	opentext
	checkflag ENGINE_LIZ_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_PICNICKER_LIZ
	iftrue .NumberAccepted
	checkevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PicnickerLiz1AfterText
	promptbutton
	setevent EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskAgain:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_LIZ
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, LIZ1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext PicnickerLiz1BeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_ECRUTEAK
	iftrue .LoadFight1
	loadtrainer PICNICKER, LIZ1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, LIZ2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, LIZ3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer PICNICKER, LIZ4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer PICNICKER, LIZ5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_LIZ_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.RematchStd:
	jumpstd RematchFScript
	end

TrainerYoungsterAlbert:
	trainer YOUNGSTER, ALBERT, EVENT_BEAT_YOUNGSTER_ALBERT, YoungsterAlbertSeenText, YoungsterAlbertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAlbertAfterText
	waitbutton
	closetext
	end

TrainerYoungsterGordon:
	trainer YOUNGSTER, GORDON, EVENT_BEAT_YOUNGSTER_GORDON, YoungsterGordonSeenText, YoungsterGordonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterGordonAfterText
	waitbutton
	closetext
	end

TrainerBirdKeeperPeter:
	trainer BIRD_KEEPER, PETER, EVENT_BEAT_BIRD_KEEPER_PETER, BirdKeeperPeterSeenText, BirdKeeperPeterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperPeterAfterText
	waitbutton
	closetext
	end

FriedaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	iftrue .Friday
	readvar VAR_WEEKDAY
	ifnotequal FRIDAY, .NotFriday
	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
	iftrue .MetFrieda
	writetext MeetFriedaText
	promptbutton
	setevent EVENT_MET_FRIEDA_OF_FRIDAY
.MetFrieda:
	writetext FriedaGivesGiftText
	promptbutton
	verbosegiveitem POISON_BARB
	iffalse .Done
	setevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
	writetext FriedaGaveGiftText
	waitbutton
	closetext
	end

.Friday:
	writetext FriedaFridayText
	waitbutton
.Done:
	closetext
	end

.NotFriday:
	writetext FriedaNotFridayText
	waitbutton
	closetext
	end

Route32GreatBall:
	itemball GREAT_BALL

Route32Repel:
	itemball REPEL

Route32Sign:
	jumptext Route32SignText

Route32RuinsSign:
	jumptext Route32RuinsSignText

Route32UnionCaveSign:
	jumptext Route32UnionCaveSignText

Route32PokecenterSign:
	jumpstd PokecenterSignScript

Route32HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_ROUTE_32_HIDDEN_GREAT_BALL

Route32HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_32_HIDDEN_SUPER_POTION

Movement_Route32CooltrainerMPushesYouBackToViolet:
	step UP
	step UP
	step_end

Movement_Route32CooltrainerMReset1:
	step DOWN
	step_end

Movement_Route32CooltrainerMReset2:
	step RIGHT
	step_end

Route32CooltrainerMText_WhatsTheHurry:
	text "¡Espera!"
	line "¿Por qué corres?"
	done

Route32CooltrainerMText_AideIsWaiting:
	text "¿<PLAYER>, verdad?"

	para "Un tipo con gafas"
	line "te estaba buscando"

	para "Te espera en el"
	line "Centro Pokemon"
	done

Route32CooltrainerMText_UnusedSproutTower:
; unused
	text "¿Has ido a la"
	line "Torre Bellsrpout?"

	para "Si pasas por"
	line "Ciudad Malva,"

	para "deberías"
	line "entrenarte allí."

	para "Es crucial para"
	line "los entrenadores."

	para "¡Ve y consigue tu"
	line "MO Destello.!"
	done

Route32CooltrainerMText_VioletGym:
	text "¿Has ido al"
	line "Gimnasio Pokémon?"

	para "Allí puedes probar"
	line "a tus Pokémon y"
	cont "a ti mismo."

	para "¡Es un rito para"
	line "todos los"
	cont "entrenadores!"
	done

Route32CooltrainerMText_HaveThisSeed:
	text "Tienes Pokémon muy"
	line "buenos."

	para "Seguro que es por"
	line "haberlos entrenado"

	para "en los alrededores"
	line "de Ciudad Malva."

	para "El entrenamiento"
	line "en el Gimnasio ha"

	para "debido de ser de"
	line "gran ayuda."

	para "Toma esto como"
	line "recuerdo de"
	cont "Ciudad Malva."

	para "Aumenta el poder"
	line "de los movimientos"
	cont "de tipo planta."
	done

Route32CooltrainerMText_ExperiencesShouldBeUseful:
	text "Tu experiencia en"
	line "Ciudad Malva"

	para "debería ayudarte"
	line "en tu viaje."
	done

Text_MillionDollarSlowpokeTail:
	text "¿Te gustaría tener"
	line "esta sabrosa y"

	para "nutritiva"
	line "Colaslowpoke?"

	para "¡Sólo te costará"
	line "1.000.000¥!"

	para "¡Te gustará!"
	done

Text_ThoughtKidsWereLoaded:
	text "¡Vaya! Pensaba que"
	line "los niños de hoy"

	para "en día estaban"
	line "forrados…"
	done

Text_RefusedToBuySlowpokeTail:
	text "¿No la quieres?"
	line "Pues lárgate."
	done

FisherJustinSeenText:
	text "¡Vaya!"

	para "¡Se me escapó ese"
	line "pez por tu culpa!"
	done

FisherJustinBeatenText:
	text "¡Splash!"
	done

FisherJustinAfterText:
	text "Paciencia… La"
	line "base de la pesca"

	para "y de los Pokémon"
	line "es la misma."
	done

FisherRalph1SeenText:
	text "Soy muy bueno,"
	line "tanto pescando"

	para "como con los"
	line "Pokémon."

	para "¡No voy a perder"
	line "con alguien tan"
	cont "joven!"
	done

FisherRalph1BeatenText:
	text "Intenté acelerar"
	line "las cosas…"
	done

FisherRalphAfterText:
	text "¡Pescar es una"
	line "pasión eterna y"

	para "los Pokémon son"
	line "amigos eternos!"
	done

FisherRalphSwarmText:
	text "Uno, dos, tres…"
	line "¡Jajajajaja!"

	para "¡Qué gran botín!"

	para "¡Vale! ¡Sigue y"
	line "atrapa tantos como"
	cont "puedas!"
	done

; --- start a segment of unused text

Route32UnusedFisher1SeenText:
	text "Siempre atrapo los"
	line "mismos Pokémon…"

	para "Quizá con un"
	line "combate cambien"
	cont "las cosas."
	done

Route32UnusedFisher1BeatenText:
	text "Ahora ya nada me"
	line "sale bien…"
	done

Route32UnusedFisher1AfterText:
	text "¿Cómo es posible"
	line "que el tipo de al"

	para "lado pesque buenos"
	line "Pokémon?"
	done

Route32UnusedFisher2SeenText:
	text "¡Oye! Hoy estoy de"
	line "suerte. ¿Quieres"
	cont "luchar, joven?"
	done

Route32UnusedFisher2BeatenText:
	text "¡Uf! Esta vez no"
	line "tuve suerte."
	done

Route32UnusedFisher2AfterText:
	text "Si quieres atrapar"
	line "buenos Pokémon,"

	para "tienes que tener"
	line "una buena caña."
	done

; --- end a segment of unused texts

FisherHenrySeenText:
	text "¿Mi Pokémon?"
	line "¡Recién pescado!"
	done

FisherHenryBeatenText:
	text "¡Splash!"
	done

FisherHenryAfterText:
	text "Los Pokémon"
	line "recién atrapados"

	para "no son comparables"
	line "con los criados."
	done

YoungsterAlbertSeenText:
	text "No te había visto"
	line "antes."

	para "¿Te crees muy"
	line "fuerte?"
	done

YoungsterAlbertBeatenText:
	text "¡Eres fuerte!"
	done

YoungsterAlbertAfterText:
	text "Intentaré ser el"
	line "mejor con mis"
	cont "favoritos."

	para "No uso los mismos"
	line "Pokémon que"
	cont "todo el mundo."
	done

YoungsterGordonSeenText:
	text "¡He encontrado"
	line "Pokémon muy buenos"
	cont "en la hierba!"

	para "¡Creo que me"
	line "servirán!"
	done

YoungsterGordonBeatenText:
	text "¡Maldición! Creía"
	line "que podía ganar."
	done

YoungsterGordonAfterText:
	text "En la hierba hay"
	line "cosas pegajosas."
	done

CamperRolandSeenText:
	text "Esa mirada…"
	line "Me intriga."
	done

CamperRolandBeatenText:
	text "¡Mmmm!"
	line "¡Qué decepción!"
	done

CamperRolandAfterText:
	text "Si no quieres"
	line "luchar, evita el"
	cont "contacto visual."
	done

PicnickerLiz1SeenText:
	text "Sí. Y sabes que…"

	para "¿Luchar? ¡Estoy"
	line "al teléfono!"

	para "Vale. Pero que sea"
	line "rápido."
	done

PicnickerLiz1BeatenText:
	text "¡Oh! ¡Tengo que"
	line "aliviar mi enfado!"
	done

PicnickerLiz1AfterText:
	text "Yo también estaba"
	line "charlando."
	done

BirdKeeperPeterSeenText:
	text "¡Esa Medalla! ¡Es"
	line "de Ciudad Malva!"

	para "¿Ganaste a Antón?"
	done

BirdKeeperPeterBeatenText:
	text "Conozco mis"
	line "debilidades."
	done

BirdKeeperPeterAfterText:
	text "Debería volver a"
	line "entrenarme en el"

	para "Gimnasio de"
	line "Ciudad Malva."
	done

Route32UnusedText:
; unused
	text "Los pescadores me"
	line "han insultado por"
	cont "molestarles…"
	done

Text_RoarIntro:
	text "¡GRRRRRR!"
	line "¡TODOS HUYEN"

	para "CUANDO RUJO! ¡PERO"
	line "TÚ HAS VENIDO!"

	para "¡ESO ME GUSTA!"
	line "¡TOMA ESTO!"
	done

Text_RoarOutro:
	text "¡GRRRRRR!"
	line "¡ES RUGIDO! HASTA"

	para "LOS Pokémon HUYEN"
	line "CON UN RUGIDO."
	done

MeetFriedaText:
	text "Vicki: ¡Yuju!"
	line "¡Es viernes!"

	para "Soy Vicki, por"
	line "viernes."

	para "¡Mucho gusto!"
	done

FriedaGivesGiftText:
	text "¡Toma una Flecha"
	line "Venenosa!"
	done

FriedaGaveGiftText:
	text "Vicki: Dásela a un"
	line "Pokémon de tipo"
	cont "veneno."

	para "¡Oh!"

	para "¡Es terrible!"

	para "¡Te sorprenderá"
	line "ver cómo mejora"

	para "los movimientos"
	line "de tipo veneno!"
	done

FriedaFridayText:
	text "Vicki: ¡Hola! ¿Qué"
	line "día prefieres?"

	para "A mí me gusta el"
	line "viernes. Sin duda."

	para "¿No crees que es"
	line "genial?"
	done

FriedaNotFridayText:
	text "Vicki: ¿Hoy no es"
	line "viernes?"

	para "¡Me aburro cuando"
	line "no lo es!"
	done

Route32SignText:
	text "RUTA 32"

	para "Ciudad Malva -"
	line "Pueblo Azalea"
	done

Route32RuinsSignText:
	text "Ruinas Alfa"
	line "Entrada Este"
	done

Route32UnionCaveSignText:
	text "Hacia la"
	line "CUEVA UNIÓN"
	done

Route32_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 73, ROUTE_32_POKECENTER_1F, 1
	warp_event  4,  2, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  4,  3, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event  6, 79, UNION_CAVE_1F, 4

	def_coord_events
	coord_event 18,  8, SCENE_ROUTE32_COOLTRAINER_M_BLOCKS, Route32CooltrainerMStopsYouScene
	coord_event  7, 71, SCENE_ROUTE32_OFFER_SLOWPOKETAIL, Route32WannaBuyASlowpokeTailScript

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, Route32Sign
	bg_event  9,  1, BGEVENT_READ, Route32RuinsSign
	bg_event 10, 84, BGEVENT_READ, Route32UnionCaveSign
	bg_event 12, 73, BGEVENT_READ, Route32PokecenterSign
	bg_event 12, 67, BGEVENT_ITEM, Route32HiddenGreatBall
	bg_event 11, 40, BGEVENT_ITEM, Route32HiddenSuperPotion

	def_object_events
	object_event 10, 53, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherJustin, -1
	object_event 12, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherRalph1, -1
	object_event 10, 47, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherHenry, -1
	object_event 12, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterAlbert, -1
	object_event  4, 63, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterGordon, -1
	object_event  3, 45, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperRoland, -1
	object_event 10, 30, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerLiz1, -1
	object_event 19,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32CooltrainerMScript, -1
	object_event 11, 82, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperPeter, -1
	object_event  7, 70, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeTailSalesmanScript, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  6, 53, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route32GreatBall, EVENT_ROUTE_32_GREAT_BALL
	object_event 15, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32RoarTMGuyScript, -1
	object_event 12, 67, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriedaScript, EVENT_ROUTE_32_FRIEDA_OF_FRIDAY
	object_event  3, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route32Repel, EVENT_ROUTE_32_REPEL
