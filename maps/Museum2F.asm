	object_const_def

Museum2F_MapScripts:
	def_scene_scripts

	def_callbacks

Museum2Sign:
	jumptext Museum2SignText

Museum2Sign2:
	jumptext Museum2SignText2

MuseumYoungster:
	jumptextfaceplayer MuseumYoungsterText

MuseumGramps2:
	jumptextfaceplayer MuseumGramps2Text

MuseumPokefanM:
	jumptextfaceplayer MuseumPokefanMFText

MuseumSchoolGirl:
	jumptextfaceplayer MuseumSchoolGirlText

MuseumUnusedGuy:
	jumptextfaceplayer MuseumUnusedGuyText

MuseumYoungsterText::
	text "¿La piedra lunar?"

	para "¿Por qué es"
	line "tan especial?"
	done

MuseumGramps2Text::
	text "¡20 julio, 1969!"

	para "¡1er alunizaje!"

	para "¡Compré una TV en"
	line "color para verlo!"
	done

MuseumPokefanMFText::
	text "Ahora tenemos"
	line "una exposición"
	cont "sobre el espacio."
	done

MuseumSchoolGirlText::
	text "¡Quiero un"
	line "Pikachu!"
	cont "¡Es tan mono!"

	para "¡Le pedí a mi"
	line "padre que me"
	cont "atrapara uno!"
	done

MuseumUnusedGuyText::
	text "¡Sí, pronto"
	line "tendrás a tu"
	cont "Pikachu!... "
	done

Museum2SignText::
	text "NAVE ESPACIAL"
	line "COLUMBIA"
	done

Museum2SignText2::
	text "Meteorito caído"
	line "en el Mt. Moon."
	cont "(¿PIEDRA LUNAR?)"
	done

Museum2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  7, MUSEUM_1F, 5

	def_coord_events

	def_bg_events
	bg_event  2,  5, BGEVENT_READ, Museum2Sign2
	bg_event 12,  2, BGEVENT_READ, Museum2Sign2
	bg_event 10,  2, BGEVENT_READ, Museum2Sign

	def_object_events
	object_event 12,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumYoungster, -1
	object_event 11,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MuseumGramps2, -1
	object_event  7,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumPokefanM, -1
	object_event  3,  6, SPRITE_UNUSED_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MuseumUnusedGuy, -1
	object_event  4,  6, SPRITE_SCHOOL_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumSchoolGirl, -1
