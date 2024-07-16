	object_const_def
	const MAHOGANYGYM_PRYCE
	const MAHOGANYGYM_BEAUTY1
	const MAHOGANYGYM_ROCKER1
	const MAHOGANYGYM_BEAUTY2
	const MAHOGANYGYM_ROCKER2
	const MAHOGANYGYM_ROCKER3
	const MAHOGANYGYM_GYM_GUIDE

MahoganyGym_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	readvar VAR_BADGES
	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue PryceScript_Defeat
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegiveitem TM_ICY_WIND
	iffalse MahoganyGym_NoRoomForIcyWind
	setevent EVENT_GOT_TM16_ICY_WIND
	writetext PryceText_IcyWindSpeech
	waitbutton
	closetext
	end

PryceScript_Defeat:
	writetext PryceText_CherishYourPokemon
	waitbutton
MahoganyGym_NoRoomForIcyWind:
	closetext
	end

MahoganyGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSkierRoxanne:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierClarissa:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierClarissaAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderBrad:
	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBradAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderDouglas:
	trainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderDouglasAfterBattleText
	waitbutton
	closetext
	end

MahoganyGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuideWinScript
	writetext MahoganyGymGuideText
	waitbutton
	closetext
	end

.MahoganyGymGuideWinScript:
	writetext MahoganyGymGuideWinText
	waitbutton
	closetext
	end

MahoganyGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd GymStatue2Script

PryceText_Intro:
	text "Los Pokémon viven"
	line "todo tipo de"
	cont "experiencias."

	para "Yo también he"
	line "visto y sufrido"
	cont "mucho en mi vida."

	para "Soy mayor, así que"
	line "te enseñaré lo que"
	cont "quiero decir."

	para "He estado con los"
	line "Pokémon desde"

	para "antes de que tú"
	line "nacieras."

	para "Y no pierdo"
	line "fácilmente."

	para "¡Yo, Fredo, el"
	line "entrenador del"

	para "invierno, te"
	line "mostraré mi poder!"
	done

PryceText_Impressed:
	text "¡Ah! Me impresiona"
	line "tu valor."

	para "Con tu gran"
	line "voluntad, sé que"

	para "superarás todos"
	line "los obstáculos."

	para "¡Te mereces esta"
	line "Medalla!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> recibió la"
	line "Medalla Glaciar."
	done

PryceText_GlacierBadgeSpeech:
	text "Con esta Medalla,"
	line "tus Pokémon podrán"
	cont "usar Torbellino"

	para "¡Además, te voy a"
	line "hacer un regalo!"
	done

PryceText_IcyWindSpeech:
	text "Esta MT contiene"
	line "Viento Hielo."

	para "Causa daño y baja"
	line "la velocidad."

	para "Demuestra la dure-"
	line "za del invierno."
	done

PryceText_CherishYourPokemon:
	text "La primavera llega"
	line "cuando se derrite"

	para "el hielo y la"
	line "nieve."

	para "Tú y tus Pokémon"
	line "pasaréis juntos"
	cont "muchos años."

	para "¡Pasadlo bien!"
	done

BoarderRonaldSeenText:
	text "¡Congelaré a tus"
	line "Pokémon! ¡No"
	cont "podrás hacer nada!"
	done

BoarderRonaldBeatenText:
	text "Maldición. No pude"
	line "hacer nada."
	done

BoarderRonaldAfterBattleText:
	text "Hay un movimiento"
	line "que se puede usar"

	para "cuando el Pokémon"
	line "está congelado."
	done

BoarderBradSeenText:
	text "Este Gimnasio"
	line "tiene un suelo"

	para "resbaladizo. ¿A"
	line "que es divertido?"

	para "¡Pero oye, aquí no"
	line "estamos jugando!"
	done

BoarderBradBeatenText:
	text "¿Ves lo serios que"
	line "somos?"
	done

BoarderBradAfterBattleText:
	text "Este Gimnasio es"
	line "genial. ¡Me"

	para "encanta patinar"
	line "con mis Pokémon!"
	done

BoarderDouglasSeenText:
	text "Conozco el secreto"
	line "de Fredo."
	done

BoarderDouglasBeatenText:
	text "Te contaré el"
	line "secreto de Fredo."
	done

BoarderDouglasAfterBattleText:
	text "El secreto del"
	line "poder de Fredo…"

	para "Medita todos los"
	line "días bajo una"

	para "cascada para"
	line "fortalecer el"
	cont "cuerpo y la mente."
	done

SkierRoxanneSeenText:
	text "Para vencer a"
	line "Fredo, el Líder"

	para "del Gimnasio,"
	line "piensa antes de"
	cont "patinar."
	done

SkierRoxanneBeatenText:
	text "¡No perderé ante"
	line "ti esquiando!"
	done

SkierRoxanneAfterBattleText:
	text "Si no patinas con"
	line "precisión, no"

	para "lograrás nada en"
	line "este Gimnasio."
	done

SkierClarissaSeenText:
	text "¡Mira qué bien lo"
	line "hago!"
	done

SkierClarissaBeatenText:
	text "¡No! ¡He perdido!"
	done

SkierClarissaAfterBattleText:
	text "No debería haber"
	line "presumido sobre mi"
	cont "forma de esquiar."
	done

MahoganyGymGuideText:
	text "Fredo es veterano."
	line "Lleva entrenando"

	para "Pokémon desde hace"
	line "50 años."

	para "Dicen que es bueno"
	line "congelando a sus"

	para "rivales con los"
	line "ataques de hielo."

	para "¡Eso quiere decir"
	line "que deberías"

	para "derretirle con tu"
	line "ardiente ambición!"
	done

MahoganyGymGuideWinText:
	text "¡Fredo es bueno,"
	line "pero tú eres aún"
	cont "mejor!"

	para "¡Ha sido un gran"
	line "combate que acortó"

	para "distancias entre"
	line "generaciones!"
	done

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  4,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierRoxanne, -1
	object_event  0, 17, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1
	object_event  9, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierClarissa, -1
	object_event  5,  9, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBrad, -1
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderDouglas, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuideScript, -1
