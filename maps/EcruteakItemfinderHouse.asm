	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "¡Ah! ¿Vas de"
	line "aventura con tus"
	cont "Pokémon?"

	para "¿Y qué es una"
	line "aventura sin un"
	cont "tesoro?"

	para "¿Tengo razón o no?"
	done

EcruteakItemfinderTrueSpiritText:
	text "¡Bien! Entiendes"
	line "el verdadero"

	para "espíritu de la"
	line "aventura."

	para "¡Me gusta!"
	line "Toma esto."
	done

ItemfinderExplanationText:
	text "Por aquí hay"
	line "muchos objetos que"

	para "no se ven tan"
	line "fácilmente."

	para "Utiliza el"
	line "Buscaobjetos para"

	para "saber si hay algún"
	line "objeto cerca."

	para "Éste no indica el"
	line "lugar exacto, así"

	para "que tú tendrás que"
	line "encontrarlo."

	para "¡Ah, sí! Dicen que"
	line "hay muchos objetos"

	para "en Torre Quemada"
	line "de Ciudad Iris."
	done

EcruteakItemfinderToEachHisOwnText:
	text "¡Oh! A cada uno lo"
	line "suyo, supongo…"
	done

EcruteakHistoryBookText:
	text "Historia de"
	line "Ciudad Iris"

	para "¿Quieres leerla?"
	done

EcruteakTwoTowersText:
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

EcruteakThreeMonText:
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

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
