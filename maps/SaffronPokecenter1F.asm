	object_const_def
	const SAFFRONPOKECENTER1F_NURSE
	const SAFFRONPOKECENTER1F_TEACHER
	const SAFFRONPOKECENTER1F_FISHER
	const SAFFRONPOKECENTER1F_YOUNGSTER

SaffronPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

SaffronPokecenter1FTeacherScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer SaffronPokecenter1FTeacherText

.mobile
	jumptextfaceplayer SaffronPokecenter1FTeacherMobileText

SaffronPokecenter1FFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .SolvedKantoPowerCrisis
	writetext SaffronPokecenter1FFisherText
	waitbutton
	closetext
	end

.SolvedKantoPowerCrisis:
	writetext SaffronPokecenter1FFisherReturnedMachinePartText
	waitbutton
	closetext
	end

SaffronPokecenter1FYoungsterScript:
	jumptextfaceplayer SaffronPokecenter1FYoungsterText

SaffronPokecenter1FTeacherText:
	text "¿Cómo son los"
	line "Centros Pokémon"
	cont "de Johto?"

	para "Oh… ya veo."
	line "Así que no son tan"

	para "diferentes de los"
	line "de Kanto…"

	para "¡Entonces puedo ir"
	line "a Johto sin tener"
	cont "que preocuparme!"
	done

SaffronPokecenter1FTeacherMobileText:
	text "¿Cómo son los"
	line "Centros Pokémon"
	cont "de Johto?"

	para "…Oh, ya veo."
	line "Así que permiten"

	para "conectar con gente"
	line "de lejos…"

	para "¡Entonces le diré"
	line "a mi amigo de"

	para "Johto que capture"
	line "un Marill y me lo"
	cont "cambie!"
	done

SaffronPokecenter1FFisherText:
	text "Acabo de cruzar"
	line "el Túnel Roca."

	para "Pasaba algo en la"
	line "Central Energía."
	done

SaffronPokecenter1FFisherReturnedMachinePartText:
	text "Las cuevas suelen"
	line "derrumbarse."

	para "Últimamente han"
	line "desaparecido"

	para "varias cuevas,"
	line "como la de"
	cont "Ciudad Celeste."

	para "Para un montañero"
	line "profesional, eso"
	cont "es obvio."
	done

SaffronPokecenter1FYoungsterText:
	text "La Oficina Central"
	line "de Silph S.A. y"

	para "la Estación del"
	line "Magnetotrén son"

	para "los lugares más"
	line "vistos de Azafrán."
	done

SaffronPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 4
	warp_event  4,  7, SAFFRON_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FTeacherScript, -1
	object_event  8,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FYoungsterScript, -1
