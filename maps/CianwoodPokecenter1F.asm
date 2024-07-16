	object_const_def
	const CIANWOODPOKECENTER1F_NURSE
	const CIANWOODPOKECENTER1F_LASS
	const CIANWOODPOKECENTER1F_GYM_GUIDE
	const CIANWOODPOKECENTER1F_SUPER_NERD

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FLassScript:
	jumptextfaceplayer CianwoodPokecenter1FLassText

CianwoodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuideWinScript
	opentext
	writetext CianwoodGymGuideText
	waitbutton
	closetext
	end

.CianwoodGymGuideWinScript:
	opentext
	writetext CianwoodGymGuideWinText
	waitbutton
	closetext
	end

CianwoodPokecenter1FSuperNerdScript:
	jumptextfaceplayer CianwoodPokecenter1FSuperNerdText

CianwoodPokecenter1FLassText:
	text "¿Conoces al"
	line "Pokémaníaco?"

	para "Siempre está"
	line "presumiendo de sus"
	cont "raros Pokémon."
	done

CianwoodGymGuideText:
	text "Los entrenadores"
	line "del Gimnasio"

	para "Pokémon de aquí"
	line "son muy"
	cont "agresivos."

	para "Si me ven, seguro"
	line "que vienen a por"
	cont "mí."

	para "Escucha este"
	line "consejo: el Líder"

	para "del Gimnasio usa"
	line "Pokémon del tipo"
	cont "lucha."

	para "Así que deberías"
	line "retarle con"

	para "Pokémon de tipo"
	line "psíquico."

	para "Elimina sus Poké-"
	line "mon antes de que"

	para "puedan usar su"
	line "fuerza física."

	para "¿Y esas rocas en"
	line "mitad del"
	cont "Gimnasio?"

	para "Si no las mueves"
	line "adecuadamente,"

	para "no llegarás hasta"
	line "el Líder del"
	cont "Gimnasio."

	para "Si te atascas,"
	line "salte."
	done

CianwoodGymGuideWinText:
	text "¡<PLAYER>! ¡Has"
	line "ganado! ¡Con sólo"
	cont "mirarte, lo sé!"
	done

CianwoodPokecenter1FUnusedText1:
; unreferenced
	text "¿No te gusta mos-"
	line "trar tus Pokémon a"
	cont "tus amigos?"

	para "Ojalá pudiera"
	line "mostrarle mis"

	para "Pokémon a mi amigo"
	line "que vive en Malva."
	done

CianwoodPokecenter1FUnusedText2:
; unreferenced
	text "He luchado con mi"
	line "amigo de Malva"

	para "usando un Adapta-"
	line "dor de Móvil."

	para "Voy perdiendo 5"
	line "a 7 contra él."
	cont "¡Tengo que ganar!"
	done

CianwoodPokecenter1FSuperNerdText:
	text "Me encanta fardar"
	line "de los Pokémon"

	para "que he mejorado."
	line "¿A ti no?"

	para "¡Voy a enfrentarme"
	line "a otros entrenado-"
	cont "res para mostrar"
	cont "mis Pokémon!"
	done

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FLassScript, -1
	object_event  5,  3, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuideScript, -1
	object_event  8,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FSuperNerdScript, -1
