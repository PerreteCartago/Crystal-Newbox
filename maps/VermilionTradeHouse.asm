	object_const_def
	const VERMILION_TRADE_HOUSE_LASS

VermilionTradeHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Maria:
	faceplayer
	opentext
	trade NPC_TRADE_VERMILION
	waitbutton
	closetext
	end

VermilionTradeHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 12
	warp_event  3,  7, VERMILION_CITY, 12

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Maria, -1
