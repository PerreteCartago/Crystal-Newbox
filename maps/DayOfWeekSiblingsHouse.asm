	object_const_def
	const DAYOFWEEKSIBLINGSHOUSE_POKEDEX

DayOfWeekSiblingsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DayOfWeekSiblingsHousePokedexScript:
	opentext
	writetext DayOfWeekSiblingsHousePokedexText1
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText2
	yesorno
	iffalse .End
	writetext DayOfWeekSiblingsHousePokedexText3
	waitbutton
.End:
	closetext
	end

DayOfWeekSiblingsHousePokedexText1:
	text "Aquí hay algo"
	line "escrito."

	para "¿Quieres leerlo?"
	done

DayOfWeekSiblingsHousePokedexText2:
	text "A mis hermanos y"
	line "hermanas:"

	para "Nos enorgullece"
	line "ayudar a los"

	para "entrenadores"
	line "Pokémon."

	para "Cuando habléis con"
	line "los entrenadores,"
	cont "dadles algo útil."

	para "Besos,"
	line "Luna"

	para "¿Sigues leyendo?"
	done

DayOfWeekSiblingsHousePokedexText3:
	text "Lunes, Luna"
	line "Ruta 40"

	para "Martes, Marta"
	line "Ruta 29"

	para "Miércoles, Miguel"
	line "Lago de la Furia"

	para "Jueves, Josué"
	line "Ruta 36"

	para "Viernes, Vicki"
	line "Ruta 32"

	para "Sábado, Sabino"
	line "Ciudad Endrino"

	para "Domingo, Domingo"
	line "Ruta 37"
	done

DayOfWeekSiblingsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_26, 3
	warp_event  3,  7, ROUTE_26, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayOfWeekSiblingsHousePokedexScript, -1
