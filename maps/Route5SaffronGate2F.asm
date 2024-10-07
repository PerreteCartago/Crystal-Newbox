	object_const_def
	const ROUTE_5_SAFFRON_GATE_2F_BEAUTY


Route5SaffronGate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Quica:
	faceplayer
	opentext
	trade NPC_TRADE_ROUTE_FEMALE
	waitbutton
	closetext
	end


Route5SaffronGate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_5_SAFFRON_GATE_1F, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  4,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Quica, -1
