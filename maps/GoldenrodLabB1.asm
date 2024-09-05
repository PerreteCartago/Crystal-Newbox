	object_const_def
	const GOLDENRODLABB1_FOSSILREVIVER
	const GOLDENRODLABB1_STUDENT
	const GOLDENRODLABB1_STUDENT2
	const GOLDENRODLABB1_STUDENT3

GoldenrodLabB1_MapScripts:
	def_scene_scripts

	def_callbacks

EstudianteInteresadoScript:
	jumptextfaceplayer EstudianteInteresadoText

EstudianteInteresado2Script:
	jumptextfaceplayer EstudianteInteresado2Text

EstudianteDesinteresadoScript:
	jumptextfaceplayer EstudianteDesinteresadoText

FossilScientist:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove the next two lines to immediately receive the fossil
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext FossilScientistIntroText
	waitbutton
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_OLD_AMBER, .OldAmber
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	sjump .No

.OldAmber
	checkitem OLD_AMBER
	iffalse .No
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .No
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext FossilScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.No
	writetext FossilScientistNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext FossilScientistTimeText
	waitbutton
	closetext
      ; older versions will use FadeBlackQuickly below instead
	; special FadeOutToBlack ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext FossilScientistMonText
	givepoke AERODACTYL, 1
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext FossilScientistMonText
	givepoke KABUTO, 1
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext FossilScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext FossilScientistMonText
	givepoke OMANYTE, 1
	closetext
	end

.NoRoom:
	writetext FossilScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Ámbar viejo@"
	db "Fósil Domo@"
	db "Fósil Helix@"
	db "Salir@"

FossilScientistIntroText:
	text "Lo siento, pero no"
	line "tengo tiempo para"
	cont "clases."

	para "Debo continuar mi"
	line "investigación."

	para "¿O vienes a entre-"
	line "garme un fósil?"
	done

FossilScientistNoText:
	text "Pues lo siento."

	para "Estoy ocupado."
	
	para "Vuelve otro día"
	line "pero no para"
	cont "hacerme perder el"
	cont "tiempo."
	done

FossilScientistPartyFullText:
	text "Todo fue como la"
	line "seda."

	para "Mis estudiantes y"
	line "yo hemos revivido"
	cont "este Pokémon."
	cont "Que ahora es tuyo."

	para "¡Espera! No puedes"
	line "llevar más <POKE>mon."
	done

FossilScientistTimeText:
	text "Lleva algo de"
	line "tiempo."

	para "Puedes ir a hacer"
	line "tus recados y vol-"
	cont "ver después."
	done

FossilScientistDoneText:
	text "Todo fue como la"
	line "seda."

	para "Mis estudiantes y"
	line "yo hemos revivido"
	cont "este Pokémon."
	cont "Que ahora es tuyo."
	done

FossilScientistMonText:
	text "Impresionante."

	para "Eso es un fósil de"
	line "@"
	text_ram wStringBuffer3
	text ", un"
	cont "Pokémon extinto."

	para "Mis estudiantes y"
	line "yo podemos devol-"
	cont "verle la vida."
	done

FossilScientistGiveText:
	text "Desprisa, dámelo"

	para "<PLAYER> entrega"
	line "el fósil."
	done

FossilScientistReceiveText:
	text "<PLAYER> recibió"
	line "a @"
	text_ram wStringBuffer3
	text "!"
	done

EstudianteInteresadoText:
	text "Sí. Las clases se"
	line "han cancelado."

	para "Pero yo no me voy."

	para "He aprendido más"
	line "estos días que en"
	cont "los últimos años."
	done

EstudianteInteresado2Text:
	text "Jamás pensé que"
	line "vería revivir un"
	cont "Pokémon."

	para "Sin duda el descu-"
	line "brimiento del año."
	done

EstudianteDesinteresadoText:
	text "El profesor ha"
	line "descubierto algo"
	cont "y las clases se"
	cont "han suspendido."

	para "Me voy al río a"
	line "cazar Pokémon."
	done

GoldenrodLabB1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 16, GOLDENROD_LAB, 3
	warp_event  5, 14, GOLDENROD_LAB_B1, 3
	warp_event  4,  9, GOLDENROD_LAB_B1, 2
	warp_event  5,  9, GOLDENROD_LAB_B1, 2
	warp_event 17, 12, GOLDENROD_LAB_B1, 6
	warp_event 16,  7, GOLDENROD_LAB_B1, 5
	warp_event 17,  7, GOLDENROD_LAB_B1, 5

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  6,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilScientist, -1
	object_event  6,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, EstudianteInteresadoScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EstudianteInteresado2Script, -1
	object_event  3, 17, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EstudianteDesinteresadoScript, -1
