	object_const_def
	const VIRIDIANSCHOOLHOUSE_COOLTRAINER_F
	const VIRIDIANSCHOOLHOUSE_ELDER

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianAcademyBlackboard:
	opentext
	writetext ViridianAcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext ViridianAcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext ViridianAcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext ViridianAcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext ViridianAcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext ViridianAcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, 13
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 6, 1 ; rows, columns
	db 9 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "Envenenado@"
	db "Paralizado@"
	db "Dormido@"
	db "Quemado@"
	db "Congelado@"
	db "Salir@"

TeacherScript:
	jumptextfaceplayer ViridianSchoolHouseElderText

StudentScript:
	jumptext ViridianSchoolHouseCooltrainerFText

ViridianSchoolHouseCooltrainerFText::
	text "¡Déjame! Intento"
	line "memorizar todas"
	cont "mis notas."
	done

ViridianSchoolHouseElderText::
	text "¡Hola!"

	para "Asegúrate de leer"
	line "lo escrito en la"
	cont "pizarra con aten-"
	cont "ción."
	done

ViridianAcademyBlackboardText:
	text "La pizarra indica"
	line "cómo cambian de"

	para "estado los Pokémon"
	line "en combate."

	para "¿Qué tema quieres"
	line "leer?"
	done

ViridianAcademyPoisonText:
	text "Si un Pokémon es"
	line "envenenado,"
	cont "perderá PS."

	para "El envenenamiento"
	line "continúa tras el"

	para "combate y al"
	line "caminar seguirá"
	cont "perdiendo PS."

	para "Para curarlo, usa"
	line "Antídoto."
	done

ViridianAcademyParalysisText:
	text "La parálisis baja"
	line "la Velocidad y"

	para "puede impedir el"
	line "movimiento."

	para "Permanece tras el"
	line "combate, así que"
	cont "usa Antiparaliz."
	done

ViridianAcademySleepText:
	text "Si tu Pokémon"
	line "se queda dormido"

	para "no podrá realizar"
	line "ningún movimiento."

	para "Un Pokémon dormido"
	line "no se despierta"
	cont "tras el combate."

	para "Despiértalo con"
	line "Despertar."
	done

ViridianAcademyBurnText:
	text "Las quemaduras"
	line "consumen PS,"

	para "reducen el poder"
	line "del ataque y"

	para "permanecen tras"
	line "el combate."

	para "Usa Antiquemar"
	line "como cura."
	done

ViridianAcademyFreezeText:
	text "Si tu Pokémon está"
	line "congelado, no"
	cont "podrá hacer nada."

	para "Seguirá congelado"
	line "tras el combate."

	para "Descongélalo con"
	line "Antihielo."
	done

ViridianSchoolHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 6
	warp_event  3,  7, VIRIDIAN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, ViridianAcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, ViridianAcademyBlackboard

	
	def_object_events
	object_event  3,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StudentScript, -1
	object_event  5,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TeacherScript, -1
