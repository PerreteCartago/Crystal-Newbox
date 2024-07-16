	object_const_def
	const CELADONGYM_ERIKA
	const CELADONGYM_LASS1
	const CELADONGYM_LASS2
	const CELADONGYM_BEAUTY
	const CELADONGYM_TWIN1
	const CELADONGYM_TWIN2

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext ErikaBeforeBattleText
	waitbutton
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	opentext
	writetext PlayerReceivedRainbowBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
.FightDone:
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue .GotGigaDrain
	writetext ErikaExplainTMText
	promptbutton
	verbosegiveitem TM_GIGA_DRAIN
	iffalse .GotGigaDrain
	setevent EVENT_GOT_TM19_GIGA_DRAIN
.GotGigaDrain:
	writetext ErikaAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMichelle:
	trainer LASS, MICHELLE, EVENT_BEAT_LASS_MICHELLE, LassMichelleSeenText, LassMichelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMichelleAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerTanya:
	trainer PICNICKER, TANYA, EVENT_BEAT_PICNICKER_TANYA, PicnickerTanyaSeenText, PicnickerTanyaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerTanyaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJulia:
	trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJuliaAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe1:
	trainer TWINS, JOANDZOE1, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe1SeenText, TwinsJoAndZoe1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe2:
	trainer TWINS, JOANDZOE2, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe2SeenText, TwinsJoAndZoe2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe2AfterBattleText
	waitbutton
	closetext
	end

CeladonGymStatue:
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	jumpstd GymStatue2Script

ErikaBeforeBattleText:
	text "Erika: Hola…"
	line "Bonito día,"

	para "¿verdad? Se está"
	line "tan bien…"

	para "Podría hasta"
	line "dormirme…"

	para "Me llamo Erika."
	line "Soy la Líder"

	para "del Gimnasio de"
	line "Ciudad Azulona."

	para "¿Cómo? ¿Vienes"
	line "de Johto?"
	cont "¡Qué bien…!"

	para "¡Oh! Lo siento,"
	line "no me di cuenta"

	para "de que querías"
	line "desafiarme."

	para "Muy bien, pero no"
	line "perderé."
	done

ErikaBeatenText:
	text "Erika: ¡Oh! Admito"
	line "que he perdido…"

	para "Eres realmente"
	line "fuerte…"

	para "Te daré la Medalla"
	line "Arcoiris…"
	done

PlayerReceivedRainbowBadgeText:
	text "<PLAYER> recibió"
	line "Medalla Arcoiris."
	done

ErikaExplainTMText:
	text "Erika: Ha sido un"
	line "combate genial."

	para "Me has inspirado."
	line "Acepta esta MT"
	cont "como regalo."

	para "Es Gigadrenado."

	para "Es un fantástico"
	line "ataque que drena"

	para "la mitad del daño"
	line "producido para"
	cont "curar al Pokémon."

	para "Úsalo si quieres…"
	done

ErikaAfterBattleText:
	text "Erika: La derrota"
	line "deja mal sabor de"
	cont "boca…"

	para "Pero saber que hay"
	line "entrenadores más"

	para "fuertes me anima a"
	line "mejorar…"
	done

LassMichelleSeenText:
	text "¿Te parece raro un"
	line "Gimnasio exclusivo"
	cont "para chicas?"
	done

LassMichelleBeatenText:
	text "¡Oh, maldición!"
	done

LassMichelleAfterBattleText:
	text "Tenía que haber"
	line "estado más atenta."
	done

PicnickerTanyaSeenText:
	text "¡Oh! ¿Un combate?"
	line "Me da un poco de"
	cont "miedo, pero bueno."
	done

PicnickerTanyaBeatenText:
	text "¡Oh! ¿Se acabó?"
	done

PicnickerTanyaAfterBattleText:
	text "¡Uauu! ¡Tienes"
	line "muchas Medallas!"

	para "¡No me extraña"
	line "haber perdido!"
	done

BeautyJuliaSeenText:
	text "¿Estabas mirando"
	line "estas flores o"
	cont "a mí?"
	done

BeautyJuliaBeatenText:
	text "¡Qué rabia!"
	done

BeautyJuliaAfterBattleText:
	text "¿Cómo podré llegar"
	line "a ser tan elegante"
	cont "como Erika?"
	done

TwinsJoAndZoe1SeenText:
	text "¡Te enseñaremos"
	line "los movimientos"

	para "Pokémon que nos"
	line "enseñó Erika!"
	done

TwinsJoAndZoe1BeatenText:
	text "Hemos perdido…"
	done

TwinsJoAndZoe1AfterBattleText:
	text "¡Erika te lo hará"
	line "pagar!"
	done

TwinsJoAndZoe2SeenText:
	text "¡Vamos a proteger"
	line "a Erika!"
	done

TwinsJoAndZoe2BeatenText:
	text "No podíamos ganar…"
	done

TwinsJoAndZoe2AfterBattleText:
	text "¡Erika es mucho,"
	line "mucho más fuerte!"
	done

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  5,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  7,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassMichelle, -1
	object_event  2,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerTanya, -1
	object_event  3,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulia, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe2, -1
