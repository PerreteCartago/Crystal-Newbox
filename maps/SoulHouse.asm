	object_const_def
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

MrFujiText:
	text "SR. Fuji: ¡Hola!"

	para "¡Mmm…! Parece que"
	line "estás educando a"

	para "tus Pokémon con"
	line "mucho cariño."

	para "Los amantes de los"
	line "Pokémon vienen a"

	para "rendir homenaje a"
	line "Pokémon muertos."

	para "Por favor, muestra"
	line "tu condolencia por"

	para "las almas Pokémon"
	line "que han partido."

	para "Seguro que eso"
	line "les hará felices."
	done

SoulHouseTeacherText:
	text "Creo que aquí hay"
	line "otras tumbas de"
	cont "Pokémon."

	para "Hay muchas cámaras"
	line "en las que sólo"

	para "puede entrar el"
	line "Sr. Fuji."
	done

SoulHouseLassText:
	text "He venido con mi"
	line "madre a visitar"

	para "las tumbas de los"
	line "Pokémon…"
	done

SoulHouseGrannyText:
	text "A los Pokémon que"
	line "vivían conmigo…"

	para "los quería como a"
	line "mis nietos…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
