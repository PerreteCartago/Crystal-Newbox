	object_const_def
	const ROUTE15_YOUNGSTER1
	const ROUTE15_YOUNGSTER2
	const ROUTE15_YOUNGSTER3
	const ROUTE15_YOUNGSTER4
	const ROUTE15_TEACHER1
	const ROUTE15_TEACHER2
	const ROUTE15_POKE_BALL

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerTeacherColette:
	trainer TEACHER, COLETTE, EVENT_BEAT_TEACHER_COLETTE, TeacherColetteSeenText, TeacherColetteBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherColetteAfterBattleText
	waitbutton
	closetext
	end

TrainerTeacherHillary:
	trainer TEACHER, HILLARY, EVENT_BEAT_TEACHER_HILLARY, TeacherHillarySeenText, TeacherHillaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherHillaryAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyKipp:
	trainer SCHOOLBOY, KIPP, EVENT_BEAT_SCHOOLBOY_KIP, SchoolboyKippSeenText, SchoolboyKippBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyKippAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyTommy:
	trainer SCHOOLBOY, TOMMY, EVENT_BEAT_SCHOOLBOY_TOMMY, SchoolboyTommySeenText, SchoolboyTommyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyTommyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJohnny:
	trainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJohnnyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyBilly:
	trainer SCHOOLBOY, BILLY, EVENT_BEAT_SCHOOLBOY_BILLY, SchoolboyBillySeenText, SchoolboyBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	closetext
	end

Route15Sign:
	jumptext Route15SignText

Route15PPUp:
	itemball PP_UP

TeacherColetteSeenText:
	text "¿Has olvidado"
	line "algo?"
	done

TeacherColetteBeatenText:
	text "¡Kiaaa!"
	done

TeacherColetteAfterBattleText:
	text "Antes de ser"
	line "maestra, solía"

	para "olvidarme de"
	line "muchas cosas."
	done

TeacherHillarySeenText:
	text "Creo que si hace"
	line "sol, los niños"

	para "deberían estar"
	line "jugando en el"

	para "patio en lugar"
	line "de estar en clase."
	done

TeacherHillaryBeatenText:
	text "No quería perder…"
	done

TeacherHillaryAfterBattleText:
	text "Es importante"
	line "estudiar, pero"

	para "hacer deporte"
	line "también."
	done

SchoolboyKippSeenText:
	text "Espera. Tengo que"
	line "llamar a mamá."
	done

SchoolboyKippBeatenText:
	text "¡Lo siento, mamá!"
	line "¡Me han vencido!"
	done

SchoolboyKippAfterBattleText:
	text "Mi madre se"
	line "preocupa mucho por"

	para "mí, tengo que"
	line "llamarla siempre."
	done

SchoolboyTommySeenText:
	text "Luchemos."
	line "¡No perderé!"
	done

SchoolboyTommyBeatenText:
	text "¡Me olvidé de"
	line "hacer los deberes!"
	done

SchoolboyTommyAfterBattleText:
	text "¡Sayonara! Lo he"
	line "aprendido en la"
	cont "clase de japonés."
	done

SchoolboyJohnnySeenText:
	text "Vamos a la Torre"
	line "Radio de Lavanda"

	para "para realizar unos"
	line "estudios sociales."
	done

SchoolboyJohnnyBeatenText:
	text "¡Eres demasiado"
	line "fuerte!"
	done

SchoolboyJohnnyAfterBattleText:
	text "Estoy cansado de"
	line "caminar. Necesito"
	cont "un descanso."
	done

SchoolboyBillySeenText:
	text "¡Mi asignatura"
	line "favorita es la"
	cont "gimnasia!"
	done

SchoolboyBillyBeatenText:
	text "¡Oh, no! ¿Cómo he"
	line "podido perder?"
	done

SchoolboyBillyAfterBattleText:
	text "¡Si los Pokémon"
	line "fueran una"

	para "asignatura, yo"
	line "sería el mejor!"
	done

Route15SignText:
	text "RUTA 15"

	para "Ciudad Fucsia -"
	line "Pueblo Lavanda"
	done

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  8, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  9, ROUTE_15_FUCHSIA_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29,  9, BGEVENT_READ, Route15Sign

	def_object_events
	object_event 32, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyKipp, -1
	object_event 16, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyTommy, -1
	object_event 19,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJohnny, -1
	object_event 43, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyBilly, -1
	object_event 26,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerTeacherColette, -1
	object_event  8, 12, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherHillary, -1
	object_event 18,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route15PPUp, EVENT_ROUTE_15_PP_UP
