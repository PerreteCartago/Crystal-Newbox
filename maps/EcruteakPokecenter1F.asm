	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUIDE
	const ECRUTEAKPOKECENTER1F_BILL

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script EcruteakPokecenter1FMeetBillScene, SCENE_ECRUTEAKPOKECENTER1F_MEET_BILL
	scene_script EcruteakPokecenter1FNoopScene,     SCENE_ECRUTEAKPOKECENTER1F_NOOP

	def_callbacks

EcruteakPokecenter1FMeetBillScene:
	sdefer EcruteakPokcenter1FBillActivatesTimeCapsuleScript
	end

EcruteakPokecenter1FNoopScene:
	end

EcruteakPokcenter1FBillActivatesTimeCapsuleScript:
	pause 30
	playsound SFX_EXIT_BUILDING
	appear ECRUTEAKPOKECENTER1F_BILL
	waitsfx
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement1
	applymovement PLAYER, EcruteakPokecenter1FPlayerMovement1
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 30
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 20
	turnobject ECRUTEAKPOKECENTER1F_BILL, DOWN
	pause 10
	opentext
	writetext EcruteakPokecenter1F_BillText1
	promptbutton
	sjump .PointlessJump

.PointlessJump:
	writetext EcruteakPokecenter1F_BillText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement2
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_MET_BILL
	setflag ENGINE_TIME_CAPSULE
	setscene SCENE_ECRUTEAKPOKECENTER1F_NOOP
	waitsfx
	end

EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FPokefanMScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText

.mobile
	jumptextfaceplayer EcruteakPokecenter1FPokefanMTextMobile

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText

EcruteakPokecenter1FBillMovement1:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

EcruteakPokecenter1FBillMovement2:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

EcruteakPokecenter1FPlayerMovement1:
	step UP
	step UP
	step UP
	step_end

EcruteakPokecenter1F_BillText1:
	text "Hola, soy Bill."
	line "¿Quién eres tú?"
	cont "¿Eh? ¿<PLAYER>?"

	para "¡Has llegado justo"
	line "a tiempo!"
	done

EcruteakPokecenter1F_BillText2:
	text "Ya he terminado de"
	line "ajustar la Cápsula"
	cont "del Tiempo."

	para "Sabes que puedes"
	line "cambiar Pokémon,"
	cont "¿verdad?"

	para "Mi Cápsula del"
	line "Tiempo sirve para"

	para "intercambiar"
	line "con el pasado."

	para "Pero no podrás"
	line "enviar nada que no"

	para "existiera en el"
	line "pasado."

	para "Si lo haces, el PC"
	line "del pasado podría"
	cont "estropearse."

	para "Así que debes"
	line "eliminar cualquier"

	para "cosa que no"
	line "existiera antes."

	para "Esto es, no envíes"
	line "nuevos movimientos"

	para "ni nuevos Pokémon"
	line "en esta Cápsula."

	para "No te preocupes."
	line "Ya he acabado"
	cont "de ajustarla."

	para "Mañana funcionarán"
	line "todas las Cápsulas"

	para "del Tiempo de los"
	line "Centros Pokémon."

	para "Debo volver pronto"
	line "a Ciudad Trigal."
	cont "Mi familia espera."

	para "¡Hasta luego!"
	done

EcruteakPokecenter1FPokefanMText:
	text "Las Chicas Kimono"
	line "son unas geniales"

	para "bailarinas, además"
	line "de magníficas con"
	cont "sus Pokémon."
	done

EcruteakPokecenter1FPokefanMTextMobile:
	text "Seguro que esperas"
	line "luchar con más"

	para "gente, ¿verdad?"
	line "Parece que hay un"

	para "sitio en el que se"
	line "reúnen los"
	cont "entrenadores."

	para "Te preguntarás"
	line "dónde."

	para "Es pasando Ciudad"
	line "Olivo."
	done

EcruteakPokecenter1FCooltrainerFText:
	text "Morti, el Líder"
	line "del Gimnasio, es"
	cont "muy bueno."

	para "Y sus Pokémon son"
	line "muy fuertes."
	done

EcruteakPokecenter1FGymGuideText:
	text "Lago de la Furia."

	para "Un montón de"
	line "Gyarados…"

	para "¡Esto huele a"
	line "conspiración!"
	done


EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, ECRUTEAK_CITY, 6
	warp_event  6,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  0,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  8,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  8,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
	object_event  0,  7, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_POKE_CENTER_BILL
