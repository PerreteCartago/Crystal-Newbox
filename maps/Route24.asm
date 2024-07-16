	object_const_def
	const ROUTE24_ROCKET

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
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
