	object_const_def
	const FASTSHIPCABINS_SW_SSW_NW_FISHER
	const FASTSHIPCABINS_SW_SSW_NW_BUG_CATCHER
	const FASTSHIPCABINS_SW_SSW_NW_BEAUTY
	const FASTSHIPCABINS_SW_SSW_NW_ROCKER

FastShipCabins_SW_SSW_NW_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFirebreatherLyle:
	trainer FIREBREATHER, LYLE, EVENT_BEAT_FIREBREATHER_LYLE, FirebreatherLyleSeenText, FirebreatherLyleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherLyleAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherKen:
	trainer BUG_CATCHER, KEN, EVENT_BEAT_BUG_CATCHER_KEN, BugCatcherKenSeenText, BugCatcherKenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKenAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyCassie:
	trainer BEAUTY, CASSIE, EVENT_BEAT_BEAUTY_CASSIE, BeautyCassieSeenText, BeautyCassieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyCassieAfterBattleText
	waitbutton
	closetext
	end

TrainerGuitaristClyde:
	trainer GUITARIST, CLYDE, EVENT_BEAT_GUITARIST_CLYDE, GuitaristClydeSeenText, GuitaristClydeBeatenText, 0, .Script

.Script:
	endifjustbattled
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	opentext
	writetext GuitaristClydeAfterBattleText
	waitbutton
	closetext
	end

.mobile
	opentext
	writetext GuitaristClydeAfterBattleMobileText
	waitbutton
	closetext
	end

FastShipBed:
	opentext
	writetext FastShipBedText1
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInFromBlack
	opentext
	writetext FastShipBedText2
	waitbutton
	closetext
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .AlreadyArrived
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iftrue .CanArrive
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .CanArrive
.AlreadyArrived:
	end

.CanArrive:
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .ArrivedOlivine
	opentext
	writetext FastShipArrivedVermilionText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

.ArrivedOlivine:
	opentext
	writetext FastShipArrivedOlivineText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

FastShipCabinsNorthwestCabinTrashcan:
	jumpstd TrashCanScript

FirebreatherLyleSeenText:
	text "¡Voy a Kanto para"
	line "actuar en un"

	para "espectáculo de"
	line "comefuegos!"
	done

FirebreatherLyleBeatenText:
	text "La débil llama"
	line "pierde fuerza."
	done

FirebreatherLyleAfterBattleText:
	text "El fuego es débil"
	line "contra el agua."

	para "No te importa,"
	line "¿verdad?"
	done

BugCatcherKenSeenText:
	text "¡Voy a ver a mi"
	line "abuela para que me"

	para "atrape unos"
	line "cuantos bichos!"
	done

BugCatcherKenBeatenText:
	text "Ooooh, guau."
	line "¡Qué fuerte!"
	done

BugCatcherKenAfterBattleText:
	text "Encontrarás muchos"
	line "Pokémon en los"
	cont "árboles de Johto."
	done

BeautyCassieSeenText:
	text "Intento olvidar a"
	line "mis enemigos."
	cont "¡Luchemos!"
	done

BeautyCassieBeatenText:
	text "Estoy desolada…"
	done

BeautyCassieAfterBattleText:
	text "Lo mejor para"
	line "curar las penas es"

	para "hacer un viaje en"
	line "barco."

	para "Pero los viajes en"
	line "Ferry son muy"
	cont "cortos."
	done

GuitaristClydeSeenText:
	text "Voy a una audición"
	line "de mis canciones"

	para "en la Emisora de"
	line "Ciudad Trigal."
	done

GuitaristClydeBeatenText:
	text "¡Uauu!"
	line "¡Distorsión total!"
	done

GuitaristClydeAfterBattleMobileText:
	text "Iba a hacer mi"
	line "debut en la"
	cont "Torre Batalla…"

	para "Debo regresar a"
	line "Ciudad Carmín para"
	cont "volver a entrenar…"
	done

GuitaristClydeAfterBattleText:
	text "Hablando de la"
	line "Estación de Radio,"

	para "¿cuál es el número"
	line "de la suerte de"
	cont "esta semana?"
	done

FastShipBedText1:
	text "¡Una buena cama!"
	line "A dormir…"
	done

FastShipBedText2:
	text "¡Ah! Vuelvo a"
	line "estar en forma."
	done

FastShipArrivedOlivineText:
	text "El Ferry S.S. Aqua"
	line "ha llegado a"
	cont "Ciudad Olivo."
	done

FastShipArrivedVermilionText:
	text "El Ferry S.S. Aqua"
	line "ha llegado a"
	cont "Ciudad Carmín."
	done

FastShipCabins_SW_SSW_NW_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, FAST_SHIP_1F, 5
	warp_event  2, 19, FAST_SHIP_1F, 6
	warp_event  3, 19, FAST_SHIP_1F, 6
	warp_event  2, 31, FAST_SHIP_1F, 7
	warp_event  3, 31, FAST_SHIP_1F, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, FastShipBed
	bg_event  7,  2, BGEVENT_READ, FastShipBed
	bg_event  7,  7, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan

	def_object_events
	object_event  1, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherLyle, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherKen, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  1, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyCassie, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  3, 28, SPRITE_ROCKER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGuitaristClyde, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
