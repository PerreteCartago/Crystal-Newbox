	object_const_def
	const ROUTE5UNDERGROUNDPATHENTRANCE_TEACHER

Route5UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

MachokeTrade:
	faceplayer
	opentext
	trade NPC_TRADE_ROUTE_5
	waitbutton
	closetext
	end

Route5UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_5, 1
	warp_event  4,  7, ROUTE_5, 1
	warp_event  4,  3, UNDERGROUND_PATH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MachokeTrade, -1
