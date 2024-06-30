	object_const_def
	const ROUTE_44_HOUSE_TRADEBACKNPC

Route44House_MapScripts:
	def_scene_scripts

	def_callbacks

TradebackNPCScript:
	faceplayer
	opentext
	special TradebackNPC
	waitbutton
	closetext
	end

Route44House_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_44, 2
	warp_event  4,  7, ROUTE_44, 2

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TradebackNPCScript, -1
