	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "¡Hola, <PLAY_G>!"
	line "Mi marido siempre"

	para "está muy ocupado."
	line "Espero que esté"
	cont "bien."

	para "Cuando está"
	line "embebido en la"

	para "investigación"
	line "Pokémon, se olvida"
	cont "hasta de comer."
	done

ElmsSonText:
	text "¡Cuando sea mayor,"
	line "ayudaré a mi"
	cont "padre!"

	para "¡Voy a ser un gran"
	line "profesor Pokémon!"
	done

ElmsHouseLabFoodText:
; unused
	text "Aquí hay comida."
	line "Debe de ser para"
	cont "el Laboratorio."
	done

ElmsHousePokemonFoodText:
; unused
	text "Aquí hay comida."
	line "Debe de ser para"
	cont "los Pokémon."
	done

ElmsHousePCText:
	text "Pokémon… ¿De"
	line "dónde vienen?"

	para "¿Adónde van?"

	para "¿Por qué nadie ha"
	line "visto un Pokémon"
	cont "nacer?"

	para "¡Quiero saberlo!"
	line "¡Dedicaré mi vida"

	para "al estudio de"
	line "los Pokémon!"

	para "…"

	para "Es parte de los"
	line "papeles de la"

	para "investigación del"
	line "Profesor Elm."
	done


ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
