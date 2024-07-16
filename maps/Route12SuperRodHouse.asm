	object_const_def
	const ROUTE12SUPERRODHOUSE_FISHING_GURU

Route12SuperRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SuperRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
	writetext OfferSuperRodText
	yesorno
	iffalse .Refused
	writetext GiveSuperRodText
	promptbutton
	verbosegiveitem SUPER_ROD
	iffalse .NoRoom
	setevent EVENT_GOT_SUPER_ROD
.GotSuperRod:
	writetext GaveSuperRodText
	waitbutton
	closetext
	end

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	closetext
	end

SuperRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferSuperRodText:
	text "Soy el hermano"
	line "pequeño del Gurú"
	cont "Pescador."

	para "Veo que te gusta"
	line "pescar."

	para "¡No tengo ninguna"
	line "duda!"

	para "Sé que tengo"
	line "razón."
	done

GiveSuperRodText:
	text "Sí, sí. ¡Justo lo"
	line "que pensaba!"

	para "¡Aquí tienes!"
	line "Toma esto. Es"
	cont "una Súper Caña."
	done

GaveSuperRodText:
	text "Intenta pescar"
	line "allí donde veas"
	cont "agua."

	para "Recuerda: puedes"
	line "capturar Pokémon"

	para "diferentes usando"
	line "distintas Cañas."
	done

DontWantSuperRodText:
	text "¿Eh? ¿Me engañan"
	line "mis ojos?"
	done

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 1
	warp_event  3,  7, ROUTE_12, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1
