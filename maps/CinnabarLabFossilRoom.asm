	object_const_def
	const CINNABAR_LAB_FOSSIL_SCIENTIST

CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks

KantoFossilScientist:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_9 ; remove the next two lines to immediately receive the fossil
	iftrue .KantoGaveScientistFossil
	checkevent EVENT_GAVE_KANTO_SCIENTIST_OLD_AMBER
	iftrue .KantoGiveAerodactyl
	checkevent EVENT_GAVE_KANTO_SCIENTIST_DOME_FOSSIL
	iftrue .KantoGiveKabuto
	checkevent EVENT_GAVE_KANTO_SCIENTIST_HELIX_FOSSIL
	iftrue .KantoGiveOmanyte
	writetext KantoFossilScientistIntroText
	waitbutton
	loadmenu .KantoMoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .KantoOldAmber
	ifequal REVIVE_DOME_FOSSIL, .KantoDomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .KantoHelixFossil
	sjump .No

.KantoOldAmber
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext KantoFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_9 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_KANTO_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext KantoFossilScientistGiveText
	waitbutton
	sjump .KantoGaveScientistFossil

.KantoDomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext KantoFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_9 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_KANTO_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext KantoFossilScientistGiveText
	waitbutton
	sjump .KantoGaveScientistFossil

.KantoHelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext KantoFossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_9 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_KANTO_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext KantoFossilScientistGiveText
	waitbutton
	sjump .KantoGaveScientistFossil

.No
	writetext KantoFossilScientistNoText
	waitbutton
	closetext
	end

.KantoGaveScientistFossil:
	writetext KantoFossilScientistTimeText
	waitbutton
	closetext
       ; older versions will use FadeBlackQuickly below instead
	; special FadeOutToBlack ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.KantoGiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_KANTO_SCIENTIST_OLD_AMBER
	writetext KantoFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext KantoFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext KantoFossilScientistMonText
	givepoke AERODACTYL, 1
	closetext
	end

.KantoGiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_KANTO_SCIENTIST_DOME_FOSSIL
	writetext KantoFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext KantoFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext KantoFossilScientistMonText
	givepoke KABUTO, 1
	closetext
	end

.KantoGiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_KANTO_SCIENTIST_HELIX_FOSSIL
	writetext KantoFossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext KantoFossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext KantoFossilScientistMonText
	givepoke OMANYTE, 1
	closetext
	end

.NoRoom:
	writetext KantoFossilScientistPartyFullText
	waitbutton
	closetext
	end

.KantoMoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .KantoMenuData
	db 1 ; default option

.KantoMenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Ámbar viejo@"
	db "Fósil Domo@"
	db "Fósil Helix@"
	db "Salir@"

KantoFossilScientistIntroText:
	text "¡Hola!"

	para "¡Soy un doctor"
	line "muy importante!"

	para "¡Y aquí estudio"
	line "raros fósiles de"
	cont "<POKE>mon!"

	para "¿Tienes algún"
	line "fósil para mí?"
	done

KantoFossilScientistNoText:
	text "¡No! ¡Qué pena!"
	done

KantoFossilScientistPartyFullText:
	text "Tu equipo está"
	line "lleno."
	done

KantoFossilScientistTimeText:
	text "¡Tardaré un poco!"

	para "¡Date un paseo"
	line "mientras tanto!"
	done

KantoFossilScientistDoneText:
	text "¿Dónde estabas?"

	para "¡Tu fósil ha"
	line "revivido!"
	done

KantoFossilScientistMonText:
	text "¡Es un fósil de"
	line "@"
	text_ram wStringBuffer3
	text ","
	cont "un <POKE>mon ya"
	cont "extinto!"

	para "¡Mi Máquina de"
	line "Resurrección"
	cont "revivirá a ese"
	cont "<POKE>mon!"
	done

KantoFossilScientistGiveText:
	text "¡Date prisa y"
	line "dame eso!"

	para "<PLAYER> le dio"
	line "el fósil."
	done

KantoFossilScientistReceiveText:
	text "<PLAYER> recibió"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CinnabarLabFossilRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 5
	warp_event  3,  7, CINNABAR_LAB, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  0,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, KantoFossilScientist, -1
