	object_const_def
	const OLIVINEGOODRODHOUSE_FISHING_GURU

OlivineGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .AlreadyGotItem
	writetext OfferGoodRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveGoodRodText
	promptbutton
	verbosegiveitem GOOD_ROD
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.DontWantIt:
	writetext DontWantGoodRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveGoodRodText
	waitbutton
	closetext
	end

GoodRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferGoodRodText:
	text "¡Ciudad Olivo está"
	line "junto al mar!"

	para "¡Y si está junto"
	line "al mar, tiene que"
	cont "haber peces!"

	para "Llevo 30 años"
	line "pescando aquí."

	para "¿Quieres mirar al"
	line "mar y pescar?"
	done

GiveGoodRodText:
	text "¡Ah, ja, ja! ¡Ya"
	line "tenemos alguien"
	cont "más que pesca!"
	done

GaveGoodRodText:
	text "No sólo hay peces"
	line "en el mar. Allá"

	para "donde haya agua"
	line "los encontrarás."
	done

DontWantGoodRodText:
	text "¿Quééé? ¿¡No te"
	line "gusta pescar!?"
	cont "¡Incomprensible!"
	done

HaveGoodRodText:
	text "¿Qué tal va todo?"
	line "¿Pica el grande?"
	done

OlivineGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1
