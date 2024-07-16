	object_const_def
	const ECRUTEAKGYM_MORTY
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE
	const ECRUTEAKGYM_GRAMPS

EcruteakGym_MapScripts:
	def_scene_scripts
	scene_script EcruteakGymForcedToLeaveScene, SCENE_ECRUTEAKGYM_FORCED_TO_LEAVE
	scene_script EcruteakGymNoopScene,          SCENE_ECRUTEAKGYM_NOOP

	def_callbacks

EcruteakGymForcedToLeaveScene:
	sdefer EcruteakGymClosed
	end

EcruteakGymNoopScene:
	end

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinLossText, 0
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
	setevent EVENT_RANG_CLEAR_BELL_1
	setevent EVENT_RANG_CLEAR_BELL_2
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext MortyText_FogBadgeSpeech
	promptbutton
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext MortyText_ShadowBallSpeech
	waitbutton
	closetext
	end

.GotShadowBall:
	writetext MortyFightDoneText
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

EcruteakGymClosed:
	applymovement PLAYER, EcruteakGymPlayerStepUpMovement
	applymovement ECRUTEAKGYM_GRAMPS, EcruteakGymGrampsSlowStepDownMovement
	opentext
	writetext EcruteakGymClosedText
	waitbutton
	closetext
	follow PLAYER, ECRUTEAKGYM_GRAMPS
	applymovement PLAYER, EcruteakGymPlayerSlowStepDownMovement
	stopfollow
	special FadeOutToWhite
	playsound SFX_ENTER_DOOR
	waitsfx
	warp ECRUTEAK_CITY, 6, 27
	end

TrainerSageJeffrey:
	trainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJeffreyAfterBattleText
	waitbutton
	closetext
	end

TrainerSagePing:
	trainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SagePingAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd GymStatue2Script

EcruteakGymPlayerStepUpMovement:
	step UP
	step_end

EcruteakGymPlayerSlowStepDownMovement:
	fix_facing
	slow_step DOWN
	remove_fixed_facing
	step_end

EcruteakGymGrampsSlowStepDownMovement:
	slow_step DOWN
	step_end

MortyIntroText:
	text "Me alegro de que"
	line "hayas venido."

	para "Aquí en Iris, los"
	line "Pokémon son"
	cont "venerados."

	para "Se dice que un"
	line "Pokémon de los"

	para "colores del arco"
	line "iris aparecerá"

	para "ante un verdadero"
	line "entrenador."

	para "Yo creo en esa"
	line "historia y, por"

	para "eso, llevo entre-"
	line "nándome aquí toda"
	cont "mi vida."

	para "Así que ahora"
	line "puedo ver cosas"
	cont "que otros no ven."

	para "Sólo un poco más…"

	para "Con un poco más,"
	line "podría ser yo"

	para "quien viera al"
	line "Pokémon de los"

	para "colores del arco"
	line "iris."

	para "¡Ayúdame a alcan-"
	line "zar ese nivel!"
	done

MortyWinLossText:
	text "Aún no soy lo"
	line "bastante bueno…"

	para "De acuerdo. Esta"
	line "Medalla es tuya."
	done

Text_ReceivedFogBadge:
	text "<PLAYER> recibió la"
	line "Medalla Niebla."
	done

MortyText_FogBadgeSpeech:
	text "Con la Medalla"
	line "Niebla, te obede-"
	cont "cerán todos los"
	cont "Pokémon hasta el"
	cont "nivel 50."

	para "Y los Pokémon que"
	line "sepan Surf podrán"

	para "usarlo en"
	line "cualquier momento."

	para "Quédate con esto"
	line "también."
	done

MortyText_ShadowBallSpeech:
	text "Es Bola Sombra."
	line "Causa daños y"

	para "puede reducir la"
	line "Defensa Especial."

	para "Úsala si te gusta."
	done

MortyFightDoneText:
	text "Entiendo…"

	para "Tu viaje te ha"
	line "llevado a tierras"
	cont "lejanas."

	para "Y has presenciado"
	line "muchas más cosas"
	cont "que yo."

	para "¡Cómo te envidio…!"
	done

SageJeffreySeenText:
	text "Pasé la primavera"
	line "con mis Pokémon."

	para "Y el verano, otoño"
	line "e invierno."

	para "Luego volvió la"
	line "primavera. Hemos"

	para "vivido juntos"
	line "mucho tiempo."
	done

SageJeffreyBeatenText:
	text "Viví victorias y"
	line "derrotas."
	done

SageJeffreyAfterBattleText:
	text "¿De dónde vienen"
	line "los Pokémon?"
	done

SagePingSeenText:
	text "¿Puedes causar"
	line "algún daño a"
	cont "nuestros Pokémon?"
	done

SagePingBeatenText:
	text "¡Ah! ¡Bien hecho!"
	done

SagePingAfterBattleText:
	text "Sólo usamos"
	line "Pokémon del tipo"
	cont "fantasma."

	para "¡Los ataques"
	line "normales no les"
	cont "hacen daño!"
	done

MediumMarthaSeenText:
	text "¡Ganaré!"
	done

MediumMarthaBeatenText:
	text "He… ¡He perdido!"
	done

MediumMarthaAfterBattleText:
	text "¡Ganará quien más"
	line "lo desee!"
	done

MediumGraceSeenText:
	text "¿Te asombra el"
	line "suelo invisible?"

	para "¡Si quieres una"
	line "pista, vénceme!"
	done

MediumGraceBeatenText:
	text "¿Có… cómo?"
	done

MediumGraceAfterBattleText:
	text "Bien. Te contaré"
	line "el secreto del"
	cont "suelo invisible."

	para "¡La ruta está"
	line "frente a ti!"
	done

EcruteakGymGuideText:
	text "Estos entrenadores"
	line "tienen motivos"
	cont "secretos."

	para "Si les ganas,"
	line "podrían contarte"

	para "algunos secretos"
	line "sobre Ciudad Iris."
	done

EcruteakGymGuideWinText:
	text "¡Uauu, <PLAYER>!"
	line "¡Genial!"

	para "¡Me escondí en el"
	line "rincón muerto de"
	cont "miedo!"
	done

EcruteakGymClosedText:
	text "Morti, el Líder de"
	line "Gimnasio, no está."

	para "Lo siento, pero"
	line "tendrás que irte."

	para "Jo, jo, jo, jo."
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 3
	warp_event  3,  4, ECRUTEAK_GYM, 3
	warp_event  4,  4, ECRUTEAK_GYM, 3
	warp_event  4,  5, ECRUTEAK_GYM, 3
	warp_event  6,  7, ECRUTEAK_GYM, 3
	warp_event  7,  4, ECRUTEAK_GYM, 3
	warp_event  2,  6, ECRUTEAK_GYM, 3
	warp_event  3,  6, ECRUTEAK_GYM, 3
	warp_event  4,  6, ECRUTEAK_GYM, 3
	warp_event  5,  6, ECRUTEAK_GYM, 3
	warp_event  7,  6, ECRUTEAK_GYM, 3
	warp_event  7,  7, ECRUTEAK_GYM, 3
	warp_event  4,  8, ECRUTEAK_GYM, 3
	warp_event  5,  8, ECRUTEAK_GYM, 3
	warp_event  6,  8, ECRUTEAK_GYM, 3
	warp_event  7,  8, ECRUTEAK_GYM, 3
	warp_event  2,  8, ECRUTEAK_GYM, 3
	warp_event  2,  9, ECRUTEAK_GYM, 3
	warp_event  2, 10, ECRUTEAK_GYM, 3
	warp_event  2, 11, ECRUTEAK_GYM, 3
	warp_event  4, 10, ECRUTEAK_GYM, 3
	warp_event  5, 10, ECRUTEAK_GYM, 3
	warp_event  2, 12, ECRUTEAK_GYM, 3
	warp_event  3, 12, ECRUTEAK_GYM, 3
	warp_event  4, 12, ECRUTEAK_GYM, 3
	warp_event  5, 12, ECRUTEAK_GYM, 3
	warp_event  7, 10, ECRUTEAK_GYM, 3
	warp_event  7, 11, ECRUTEAK_GYM, 3
	warp_event  7, 12, ECRUTEAK_GYM, 3
	warp_event  7, 13, ECRUTEAK_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue

	def_object_events
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSageJeffrey, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSagePing, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumMartha, -1
	object_event  7,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumGrace, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1
	object_event  4, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_GYM_GRAMPS
