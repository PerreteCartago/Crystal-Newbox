	object_const_def
	const FUCHSIAPOKECENTER1F_NURSE
	const FUCHSIAPOKECENTER1F_COOLTRAINER_M
	const FUCHSIAPOKECENTER1F_COOLTRAINER_F
	const FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR

FuchsiaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script FuchsiaPokeCenter1FNoopScene ; unusable

	def_callbacks

FuchsiaPokeCenter1FNoopScene:
	end

FuchsiaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

FuchsiaPokecenter1FCooltrainerMScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerMText

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText

FuchsiaPokecenter1FJanineImpersonatorScript:
	faceplayer
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText1
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_JANINE
	special LoadUsedSpritesGFX
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText2
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_LASS
	special LoadUsedSpritesGFX
	end

FuchsiaPokecenter1FJanineImpersonatorSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

FuchsiaPokecenter1FCooltrainerMText:
	text "¡Anda! Tienes un"
	line "nuevo tipo de"
	cont "<POKE>dex."

	para "¿Te la ha dado el"
	line "Profesor Oak?"
	done

FuchsiaPokecenter1FCooltrainerFText:
	text "Me sorprendió"
	line "mucho el Gimnasio."

	para "Todas las chicas"
	line "parecían idénti-"
	cont "cas."
	done

FuchsiaPokecenter1FJanineImpersonatorText1:
	text "¡Soy Sachiko!"
	line "Abracadabra…"
	done

FuchsiaPokecenter1FJanineImpersonatorText2:
	text "¿Has visto? ¡Ahora"
	line "soy como ella!"
	done

FuchsiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, FUCHSIA_CITY, 5
	warp_event  6,  7, FUCHSIA_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FNurseScript, -1
	object_event  2,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
	object_event  9,  4, SPRITE_JANINE_IMPERSONATOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FJanineImpersonatorScript, -1
