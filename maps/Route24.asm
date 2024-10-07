	object_const_def
	const ROUTE24_ROCKET
	const ROUTE24_YOUNGSTER1
	const ROUTE24_LASS1
	const ROUTE24_YOUNGSTER2
	const ROUTE24_LASS2
	const ROUTE24_YOUNGSTER3
	const ROUTE24_LASS3
	const ROUTE24_NERD

Route24_MapScripts:
	def_scene_scripts

	def_callbacks

Route24RocketScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketSeenText
	waitbutton
	closetext
	winlosstext Route24RocketBeatenText, -1
	loadtrainer GRUNTM, GRUNTM_31
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketAfterBattleText
	promptbutton
	special FadeOutMusic
	writetext Route24RocketDisappearsText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	pause 25
	special FadeInFromBlack
	playmapmusic
	end

TrainerSchoolboyDudley:
	trainer SCHOOLBOY, DUDLEY, EVENT_BEAT_SCHOOLBOY_DUDLEY, SchoolboyDudleySeenText, SchoolboyDudleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDudleyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassEllen:
	trainer LASS, ELLEN, EVENT_BEAT_LASS_ELLEN, LassEllenSeenText, LassEllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassEllenAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJoe:
	trainer SCHOOLBOY, JOE, EVENT_BEAT_SCHOOLBOY_JOE, SchoolboyJoeSeenText, SchoolboyJoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJoeAfterBattleText
	waitbutton
	closetext
	end

TrainerLassLaura:
	trainer LASS, LAURA, EVENT_BEAT_LASS_LAURA, LassLauraSeenText, LassLauraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLauraAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperLloyd:
	trainer CAMPER, LLOYD, EVENT_BEAT_CAMPER_LLOYD, CamperLloydSeenText, CamperLloydBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperLloydAfterBattleText
	waitbutton
	closetext
	end

TrainerLassShannon:
	trainer LASS, SHANNON, EVENT_BEAT_LASS_SHANNON, LassShannonSeenText, LassShannonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassShannonAfterBattleText
	waitbutton
	closetext
	end

SchoolboyDudleySeenText:
	text "¡Véncenos a los"
	line "seis para ganar"

	para "un fantástico"
	line "premio!"

	para "¿Lo conseguirás?"
	done

SchoolboyDudleyBeatenText:
	text "¡Uau! Muy bien."
	done

SchoolboyDudleyAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

LassEllenSeenText:
	text "Ahora me toca a"
	line "mí. ¡En guardia!"
	done

LassEllenBeatenText:
	text "¿Cómo he podido"
	line "perder?"
	done

LassEllenAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

SchoolboyJoeSeenText:
	text "¡Soy el tercero!"
	line "Y no será fácil."
	done

SchoolboyJoeBeatenText:
	text "¡Au! ¡Se acabó!"
	done

SchoolboyJoeAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

LassLauraSeenText:
	text "¡Yo soy la cuarta!"
	line "¿No puedes más?"
	done

LassLauraBeatenText:
	text "He perdido…"
	done

LassLauraAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

CamperLloydSeenText:
	text "Yo soy el quinto."
	line "¡Te machacaré!"
	done

CamperLloydBeatenText:
	text "¡Uau! Demasiado."
	done

CamperLloydAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

LassShannonSeenText:
	text "Y por último yo,"
	line "pero te lo aviso,"
	cont "¡soy la mejor!"
	done

LassShannonBeatenText:
	text "¿Estás bromeando?"
	done

LassShannonAfterBattleText:
	text "Hice lo que pude."
	line "No me arrepiento."
	done

Route24RocketSeenText:
	text "¡Eh, tú! ¡Un"
	line "miembro del Team"
	cont "Rocket ser yo!"

	para "Ser de otro país."
	line "Entrenador número"
	cont "uno, ¡yo ése!"

	para "Pensar hice. Si"
	line "cortar energía,"

	para "¡mucho pánico"
	line "aquí todos!"

	para "Misión secreta"
	line "es, ¡no contar"
	cont "a ti!"

	para "Pero, si ganar a"
	line "mí, un hombre"

	para "soy y secreto mío"
	line "a ti contar."

	para "¡Eh, tú!"
	line "¡Lucha empezar!"
	done

Route24RocketBeatenText:
	text "¡Ayyyy! ¡No, no,"
	line "no! ¡Creer no"
	cont "puedo!"

	para "¡Fuerte mucho"
	line "eres! ¡Rival"
	cont "para ti no soy!"
	done

Route24RocketAfterBattleText:
	text "Vale. Contar"
	line "secreto a ti."

	para "Maquinaria yo"
	line "robar, escondida"

	para "en Gimnasio de"
	line "Celeste."

	para "En agua yo poner."
	line "Mirar en centro de"
	cont "agua de Gimnasio."

	para "¡Pero tú no"
	line "olvidar a mí!"

	para "Team Rocket seguro"
	line "derrotar a ti."

	para "Míos amigos venir"
	line "de Johto, sí."
	cont "Vengar ellos a mí."
	done

Route24RocketDisappearsText:
	text "…"

	para "¿Dices que Team"
	line "Rocket adiós?"

	para "¿Roto? ¿Eso dices?"

	para "¡Oh, no! ¿Debo ir"
	line "por cuenta mía"
	cont "ahora?"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
	object_event  8, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyDudley, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassEllen, -1
	object_event  8, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJoe, -1
	object_event  9,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassLaura, -1
	object_event  8,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperLloyd, -1
	object_event  9,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassShannon, -1
	object_event  8, -2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT,  0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdPat, -1
