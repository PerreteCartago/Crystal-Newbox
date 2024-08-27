	object_const_def
	const ECRUTEAKWILLOWISPHOUSE_COOLTRAINER_M
	const ECRUTEAKWILLOWISPHOUSE_POKEDEX


EcruteakWillOWispHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakTutorWillOWispScript:
	faceplayer
	opentext
	writetext EcruteakTutorWillOWispText
	waitbutton
	writetext EcruteakTutorWillOWispText2
	yesorno
	iffalse .TutorRefused
	setval WILL_O_WISP
	writetext EcruteakTutorWillOWispClear
	special MoveTutor
	ifequal FALSE, .TeachMove
.TutorRefused
	writetext EcruteakTutorWillOWispRefused
	waitbutton
	closetext
	end

.TeachMove
	writetext EcruteakTutorWillOWispTaught
	waitbutton
	closetext
	end

EcruteakHistoryBook2:
	opentext
	writetext EcruteakHistoryBook2Text
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowers2Text
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMon2Text
	waitbutton
	closetext
	end

WillOWispHouseRadio:
	jumpstd Radio2Script


EcruteakTutorWillOWispText:
	text "Se dice que, anti-"
	line "güamente, el míti-"
	cont "co <POKE>mon Lugia"

	para "hizo su nido en la"
	line "cima de la torre."

	para "Un día cayó un ra-"
	line "yo sobre la torre,"
	
	para "envolviéndola en"
	line "llamas por 3 días"
	cont "con sus noches,"
	
	para "hasta que vino un"
	line "gran aguacero que"
	cont "apagó las llamas."

	para "Esto provocó la"
	line "destrucción total"
	cont "de la torre."

	para "Allí, 3 inocentes"
	line "<POKE>mon quedaron"
	cont "atrapados en las"
	cont "llamas y murieron."

	para "Ho Oh vio esto y,"
	line "con sus milagrosos"
	cont "poderes, les dió"
	cont "vida de nuevo."

	para "Y nuevos poderes."

	para "Desde ese momento"
	line "fueron conocidos"
	cont "como:"

	para "Raikou:  personi-"
	line "ficación del rayo"
	cont "que alcanzó la"
	cont "Torre."

	para "Entei:  personifi-"
	line "cación del fuego"
	cont "que quemó la torre"

	para "Suicune:  personi-"
	line "ficación del agua"
	cont "que apagó las"
	cont "llamas."
	done

EcruteakTutorWillOWispText2:
	text "Pareces muy inte-"
	line "resado en esta"
	cont "historia."

	para "Eso me gusta."

	para "¿Quieres que ense-"
	line "ñe a alguno de tus"
	cont "<POKE>mon el ataque"
	cont "Fuego fatuo?"
	done

EcruteakTutorWillOWispRefused:
	text "¿Querías conocer"
	line "la historia de la"
	cont "ciudad?"
	
	para "¡Qué chico más"
	line "majo?"
	
	para "Vuelve cuando"
	line "quieras."
	done

EcruteakTutorWillOWispClear:
	text_start
	done

EcruteakTutorWillOWispTaught:
	text "Hecho."

	para "Te he dado un gran"
	line "poder."

	para "Úsalo sabiamente."
	done

EcruteakHistoryBook2Text:
	text "Historia de"
	line "Ciudad Iris"

	para "¿Quieres leerla?"
	done

EcruteakTwoTowers2Text:
	text "En Ciudad Iris"
	line "había dos torres."

	para "Cada una acogía a"
	line "un fuerte Pokémon"
	cont "volador."

	para "Pero una de ellas"
	line "se quemó."

	para "Y desde entonces"
	line "no se ha visto a"

	para "ninguno de los dos"
	line "Pokémon."

	para "¿Sigues leyendo?"
	done

EcruteakThreeMon2Text:
	text "En Ciudad Iris"
	line "también vivían"

	para "tres Pokémon que"
	line "corrían por toda"
	cont "la ciudad."

	para "Dicen que habían"
	line "nacido del agua,"

	para "del fuego y del"
	line "rayo."

	para "Pero como no"
	line "podían contener su"
	cont "enorme fuerza…"

	para "Huyeron hacia los"
	line "pastos."
	done

EcruteakWillOWispHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 16
	warp_event  4,  7, ECRUTEAK_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, WillOWispHouseRadio

	
	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakTutorWillOWispScript, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook2, -1