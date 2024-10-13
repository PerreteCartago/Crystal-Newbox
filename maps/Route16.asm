	object_const_def
	const ROUTE16_BIKER1
	const ROUTE16_BIKER2
	const ROUTE16_BIKER3
	const ROUTE16_BIKER4
	const ROUTE16_BIKER5
	const ROUTE16_BIKER6

Route16_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16AlwaysOnBikeCallback

Route16AlwaysOnBikeCallback:
	readvar VAR_YCOORD
	ifless 10, .CanWalk
	readvar VAR_XCOORD
	ifgreater 23, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback


TrainerBikerRuben:
	trainer BIKER, KAZU, EVENT_BEAT_BIKER_KAZU, RubenSeenText, RubenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RubenAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerLao:
	trainer BIKER, BIKER_LAO, EVENT_BEAT_BIKER_LAO, LaoSeenText, LaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LaoAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHideo:
	trainer BIKER, HIDEO, EVENT_BEAT_HIDEO, HideoSeenText, HideoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HideoAfterBattleText
	waitbutton
	closetext
	end

TrainerCadel:
	trainer BALD, CADEL, EVENT_BEAT_CADEL, CadelSeenText, CadelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CadelAfterBattleText
	waitbutton
	closetext
	end

TrainerKoji:
	trainer BALD, BALD_KOJI, EVENT_BEAT_BALD_KOJI, KojiSeenText, KojiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KojiAfterBattleText
	waitbutton
	closetext
	end

TrainerLeo:
	trainer BALD, LEO, EVENT_BEAT_LEO, LeoSeenText, LeoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LeoAfterBattleText
	waitbutton
	closetext
	end

BikeRouteRoadSign:
	jumptext BikeRouteRoadSignText

CyclingRoadSign:
	jumptext CyclingRoadSignText

CadelSeenText:
	text "¿Qué quieres?"
	done

CadelBeatenText:
	text "¡No"
	line "oses reírte!"
	done

CadelAfterBattleText:
	text "Nos gusta andar"
	line "por aquí."
	cont "¿Y a ti?"
	done

RubenSeenText:
	text "¡Bonita bici!"
	line "¡Dámela!"
	done

RubenBeatenText:
	text "¡Fuera"
	line "de combate!"
	done

RubenAfterBattleText:
	text "¡Olvídalo, nadie"
	line "necesita tu bici!"
	done

HideoSeenText:
	text "¡Baja de ahí y"
	line "lucha, pequeñajo!"
	done

HideoBeatenText:
	text "¡Eres una"
	line "pequeña rata!"
	done

HideoAfterBattleText:
	text "¡Odio perder! ¡No"
	line "te acerques a mí!"
	done

LeoSeenText:
	text "¡Oye! ¡Me has"
	line "golpeado!"
	done

LeoBeatenText:
	text "¡Cataplum!"
	done

LeoAfterBattleText:
	text "También puedes"
	line "llegar a Fucsia"
	cont "desde Carmín por"
	cont "la costa."
	done

KojiSeenText:
	text "¡Estoy hambriento"
	line "y furioso!"
	done

KojiBeatenText:
	text "¡Mal,"
	line "mal, muy mal!"
	done

KojiAfterBattleText:
	text "¡Me encanta mi"
	line "fiero Pokémon!"

	para "¡Despedaza"
	line "a mis enemigos!"
	done

LaoSeenText:
	text "¡Claro que iré!"
	done

LaoBeatenText:
	text "¡No me"
	line "enfurezcas!"
	done

LaoAfterBattleText:
	text "¡Me encanta"
	line "atormentar a la"
	cont "gente con mis"
	cont "malvados Pokémon!"
	done

CyclingRoadSignText:
	text "Camino de Bicis"

	para "¡Cuesta abajo"
	line "por la costa!"
	done

BikeRouteRoadSignText:
	text "Ruta 16:"
	line "Ciudad Azulona -"
	cont "Ciudad Fucsia"
	done


Route16_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 24, 10, ROUTE_16_GATE, 3
	warp_event 24, 11, ROUTE_16_GATE, 4
	warp_event 17, 10, ROUTE_16_GATE, 1
	warp_event 17, 11, ROUTE_16_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  5, 17, BGEVENT_READ, CyclingRoadSign
	bg_event 27, 11, BGEVENT_READ, BikeRouteRoadSign

	def_object_events
	object_event  6, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRuben, -1
	object_event 14, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCadel, -1
	object_event 11, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerHideo, -1
	object_event 17, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerLeo, -1
	object_event  3, 12, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBikerLao, -1
	object_event  9, 11, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerKoji, -1
