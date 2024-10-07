	object_const_def
	const CINNABAR_LAB_METRONOME_SCIENTIST


CinnabarLabMetronomeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabMetronomeRoomTutorScript:
	faceplayer
	opentext
	writetext CinnabarLabMetronomeRoomTutorText
	waitbutton
	checkitem MYSTERYBERRY
	iffalse .NoBerry
	writetext CinnabarLabMetronomeRoomTutorText2
	yesorno
	iffalse .TutorRefused
	setval METRONOME
	writetext CinnabarLabMetronomeRoomTutorClear
	special MoveTutor
	ifequal FALSE, .TeachMove

.TutorRefused
	writetext CinnabarLabMetronomeRoomTutorRefused
	waitbutton
	closetext
	end

.NoBerry
	writetext CinnabarLabMetronomeRoomTutorNoBerry
	waitbutton
	closetext
	end

.TeachMove
 	writetext CinnabarLabMetronomeRoomTutorPayment
 	takeitem MYSTERYBERRY
 	waitbutton
 	writetext CinnabarLabMetronomeRoomTutorTaught
 	waitbutton
 	closetext
 	end

ScientistLetter:
	jumptext _Lab1Text2

ScientistComputer:
	jumptext _Lab1Text3

_Lab3Text2:
	text "Eevee puede"
	line "evolucionar en"
	cont "cinco tipos de"
	cont "<POKE>mon."

	para "Que se sepa."
	done

_Lab3Text3:
	text "¡Hay un mensaje"
	line "e-mail!"

	para "..."

	para "Los 3 legendarios"
	line "pájaros <POKE>mon"
	cont "son Articuno,"
	cont "Zapdos y Moltres."

	para "Desconocemos"
	line "sus guaridas."

	para "Pensamos explorar"
	line "la caverna que"
	cont "hay cerca de la"
	cont "Ciudad Celeste."

	para "De: Equipo de"
	line "Investigación"
	cont "<POKE>mon"

	para "..."
	done

CinnabarLabMetronomeRoomTutorText:
	text "¡Tac-tac! ¡Hice"
	line "una genial MT!"

	para "¡Es tremendamente"
	line "divertida!"

	para "¡Lleva al cerebro"
	line "de tu <POKE>mon"
	cont "a usar ataques"
	cont "que no conoce!"
	done

CinnabarLabMetronomeRoomTutorText2:
	text "¿Quieres que uno"
	line "de tus <POKE>mon la"
	cont "aprenda y además"
	cont "ayudarnos en"
	cont "nuestra labor?"

	para "Solo tienes que"
	line "traerme una baya"
	cont "misterio."

	para "Solo crecen en"
	line "Johto y quiero"
	cont "investigarlas."
	done

CinnabarLabMetronomeRoomTutorRefused:
	text "Tú te lo pierdes."
	done

CinnabarLabMetronomeRoomTutorClear:
	text_start
	done

CinnabarLabMetronomeRoomTutorPayment:
	text "<PLAYER> entregó"
	line "una baya misterio"
	done

CinnabarLabMetronomeRoomTutorTaught:
	text "No dudes en volver"
	line "si encuentras más"
	cont "bayas misterio."

	para "La ciencia vive"
	line "por gente como tú"
	done

CinnabarLabMetronomeRoomTutorNoBerry:
	text "Ah, no tienes nin-"
	line "guna baya."
	done

CinnabarLabMetronomeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_LAB, 4
	warp_event  2,  7, CINNABAR_LAB, 4

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, ScientistLetter
	bg_event  1,  4, BGEVENT_READ, ScientistComputer

	def_object_events
	object_event  3,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CinnabarLabMetronomeRoomTutorScript, -1
