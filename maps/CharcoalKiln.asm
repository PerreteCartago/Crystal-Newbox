	object_const_def
	const CHARCOALKILN_BLACK_BELT
	const CHARCOALKILN_YOUNGSTER
	const CHARCOALKILN_MOLTRES

CharcoalKiln_MapScripts:
	def_scene_scripts

	def_callbacks

CharcoalKilnBoss:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SavedSlowpoke
	writetext CharcoalKilnBossText1
	waitbutton
	closetext
	end

.SavedSlowpoke:
	writetext CharcoalKilnBossText2
	waitbutton
	closetext
	end

.GotCut:
	writetext CharcoalKilnBossText3
	waitbutton
	closetext
	end

CharcoalKilnApprentice:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue .YoureTheCoolest
	checkevent EVENT_GOT_HM01_CUT
	iftrue .Thanks
	writetext CharcoalKilnApprenticeText1
	waitbutton
	closetext
	end

.Thanks:
	writetext CharcoalKilnApprenticeText2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse .Done
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetext
	end

.YoureTheCoolest:
	writetext CharcoalKilnApprenticeText3
	waitbutton
.Done:
	closetext
	end

CharcoalKilnFarfetchd:
	faceplayer
	opentext
	writetext FarfetchdText
	cry FARFETCH_D
	waitbutton
	closetext
	end

CharcoalKilnBookshelf:
	jumpstd MagazineBookshelfScript

CharcoalKilnRadio:
	jumpstd Radio2Script

CharcoalKilnBossText1:
	text "Todos los Slowpoke"
	line "del pueblo han"
	cont "desaparecido."

	para "Quizá el guardián"
	line "del Encinar esté"
	cont "enfadado…"

	para "Puede ser un mal"
	line "presagio. Será"
	cont "mejor no salir."
	done

CharcoalKilnBossText2:
	text "Los Slowpoke han"
	line "vuelto…"

	para "Pero mi Aprendiz"
	line "no ha vuelto del"
	cont "Encinar."

	para "¿Dónde demonios"
	line "está ese vago?"
	done

CharcoalKilnBossText3:
	text "¿Expulsaste al"
	line "Team Rocket y"

	para "fuiste solo al"
	line "Encinar?"

	para "¡Qué valiente! Me"
	line "gustas. Entrena"
	cont "con nosotros."
	done

CharcoalKilnApprenticeText1:
	text "¿Adónde han ido"
	line "los Slowpoke?"

	para "¿Están jugando"
	line "fuera?"
	done

CharcoalKilnApprenticeText2:
	text "Lo siento. Olvidé"
	line "darte las gracias."

	para "Éste es el Carbón"
	line "que he fabricado."

	para "A los Pokémon de"
	line "fuego les gustará"
	cont "llevarlo."
	done

CharcoalKilnApprenticeText3:
	text "Los Slowpoke han"
	line "vuelto, hasta"
	cont "Farfetch'd."

	para "¡Eres lo mejor,"
	line "de verdad!"
	done

FarfetchdText:
	text "Farfetch'd: Kwaa!"
	done

CharcoalKiln_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 2
	warp_event  3,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  1,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  7,  1, BGEVENT_READ, CharcoalKilnRadio

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  5,  6, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchd, EVENT_CHARCOAL_KILN_FARFETCH_D
