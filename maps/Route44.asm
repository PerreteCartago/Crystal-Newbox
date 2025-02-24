	object_const_def
	const ROUTE44_FISHER1
	const ROUTE44_FISHER2
	const ROUTE44_YOUNGSTER1
	const ROUTE44_POKEMANIAC
	const ROUTE44_YOUNGSTER2
	const ROUTE44_COOLTRAINER_M
	const ROUTE44_COOLTRAINER_F
	const ROUTE44_FRUIT_TREE
	const ROUTE44_POKE_BALL1
	const ROUTE44_POKE_BALL2
	const ROUTE44_POKE_BALL3

Route44_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperVance1:
	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_VANCE
	opentext
	checkflag ENGINE_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIRDKEEPER_VANCE
	iftrue Route44NumberAcceptedM
	checkevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperVanceLegendaryBirdsText
	promptbutton
	setevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_VANCE
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext BirdKeeperVance1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, VANCE2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, VANCE3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_VANCE_READY_FOR_REMATCH
	checkevent EVENT_VANCE_CARBOS
	iftrue .Carbos
	checkevent EVENT_GOT_CARBOS_FROM_VANCE
	iftrue .ReceivedCarbosBefore
	scall Route44RematchGiftM
	verbosegiveitem CARBOS
	iffalse VancePackFull
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

.ReceivedCarbosBefore:
	end

.Carbos:
	opentext
	writetext BirdKeeperVance2BeatenText
	waitbutton
	verbosegiveitem CARBOS
	iffalse VancePackFull
	clearevent EVENT_VANCE_CARBOS
	setevent EVENT_GOT_CARBOS_FROM_VANCE
	sjump Route44NumberAcceptedM

Route44AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route44AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route44RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route44NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route44NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route44PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route44RematchM:
	jumpstd RematchMScript
	end

Route44GiftM:
	jumpstd GiftMScript
	end

Route44PackFullM:
	jumpstd PackFullMScript
	end

VancePackFull:
	setevent EVENT_VANCE_CARBOS
	jumpstd PackFullMScript
	end

Route44RematchGiftM:
	jumpstd RematchGiftMScript
	end

TrainerPsychicPhil:
	trainer PSYCHIC_T, PHIL, EVENT_BEAT_PSYCHIC_PHIL, PsychicPhilSeenText, PsychicPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherWilton1:
	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWilton1SeenText, FisherWilton1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_FISHER_WILTON
	opentext
	checkflag ENGINE_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_WILTON_HAS_ITEM
	iftrue .HasItem
	checkcellnum PHONE_FISHER_WILTON
	iftrue Route44NumberAcceptedM
	checkevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherWiltonHugePoliwagText
	promptbutton
	setevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FISHER_WILTON
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext FisherWilton1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer FISHER, WILTON1
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, WILTON2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, WILTON3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WILTON_READY_FOR_REMATCH
	end

.HasItem:
	scall Route44GiftM
	checkevent EVENT_WILTON_HAS_ULTRA_BALL
	iftrue .UltraBall
	checkevent EVENT_WILTON_HAS_GREAT_BALL
	iftrue .GreatBall
	checkevent EVENT_WILTON_HAS_POKE_BALL
	iftrue .PokeBall
.UltraBall:
	verbosegiveitem ULTRA_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.GreatBall:
	verbosegiveitem GREAT_BALL
	iffalse .Route44PackFullM
	sjump .ItemReceived

.PokeBall:
	verbosegiveitem POKE_BALL
	iffalse .Route44PackFullM
.ItemReceived:
	clearflag ENGINE_WILTON_HAS_ITEM
	sjump Route44NumberAcceptedM

.Route44PackFullM:
	sjump Route44PackFullM

TrainerFisherEdgar:
	trainer FISHER, EDGAR, EVENT_BEAT_FISHER_EDGAR, FisherEdgarSeenText, FisherEdgarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherEdgarAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCybil:
	trainer COOLTRAINERF, CYBIL, EVENT_BEAT_COOLTRAINERF_CYBIL, CooltrainerfCybilSeenText, CooltrainerfCybilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCybilAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacZachAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAllen:
	trainer COOLTRAINERM, ALLEN, EVENT_BEAT_COOLTRAINERM_ALLEN, CooltrainermAllenSeenText, CooltrainermAllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAllenAfterBattleText
	waitbutton
	closetext
	end

Route44Sign1:
	jumptext Route44Sign1Text

Route44Sign2:
	jumptext Route44Sign2Text

Route44FruitTree:
	fruittree FRUITTREE_ROUTE_44

Route44MaxRevive:
	itemball MAX_REVIVE

Route44UltraBall:
	itemball ULTRA_BALL

Route44MaxRepel:
	itemball MAX_REPEL

Route44HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_44_HIDDEN_ELIXER

FisherWilton1SeenText:
	text "¡Me has hecho"
	line "perder a Poliwag!"

	para "¿Qué vas a hacer"
	line "para remediarlo?"
	done

FisherWilton1BeatenText:
	text "Simplemente"
	line "olvídalo."
	done

FisherWiltonHugePoliwagText:
	text "Ese Poliwag que"
	line "escapó…"
	cont "Era enorme."

	para "¡Juraría que medía"
	line "unos 5 metros!"
	done

FisherEdgarSeenText:
	text "Pesco hasta que no"
	line "puedo más, y lucho"
	cont "hasta desfallecer."

	para "Ésta es la"
	line "relación que tengo"
	cont "con mis Pokémon."
	done

FisherEdgarBeatenText:
	text "¡Mmmmm…!"
	line "Eso no está bien."
	done

FisherEdgarAfterBattleText:
	text "Son 100 victorias"
	line "y 101 derrotas."

	para "No lucharé en un"
	line "rato."
	done

BirdKeeperVance1SeenText:
	text "¿Sabes algo sobre"
	line "el Pokémon pájaro"
	cont "legendario?"
	done

BirdKeeperVance1BeatenText:
	text "¡Uauu! Eres el no"
	line "va más."
	done

BirdKeeperVanceLegendaryBirdsText:
	text "Articuno, Zapdos y"
	line "Moltrers son los"

	para "Pokémon pájaro"
	line "legendarios,"

	para "aunque dicen que"
	line "hay otros pájaros"
	cont "legendarios."
	done

BirdKeeperVance2BeatenText:
	text "¿Por qué no"
	line "pude vencerte?"

	para "Ah, sí, aquí"
	line "tienes. Es el"

	para "regalo que no te"
	line "pude dar antes."
	done

PsychicPhilSeenText:
	text "¡Voy a ganar!"
	line "¡Seguro!"
	done

PsychicPhilBeatenText:
	text "¡Arrgh…! No"
	line "esperaba perder."
	done

PsychicPhilAfterBattleText:
	text "Es importante"
	line "tener confianza en"
	cont "uno mismo."
	done

PokemaniacZachSeenText:
	text "¡Haré lo que sea"
	line "para conseguir"
	cont "Pokémon raros!"
	done

PokemaniacZachBeatenText:
	text "Oooh, tus Pokémon"
	line "son muy bonitos."
	done

PokemaniacZachAfterBattleText:
	text "Los Pokémon de"
	line "colores poco"

	para "habituales"
	line "tienen más valor."

	para "¿Qué? ¿Insinúas"
	line "que no es cierto?"
	done

CooltrainermAllenSeenText:
	text "Con sólo mirarte"
	line "sé cuál es tu"
	cont "nivel."

	para "Yo soy bueno con"
	line "los Pokémon y veo"
	cont "que tú también."
	done

CooltrainermAllenBeatenText:
	text "¡Vaya! Ha sido una"
	line "auténtica derrota."
	done

CooltrainermAllenAfterBattleText:
	text "¡Uauu! Tienes"
	line "muchas Medallas."

	para "No me extraña que"
	line "seas tan fuerte."

	para "Me pregunto si"
	line "Morti, de Gimnasio"

	para "Iris, estará"
	line "aún entrenándose."

	para "Él sí que me dio"
	line "una paliza."
	done

CooltrainerfCybilSeenText:
	text "Pareces fuerte."

	para "Los buenos"
	line "entrenadores"

	para "siempre buscan"
	line "buenos rivales."
	done

CooltrainerfCybilBeatenText:
	text "¡No! Esto no"
	line "servirá para nada."
	done

CooltrainerfCybilAfterBattleText:
	text "Todos mejoramos"
	line "luchando muchas"
	cont "veces."

	para "He luchado mucho"
	line "para llegar a ser"

	para "lo que soy hoy:"
	line "una campeona."
	done

Route44Sign1Text:
	text "Ruta 44"
	line "Hacia Ruta Helada"
	done

Route44Sign2Text:
	text "Ruta 44"

	para "Pueblo Caoba -"
	line "Ciudad Endrino"
	done

Route44_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  7, ICE_PATH_1F, 1
	warp_event 11,  3, ROUTE_44_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route44Sign1
	bg_event  6, 10, BGEVENT_READ, Route44Sign2
	bg_event 32,  9, BGEVENT_ITEM, Route44HiddenElixer

	def_object_events
	object_event 35,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherWilton1, -1
	object_event 19, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherEdgar, -1
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicPhil, -1
	object_event 43,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacZach, -1
	object_event 51,  5, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperVance1, -1
	object_event 41, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainermAllen, -1
	object_event 31, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainerfCybil, -1
	object_event  9,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route44FruitTree, -1
	object_event 30,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRevive, EVENT_ROUTE_44_MAX_REVIVE
	object_event 45,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44UltraBall, EVENT_ROUTE_44_ULTRA_BALL
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRepel, EVENT_ROUTE_44_MAX_REPEL
