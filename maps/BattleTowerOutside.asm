	object_const_def
	const BATTLETOWEROUTSIDE_STANDING_YOUNGSTER
	const BATTLETOWEROUTSIDE_BEAUTY
	const BATTLETOWEROUTSIDE_SAILOR
	const BATTLETOWEROUTSIDE_LASS

BattleTowerOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BattleTowerOutsideNoopCallback
	callback MAPCALLBACK_OBJECTS, BattleTowerOutsideShowCiviliansCallback

BattleTowerOutsideNoopCallback:
	endcallback

BattleTowerOutsideShowCiviliansCallback:
	clearevent EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	endcallback

BattleTowerOutsideYoungsterScript:
	jumptextfaceplayer BattleTowerOutsideYoungsterText

BattleTowerOutsideBeautyScript:
	jumptextfaceplayer BattleTowerOutsideBeautyText

BattleTowerOutsideSailorScript:
	jumptextfaceplayer BattleTowerOutsideSailorText

BattleTowerOutsideSign:
	jumptext BattleTowerOutsideSignText

BattleTowerOutsideYoungsterText_NotYetOpen:
; unreferenced
	text "¡Guau, la TORRE es"
	line "inmensa!"

	para "Me duele el cuello"
	line "de alzar la vista."
	done

BattleTowerOutsideYoungsterText_Mobile:
; unreferenced
	text "¡Guau, la TORRE"
	line "BATALLA es enorme!"

	para "Habiendo tanto"
	line "entrenador ahí"

	para "dentro, también"
	line "debe de haber una"

	para "gran variedad de"
	line "#MON."
	done

BattleTowerOutsideYoungsterText:
	text "¡Guau, la TORRE"
	line "BATALLA es enorme!"

	para "¡Debe de haber"
	line "muchas clases de "
	cont "#MON dentro!"
	done

BattleTowerOutsideBuenaText_NotYetOpen:
; unreferenced
	text "¿Pero qué es lo"
	line "que hacen aquí?"

	para "Si es lo que dice"
	line "el nombre, me"

	para "imagino que serán"
	line "batallas #MON."
	done

BattleTowerOutsideSailorText_Mobile:
; unreferenced
	text "Jejeje… Me"
	line "escapé del trabajo"
	cont "para venir."

	para "¡No abandonaré"
	line "hasta que consiga"
	cont "ser LÍDER!"
	done

BattleTowerOutsideSailorText:
	text "Je, je… Me escapé"
	line "del trabajo."

	para "¡No puedo achicar"
	line "agua hasta que"
	cont "haya ganado!"

	para "Tengo que ganarlo"
	line "todo. ¡Debo"
	cont "ganarlo!"
	done

BattleTowerOutsideSignText_NotYetOpen:
; unused; originally shown when the Battle Tower was closed
	text "TORRE BATALLA"
	done

BattleTowerOutsideSignText:
	text "TORRE BATALLA"

	para "¡Acepta el desafío"
	line "definitivo!"
	done

BattleTowerOutsideText_DoorsClosed:
; unused; originally shown when the Battle Tower was closed
	text "La TORRE BATALLA"
	line "está cerrada…"
	done

BattleTowerOutsideText_DoorsOpen:
; unused; originally shown after the Battle Tower opened
	text "¡Está abierta!"
	done

BattleTowerOutsideBeautyText:
	text "Sólo puedes usar"
	line "tres #MON."

	para "Es tan difícil"
	line "decidir qué tres"

	para "deberían ir a la"
	line "batalla…"
	done

BattleTowerOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 21, ROUTE_40_BATTLE_TOWER_GATE, 3
	warp_event  9, 21, ROUTE_40_BATTLE_TOWER_GATE, 4
	warp_event  8,  9, BATTLE_TOWER_1F, 1
	warp_event  9,  9, BATTLE_TOWER_1F, 2

	def_coord_events

	def_bg_events
	bg_event 10, 10, BGEVENT_READ, BattleTowerOutsideSign

	def_object_events
	object_event  6, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideYoungsterScript, -1
	object_event 13, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideBeautyScript, -1
	object_event 12, 18, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideSailorScript, EVENT_BATTLE_TOWER_OPEN_CIVILIANS
	object_event 12, 24, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
