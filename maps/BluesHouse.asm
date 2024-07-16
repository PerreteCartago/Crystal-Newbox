	object_const_def
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DaisyScript:
	faceplayer
	opentext
	readvar VAR_HOUR
	ifequal 15, .ThreePM
	writetext DaisyHelloText
	waitbutton
	closetext
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeOutToWhite
	playmusic MUSIC_HEAL
	pause 60
	special FadeInFromWhite
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

DaisyHelloText:
	text "Dalia: ¡Hola! Mi"
	line "hermano es Líder"

	para "del Gimnasio de"
	line "Ciudad Verde."

	para "Pero sale tanto de"
	line "la ciudad que trae"

	para "problemas a los"
	line "entrenadores."
	done

DaisyOfferGroomingText:
	text "Dalia: ¡Llegas"
	line "a tiempo! Iba a"
	cont "tomar un té."

	para "¿Quieres"
	line "tomarte uno?"

	para "Tus Pokémon están"
	line "un poco sucios."

	para "¿Quieres que"
	line "limpie a uno?"
	done

DaisyWhichMonText:
	text "Dalia: ¿Qué"
	line "Pokémon limpio?"
	done

DaisyAlrightText:
	text "Dalia: Vale, haré"
	line "que mejore su"
	cont "aspecto enseguida."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text_start
	line "parece contento."
	done

DaisyAllDoneText:
	text "Dalia: ¡Ya está!"
	line "¡Listo!"

	para "¿Qué? ¿Tiene buen"
	line "aspecto o no?"

	para "¡Qué Pokémon"
	line "más mono!"
	done

DaisyAlreadyGroomedText:
	text "Dalia: Siempre"
	line "tomo té a esta"

	para "hora. Ven cuando"
	line "quieras."
	done

DaisyRefusedText:
	text "Dalia: ¿No quieres"
	line "que limpie a un"

	para "Pokémon? Vale, tan"
	line "sólo tomaremos té."
	done

DaisyCantGroomEggText:
	text "Dalia: Lo siento."
	line "No puedo limpiar"
	cont "un Huevo."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
