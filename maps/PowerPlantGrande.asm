	object_const_def
	const POWERPLANT_GRANDE_ZAPDOS
	const POWERPLANT_GRANDE_POKE_BALL1
	const POWERPLANT_GRANDE_POKE_BALL2
	const POWERPLANT_GRANDE_POKE_BALL3
	const POWERPLANT_GRANDE_POKE_BALL4
	const POWERPLANT_GRANDE_POKE_BALL5

PowerPlantGrande_MapScripts:
	def_scene_scripts

	def_callbacks

PowerPlantZapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry HO_OH
	pause 15
	closetext
	setevent EVENT_FOUGHT_POWER_PLANT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ZAPDOS, 60
	startbattle
	disappear POWERPLANT_GRANDE_ZAPDOS
	reloadmapafterbattle
	end

PowerPlantPsychUp:
	itemball TM_PSYCH_UP

PowerPlantRareCandy:
	itemball RARE_CANDY

PowerPlantPPUP:
	itemball PP_UP

PowerPlantThunderStone:
	itemball THUNDERSTONE

PowerPlantGrandeFullRestore:
	itemball FULL_RESTORE

PowerHiddenPlantPPUP:
	hiddenitem PP_UP, EVENT_POWERPLANT_HIDDEN_RARE_CANDY


ZapdosText:
	text "¡Zap!"
	done


PowerPlantGrande_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 35, ROUTE_10_NORTH, 2
	warp_event  5, 35, ROUTE_10_NORTH, 2

	def_coord_events

	def_bg_events
	bg_event 37, 33, BGEVENT_ITEM, PowerHiddenPlantPPUP


	def_object_events
	object_event  4,  9, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0,  PowerPlantZapdos, EVENT_POWER_PLANT_ZAPDOS
	object_event  1,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0,PowerPlantPsychUp, EVENT_POWERPLANT_PSYCH_UP
	object_event 21, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantRareCandy, EVENT_POWERPLANT_RARE_CANDY
	object_event 34,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantPPUP, EVENT_POWERPLANT_PP_UP
	object_event 28, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantThunderStone, EVENT_POWERPLANT_THUNDER_STONE
	object_event 23, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PowerPlantGrandeFullRestore, EVENT_POWERPLANT_FULL_RESTORE
