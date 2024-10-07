	object_const_def
	const ROUTE_11_GATE_2F_YOUNGSTER

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks


Onzano:
	faceplayer
	opentext
	trade NPC_TRADE_ROUTE_11
	waitbutton
	closetext
	end

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Onzano, -1

