	object_const_def
	const CINNABAR_LAB_TRADE_SCIENTIST1
	const CINNABAR_LAB_TRADE_SCIENTIST2
	const CINNABAR_LAB_TRADE_SCIENTIST3

CinnabarLabTradeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

Canel:
	faceplayer
	opentext
	trade NPC_TRADE_LAB1
	waitbutton
	closetext
	end

Goyo:
	faceplayer
	opentext
	trade NPC_TRADE_LAB2
	waitbutton
	closetext
	end

Dulce:
	faceplayer
	opentext
	trade NPC_TRADE_LAB3
	waitbutton
	closetext
	end

CinnabarLabTradeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_LAB, 3
	warp_event  2,  7, CINNABAR_LAB, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Canel, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Goyo, -1
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Dulce, -1
