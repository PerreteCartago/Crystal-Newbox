	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext LeaderBlueEpilogueText
	waitbutton
	closetext
	end

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script

LeaderBlueBeforeText:
	text "Azul: ¡Hola! Al"
	line "fin llegaste, ¿eh?"

	para "En Isla Canela no"
	line "estaba a punto,"

	para "pero ahora estoy"
	line "listo para luchar."

	para "…"

	para "¿Me estás contando"
	line "que superaste los"

	para "Gimnasios de"
	line "Johto?"

	para "¡Vaya! Pues los"
	line "Gimnasios de Johto"

	para "deben de ser"
	line "patéticos."

	para "Pero bueno, no te"
	line "preocupes."

	para "Sabremos si vales"
	line "o no en un"

	para "momento. Luchemos"
	line "ahora."

	para "¿Vale?"
	done

LeaderBlueWinText:
	text "Azul: ¿Qué?"

	para "¿Cómo diablos he"
	line "perdido?"

	para "…"

	para "¡Está bien…!"
	line "Toma. Aquí tienes"
	cont "la Medalla Tierra."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> recibió"
	line "la Medalla Tierra."
	done

LeaderBlueAfterText:
	text "Azul: …"

	para "De acuerdo, me he"
	line "equivocado."

	para "Tenías razón."
	line "No me engañabas."

	para "Pero algún día te"
	line "derrotaré."

	para "¡No lo olvides!"
	done

LeaderBlueEpilogueText:
	text "Azul: Escucha."

	para "Será mejor que no"
	line "pierdas hasta que"

	para "yo te derrote."
	line "¿Entendido?"
	done

ViridianGymGuideText:
	text "¡Hola!"
	line "¿Qué tal te va?"

	para "Parece que estás"
	line "de suerte."

	para "El Líder del"
	line "Gimnasio luchó"

	para "contra el Campeón"
	line "hace 3 años."

	para "¡Es un tipo duro!"

	para "¡Debes esforzarte"
	line "al máximo!"
	done

ViridianGymGuideWinText:
	text "Vaya, eres"
	line "realmente fuerte…"

	para "¡Qué batalla más"
	line "emocionante!"

	para "Me ha hecho"
	line "llorar."
	done


ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_VIRIDIAN_GYM_BLUE
