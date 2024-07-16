	object_const_def
	const ROUTE37_WEIRD_TREE1
	const ROUTE37_WEIRD_TREE2
	const ROUTE37_YOUNGSTER
	const ROUTE37_FRUIT_TREE1
	const ROUTE37_SUNNY
	const ROUTE37_FRUIT_TREE2
	const ROUTE37_FRUIT_TREE3

Route37_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route37SunnyCallback

Route37SunnyCallback:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .SunnyAppears
	disappear ROUTE37_SUNNY
	endcallback

.SunnyAppears:
	appear ROUTE37_SUNNY
	endcallback

TrainerTwinsAnnandanne1:
	trainer TWINS, ANNANDANNE1, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsAnnandanne1SeenText, TwinsAnnandanne1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAnnandanne2:
	trainer TWINS, ANNANDANNE2, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsAnnandanne2SeenText, TwinsAnnandanne2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne2AfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicGreg:
	trainer PSYCHIC_T, GREG, EVENT_BEAT_PSYCHIC_GREG, PsychicGregSeenText, PsychicGregBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicGregAfterBattleText
	waitbutton
	closetext
	end

SunnyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MAGNET_FROM_SUNNY
	iftrue SunnySundayScript
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, SunnyNotSundayScript
	checkevent EVENT_MET_SUNNY_OF_SUNDAY
	iftrue .MetSunny
	writetext MeetSunnyText
	promptbutton
	setevent EVENT_MET_SUNNY_OF_SUNDAY
.MetSunny:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Kris
	writetext SunnyGivesGiftText1
	promptbutton
	sjump .next
.Kris:
	writetext SunnyGivesGiftText2
	promptbutton
.next
	verbosegiveitem MAGNET
	iffalse SunnyDoneScript
	setevent EVENT_GOT_MAGNET_FROM_SUNNY
	writetext SunnyGaveGiftText
	waitbutton
	closetext
	end

SunnySundayScript:
	writetext SunnySundayText
	waitbutton
SunnyDoneScript:
	closetext
	end

SunnyNotSundayScript:
	writetext SunnyNotSundayText
	waitbutton
	closetext
	end

Route37Sign:
	jumptext Route37SignText

Route37FruitTree1:
	fruittree FRUITTREE_ROUTE_37_1

Route37FruitTree2:
	fruittree FRUITTREE_ROUTE_37_2

Route37FruitTree3:
	fruittree FRUITTREE_ROUTE_37_3

Route37HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_37_HIDDEN_ETHER

TwinsAnnandanne1SeenText:
	text "Ana: ¡Any y yo"
	line "estamos en esto"
	cont "juntas!"
	done

TwinsAnnandanne1BeatenText:
	text "Ana-Any: Nnn…"
	line "Demasiado fuerte."
	done

TwinsAnnandanne1AfterBattleText:
	text "Ana: Sé lo que"
	line "están pensando mi"

	para "hermana y mis"
	line "Pokémon."
	done

TwinsAnnandanne2SeenText:
	text "Any: ¡Ana y yo"
	line "estamos en esto"
	cont "juntas!"
	done

TwinsAnnandanne2BeatenText:
	text "Ana-Any: Nnn…"
	line "Demasiado fuerte."
	done

TwinsAnnandanne2AfterBattleText:
	text "Any: Sentimos lo"
	line "mismo que nuestros"
	cont "Pokémon."
	done

PsychicGregSeenText:
	text "Los Pokémon no"
	line "pueden hacer nada"
	cont "dormidos."

	para "¡Yo te enseñaré el"
	line "miedo que da eso!"
	done

PsychicGregBeatenText:
	text "He perdido."
	line "¡Qué pena…!"
	done

PsychicGregAfterBattleText:
	text "Dormir o paralizar"
	line "a los Pokémon son"

	para "buenas técnicas de"
	line "lucha."
	done

MeetSunnyText:
	text "Domingo: ¡Hola!"

	para "Soy Domingo, por"
	line "el día. Es decir,"
	cont "¡hoy es domingo!"
	done

SunnyGivesGiftText1:
	text "¡Me dijeron que te"
	line "diera esto si te"
	cont "veía!"
	done

SunnyGivesGiftText2:
	text "¡Me dijeron que te"
	line "entregara esto si"
	cont "te veía!"
	done

SunnyGaveGiftText:
	text "Domingo: Eso…"

	para "¡Um…!"

	para "¿Qué era…?"

	para "…"

	para "¡Ah! ¡Ahora lo"
	line "recuerdo!"

	para "Debería llevarlo"
	line "un Pokémon con"

	para "habilidades"
	line "eléctricas."

	para "¡Mi hermana Luna"
	line "dice que mejora"

	para "las habilidades"
	line "eléctricas!"
	done

SunnySundayText:
	text "Domingo: Mis"
	line "hermanos son"
	cont "Luna, Marta,"
	cont "Miguel, Josué,"
	cont "Vicki y Sabino."

	para "¡Son todos"
	line "mayores que yo!"
	done

SunnyNotSundayText:
	text "Domingo: ¿Hoy no"
	line "es domingo?"
	cont "¡Um…! ¡Lo olvidé!"
	done

Route37SignText:
	text "Ruta 37"
	done

Route37_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_READ, Route37Sign
	bg_event  4,  2, BGEVENT_ITEM, Route37HiddenEther

	def_object_events
	object_event  6, 12, SPRITE_SUDOWOODO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne1, -1
	object_event  7, 12, SPRITE_SUDOWOODO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne2, -1
	object_event  6,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerPsychicGreg, -1
	object_event 13,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree1, -1
	object_event 16,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SunnyScript, EVENT_ROUTE_37_SUNNY_OF_SUNDAY
	object_event 16,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree2, -1
	object_event 15,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree3, -1
