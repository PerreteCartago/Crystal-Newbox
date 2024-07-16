	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script GoldenrodGymNoop1Scene, SCENE_GOLDENRODGYM_NOOP
	scene_script GoldenrodGymNoop2Scene, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

GoldenrodGymNoop1Scene:
	end

GoldenrodGymNoop2Scene:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
	closetext
	end

.GotAttract:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForAttract:
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOOP
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetext
	end

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "¡Hola! Soy Blanca."

	para "¡Todos jugaban a"
	line "Pokémon, así"
	cont "que yo también!"

	para "¡Los Pokémon son"
	line "muy monos!"

	para "¿Quieres luchar?"
	line "¡Te lo advierto!"
	cont "¡Soy muy buena!"
	done

WhitneyShouldntBeSoSeriousText:
	text "¡Ayy…!"

	para "¡Uaaaaaaa!"
	line "¡Qué mal!"

	para "¡No deberías ser"
	line "así! ¡Sí, tú!"
	cont "¡Te lo digo a ti!"
	done

WhitneyYouMeanieText:
	text "¡Uaaaaa!"

	para "¡Uaaaaa!"

	para "¡Buaa, buaa…!"
	line "¡Eres cruel!"
	done

WhitneyWhatDoYouWantText:
	text "¡Sniff…!"

	para "¿Qué quieres?"
	line "¿Una Medalla?"

	para "¡Ah, sí! Se me"
	line "olvidaba. Toma la"
	cont "Medalla Planicie."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> recibió la"
	line "Medalla Planicie."
	done

WhitneyPlainBadgeText:
	text "Con Med. Planicie"
	line "los Pokémon"

	para "podrán usar Fuerza"
	line "fuera del combate."

	para "¡Ah, toma esto"
	line "también!"
	done

WhitneyAttractText:
	text "¡Es Atracción!"
	line "Utiliza todo el"

	para "encanto de un"
	line "Pokémon."

	para "¿No es perfecto"
	line "para una monada"
	cont "como yo?"
	done

WhitneyGoodCryText:
	text "¡Ah, menuda"
	line "llorera!"

	para "¡Vuelve cuando"
	line "quieras! ¡Adiós!"
	done

LassCarrieSeenText:
	text "No dejes que te"
	line "impresione la"

	para "belleza de mis"
	line "Pokémon."
	cont "¡Son muy fuertes!"
	done

LassCarrieBeatenText:
	text "¡Vaya…! Pensaba"
	line "que eras débil…"
	done

LassCarrieAfterBattleText:
	text "¿Creen mis Pokémon"
	line "que soy guapa?"
	done

LassBridgetSeenText:
	text "Prefiero un"
	line "Pokémon mono a un"
	cont "Pokémon fuerte."

	para "¡Mis Pokémon son"
	line "monos y fuertes!"
	done

LassBridgetBeatenText:
	text "¡Oh, no, no, no!"
	done

LassBridgetAfterBattleText:
	text "Intento vencer a"
	line "Blanca, pero…"
	cont "Es deprimente."

	para "¡De acuerdo! ¡Si"
	line "pierdo, volveré"

	para "a intentarlo"
	line "otra vez!"
	done

BridgetWhitneyCriesText:
	text "¡Oh, no! Has hecho"
	line "llorar a Blanca."

	para "¡No te preocupes!"
	line "Pronto dejará de"

	para "llorar. Siempre"
	line "llora si pierde."
	done

BeautyVictoriaSeenText:
	text "¡Tienes gracia!"
	line "¡Me gustas!"

	para "¡Pero no me"
	line "rendiré!"
	done

BeautyVictoriaBeatenText:
	text "Veamos… ¡Uups!"
	line "¿Ya está?"
	done

BeautyVictoriaAfterBattleText:
	text "¡Uau! ¡Debes de"
	line "valer mucho para"

	para "haberme ganado!"
	line "¡Sigue así!"
	done

BeautySamanthaSeenText:
	text "¡Hazlo lo mejor"
	line "que puedas o"
	cont "acabaré contigo!"
	done

BeautySamanthaBeatenText:
	text "¡No! ¡Oh, Meowth,"
	line "lo siento mucho!"
	done

BeautySamanthaAfterBattleText:
	text "Le había enseñado"
	line "a Meowth todo tipo"
	cont "de ataques…"
	done

GoldenrodGymGuideText:
	text "¡Hola! ¿Vas a"
	line "combatir?"

	para "Este Gimnasio es"
	line "para entrenadores"

	para "que usan Pokémon"
	line "de tipo normal."

	para "Te recomiendo usar"
	line "los Pokémon de"
	cont "tipo lucha."
	done

GoldenrodGymGuideWinText:
	text "¿Has ganado?"
	line "¡Genial! Yo estaba"

	para "ocupado mirando a"
	line "las chicas."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
