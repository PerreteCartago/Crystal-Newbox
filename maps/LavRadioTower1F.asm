	object_const_def
	const LAVRADIOTOWER1F_RECEPTIONIST
	const LAVRADIOTOWER1F_OFFICER
	const LAVRADIOTOWER1F_SUPER_NERD1
	const LAVRADIOTOWER1F_GENTLEMAN
	const LAVRADIOTOWER1F_SUPER_NERD2

LavRadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavRadioTower1FReceptionistScript:
	jumptextfaceplayer LavRadioTower1FReceptionistText

LavRadioTower1FOfficerScript:
	jumptextfaceplayer LavRadioTower1FOfficerText

LavRadioTower1FSuperNerd1Script:
	jumptextfaceplayer LavRadioTower1FSuperNerd1Text

LavRadioTower1FGentlemanScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavRadioTower1FGentlemanText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavRadioTower1FGentlemanText_ReturnedMachinePart
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
.GotExpnCard:
	writetext LavRadioTower1FGentlemanText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "Tar Expn@"

LavRadioTower1FSuperNerd2Script:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext LavRadioTower1FSuperNerd2Text
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext LavRadioTower1FSuperNerd2Text_GotExpnCard
	waitbutton
	closetext
	end

LavRadioTower1FDirectory:
	jumptext LavRadioTower1FDirectoryText

LavRadioTower1FPokeFluteSign:
	jumptext LavRadioTower1FPokeFluteSignText

LavRadioTower1FReferenceLibrary: ; unreferenced
	jumptext LavRadioTower1FReferenceLibraryText

LavRadioTower1FReceptionistText:
	text "¿Qué tal? Mira por"
	line "donde quieras en"
	cont "esta planta."
	done

LavRadioTower1FOfficerText:
	text "Lo siento, pero"
	line "sólo puedes dar"

	para "una vuelta por la"
	line "planta baja."

	para "Desde que una"
	line "banda criminal"

	para "asaltó la Torre"
	line "Radio de Johto,"

	para "tuvimos que incre-"
	line "mentar las medidas"
	cont "de seguridad."
	done

LavRadioTower1FSuperNerd1Text:
	text "En la Torre Radio"
	line "hay mucha gente"

	para "que trabaja"
	line "duramente."

	para "Seguro que están"
	line "haciendo todo lo"

	para "posible por emitir"
	line "buenos programas."
	done

LavRadioTower1FGentlemanText:
	text "¡Oh, no, no, no!"

	para "No hemos emitido"
	line "desde que cerró la"
	cont "Central de Energía."

	para "Si no emitimos, de"
	line "nada servirá el"

	para "esfuerzo realizado"
	line "por la emisora."

	para "¡Me arruinaré!"
	done

LavRadioTower1FGentlemanText_ReturnedMachinePart:
	text "¡Ah! Así que tú,"
	line "<PLAY_G>, arreglas-"
	cont "te el problema de"
	cont "la Central"
	cont "Energía…"

	para "Gracias a ti, no"
	line "perdí mi empleo."

	para "¡Me has salvado"
	line "la vida!"

	para "Acepta esto como"
	line "muestra de mi"
	cont "gratitud."
	done

LavRadioTower1FGentlemanText_GotExpnCard:
	text "Con eso podrás"
	line "sintonizar los"

	para "programas de"
	line "radio de Kanto."

	para "¡Jajajaja!"
	done

LavRadioTower1FSuperNerd2Text:
	text "¡Oye, joven!"

	para "¡Soy el Director"
	line "de Música!"

	para "¡Vaya! Tu <POKE>gear"
	line "no sintoniza mis"

	para "programas de"
	line "música. ¡Qué pena!"

	para "Si consigues una"
	line "Tarjeta Expn, los"

	para "podrás oír. ¡Hazte"
	line "con una!"
	done

LavRadioTower1FSuperNerd2Text_GotExpnCard:
	text "¡Oye, joven!"

	para "¡Soy el Director"
	line "de Música!"

	para "Soy el encargado"
	line "de las fantásticas"

	para "melodías que se"
	line "emiten aquí."

	para "No seas anticuado."
	line "¡Atrapa la música"
	cont "de las ondas!"
	done

LavRadioTower1FDirectoryText:
	text "PB Recepción"
	line "P1 Ventas"

	para "P2 Personal"
	line "P3 Producción"

	para "P4 Despacho del"
	line "   Director"
	done

LavRadioTower1FPokeFluteSignText:
	text "Anima a los Poké-"
	line "mon con la melodía"

	para "de la <POKE>flauta"
	line "del Canal 20"
	done

LavRadioTower1FReferenceLibraryText:
	text "¡Uau! Un estante"
	line "lleno de CD y"
	cont "vídeos de Pokémon."

	para "Debe de ser una"
	line "biblioteca."
	done

LavRadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, LavRadioTower1FDirectory
	bg_event  5,  0, BGEVENT_READ, LavRadioTower1FPokeFluteSign

	def_object_events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FReceptionistScript, -1
	object_event 15,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FOfficerScript, -1
	object_event  1,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd1Script, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FGentlemanScript, -1
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd2Script, -1
