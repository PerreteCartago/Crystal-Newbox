	object_const_def
	const GOLDENROD_SCALD_HOUSE_FISHERMAN

ScaldHouse_MapScripts:
	def_scene_scripts

	def_callbacks


GoldenRodCityTutorScaldScript:
	faceplayer
	opentext
	writetext GoldenRodCityTutorScaldText
	waitbutton
	checkitem NUGGET
	iffalse .NoNugget
	writetext GoldenRodCityTutorScaldText2
	yesorno
	iffalse .TutorRefused
	setval SCALD
	writetext GoldenRodCityTutorScaldClear
	special MoveTutor
	ifequal FALSE, .TeachMove

.TutorRefused
	writetext GoldenRodCityTutorScaldRefused
	waitbutton
	closetext
	end

.NoNugget
	writetext GoldenRodCityTutorScaldNoNugget
	waitbutton
	closetext
	end

.TeachMove
 	writetext GoldenRodCityTutorScaldPayment
 	takeitem NUGGET
 	waitbutton
 	writetext GoldenRodCityTutorScaldTaught
 	waitbutton
 	closetext
 	end

GoldenRodCityTutorScaldText:
	text "Buenas!"

	para "Soy el pescador"
	line "ígneo."

	para "Puedo quemar a mis"
	line "enemigos con el"
	cont "poder del agua."
	done

GoldenRodCityTutorScaldText2:
	text "¡Ajá!"
	line "¡Y sí!"

	para "Puedo enseñar a"
	line "un Pokemon de tu"
	cont "equipo cómo escal-"
	cont "dar a sus enemigos"

	para "Pero tiene un pre-"
	line "cio: Una pepita."
	done

GoldenRodCityTutorScaldRefused:
	text "Tú te lo pierdes."
	done

GoldenRodCityTutorScaldClear:
	text_start
	done

GoldenRodCityTutorScaldPayment:
	text "<PLAYER> entregó"
	line "una pepita."
	done

GoldenRodCityTutorScaldTaught:
	text "No dudes en volver"
	line "si encuentras más"
	cont "pepitas."

	para "Puedes conseguir"
	line "por el mapa."

	para "Y de vez en cuando"
	line "en el subterráneo."
	done

GoldenRodCityTutorScaldNoNugget:
	text "Ah, no tienes nin-"
	line "guna pepita."

	para "Puedes conseguir"
	line "por el mapa."

	para "Y de vez en cuando"
	line "en el subterráneo."
	done

ScaldHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOLDENROD_CITY, 16
	warp_event  2,  7, GOLDENROD_CITY, 16

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenRodCityTutorScaldScript, -1