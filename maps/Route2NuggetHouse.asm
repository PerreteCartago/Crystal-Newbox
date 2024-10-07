	object_const_def
	const ROUTE2NUGGETHOUSE_FISHER
	const ROUTE2NUGGETHOUSE_SCIENTIST


Route2NuggetHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route2NuggetHouseFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_NUGGET_FROM_GUY
	iftrue .GotNugget
	writetext Route2NuggetHouseFisherText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoom
	setevent EVENT_GOT_NUGGET_FROM_GUY
.GotNugget:
	writetext Route2NuggetHouseFisherText_GotNugget
	waitbutton
.NoRoom:
	closetext
	end

Route2NuggetHouseBookshelf: ; unreferenced
	jumpstd DifficultBookshelfScript

Ruteo:
	faceplayer
	opentext
	trade NPC_TRADE_ROUTE_2
	waitbutton
	closetext
	end

Route2NuggetHouseFisherText:
	text "¡Hola! Me alegro"
	line "de verte."

	para "Eres la primera"
	line "visita que recibo"

	para "desde hace mucho"
	line "tiempo."

	para "¡Estoy muy"
	line "contento! Te voy"

	para "a hacer un"
	line "pequeño regalo."
	done

Route2NuggetHouseFisherText_GotNugget:
	text "Es una Pepita."

	para "No puedo darte"
	line "pepitas de la"

	para "sabiduría,"
	line "¡sólo esto!"
	done


Route2NuggetHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_2, 1
	warp_event  3,  7, ROUTE_2, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2NuggetHouseFisherScript, -1
	object_event  2,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Ruteo, -1
