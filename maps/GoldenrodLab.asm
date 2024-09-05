	object_const_def
	const GOLDENRODLAB_MADERO
	const GOLDENRODLAB_ESTUDIANTE
	const GOLDENRODLAB_DIRECTOR
	const GOLDENRODLAB_SECRETARIA

GoldenrodLab_MapScripts:
	def_scene_scripts

	def_callbacks

ProfesorInsoportable:
	jumptext ProfesorInsoportableText

SeguridadLeal:
	jumptext SeguridadLealText

MatriculaUniversidad:
	jumptext MatriculaUniversidadText

ControlAcceso2Script:
	jumptextfaceplayer ControlAcceso2Text

InformeDescubrimiento:
	jumptext InformeDescubrimientoText

SeguridadLealText:
	text "Investigador: esos"
	line "guardas que han"
	cont "contratado son muy"
	cont "leales."

	para "Aunque atacase la"
	line "ciudad el mismo"
	cont "Team Rocket segui-"
	cont "rían en su puesto."

	para "Chica: pero ¿de"
	line "dónde han salido?"

	para "Investigador: No"
	line "sé. Vinieron con"
	cont "el director."
	done

InformeDescubrimientoText:
	text "El Profesor Tree"
	line "ha descubierto la"
	cont "forma de revivir"
	cont "fósiles."

	para "Ya no dependemos"
	line "del laboratorio de"
	cont "Kanto."

	para "Un gran paso en la"
	line "independencia de"
	cont "Johto."
	done

ControlAcceso2Text:
	text "ALTO. Seguridad"
	line "del Campus."

	para "Solo se permite el"
	line "acceso a los estu-"
	cont "diantes."
	done

MatriculaUniversidadText:
	text "Déjame. Estoy muy"
	line "liado con la"
	cont "matrícula."

	para "No sé para qué."
	
	para "Porque las clases"
	line "están suspendidas"
	cont "hasta nuevo aviso."
	done

ProfesorInsoportableText:
	text "Secretaria: desde"
	line "que hizo su descu-"
	cont "brimiento, el pro-"
	cont "fesor Tree está"
	cont "insoportable."
	
	para "Director: trae mu-"
	line "cho dinero a la"
	cont "Universidad"

	para "No quiero escuchar"
	line "más sobre el tema."
	done


GoldenrodLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 11, GOLDENROD_CITY, 18
	warp_event  9, 11, GOLDENROD_CITY, 19
	warp_event 19, 11, GOLDENROD_LAB_B1, 1

	def_coord_events

	def_bg_events
	bg_event  2, 10, BGEVENT_READ, InformeDescubrimiento
	
	def_object_events
	object_event 19,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ControlAcceso2Script, -1
	object_event 13,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MatriculaUniversidad, -1
	object_event  0,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ProfesorInsoportable, -1
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfesorInsoportable, -1
	object_event  8,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SeguridadLeal, -1
	object_event  9,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeguridadLeal, -1
