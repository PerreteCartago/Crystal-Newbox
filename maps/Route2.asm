	object_const_def
	const ROUTE2_BUG_CATCHER1
	const ROUTE2_BUG_CATCHER2
	const ROUTE2_BUG_CATCHER3
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2
	const ROUTE2_POKE_BALL3
	const ROUTE2_POKE_BALL4
	const ROUTE2_FRUIT_TREE

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherRob:
	trainer BUG_CATCHER, ROB, EVENT_BEAT_BUG_CATCHER_ROB, BugCatcherRobSeenText, BugCatcherRobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRobAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEd:
	trainer BUG_CATCHER, ED, EVENT_BEAT_BUG_CATCHER_ED, BugCatcherEdSeenText, BugCatcherEdBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEdAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

Route2Sign:
	jumptext Route2SignText

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText

Route2DireHit:
	itemball DIRE_HIT

Route2MaxPotion:
	itemball MAX_POTION

Route2Carbos:
	itemball CARBOS

Route2Elixer:
	itemball ELIXER

Route2FruitTree:
	fruittree FRUITTREE_ROUTE_2

Route2HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_2_HIDDEN_MAX_ETHER

Route2HiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_2_HIDDEN_FULL_HEAL

Route2HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_ROUTE_2_HIDDEN_FULL_RESTORE

Route2HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_2_HIDDEN_REVIVE

BugCatcherRobSeenText:
	text "Mis Pokémon bicho"
	line "son muy fuertes."

	para "¡Prepárate para"
	line "perder!"
	done

BugCatcherRobBeatenText:
	text "Me vencieron…"
	done

BugCatcherRobAfterBattleText:
	text "Voy a buscar"
	line "Pokémon bicho"
	cont "más fuertes."
	done

BugCatcherEdSeenText:
	text "Si caminas por la"
	line "hierba alta con"

	para "pantalones cortos,"
	line "¿no te arañas?"
	done

BugCatcherEdBeatenText:
	text "¡Au, au, au!"
	done

BugCatcherEdAfterBattleText:
	text "Seguro que te"
	line "pican si te bañas."
	done

BugCatcherDougSeenText:
	text "¿Por qué a las"
	line "chicas no les"

	para "gustan los"
	line "Pokémon bicho?"
	done

BugCatcherDougBeatenText:
	text "¡Muy mal!"
	done

BugCatcherDougAfterBattleText:
	text "Los Pokémon bicho"
	line "parecen muñecos de"

	para "goma cuando les"
	line "aprietas la tripa."

	para "¡Me encanta"
	line "tocarlos!"
	done

Route2SignText:
	text "Ruta 2"

	para "Ciudad Verde -"
	line "Ciudad Plateada"
	done

Route2DiglettsCaveSignText:
	text "Cueva Digglet"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 19, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 15, 39, ROUTE_2_GATE, 3
	warp_event 16, 35, ROUTE_2_GATE, 1
	warp_event 17, 35, ROUTE_2_GATE, 2
	warp_event 12,  9, DIGLETTS_CAVE, 3
	warp_event  3, 43, VIRIDIAN_SOUTH_GATE, 3
	warp_event  3, 11, VIRIDIAN_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  7, 65, BGEVENT_READ, Route2Sign
	bg_event 11, 11, BGEVENT_READ, Route2DiglettsCaveSign
	bg_event 15, 28, BGEVENT_ITEM, Route2HiddenMaxEther
	bg_event 17,  3, BGEVENT_ITEM, Route2HiddenFullHeal
	bg_event 19, 41, BGEVENT_ITEM, Route2HiddenFullRestore
	bg_event 18, 66, BGEVENT_ITEM, Route2HiddenRevive

	def_object_events
	object_event  4, 53, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBugCatcherRob, -1
	object_event  5,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEd, -1
	object_event  1, 52, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDoug, -1
	object_event  6, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2DireHit, EVENT_ROUTE_2_DIRE_HIT
	object_event  0,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MaxPotion, EVENT_ROUTE_2_MAX_POTION
	object_event 14,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Carbos, EVENT_ROUTE_2_CARBOS
	object_event 18, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2Elixer, EVENT_ROUTE_2_ELIXER
	object_event  8, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2FruitTree, -1
