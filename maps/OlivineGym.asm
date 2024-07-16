	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end

.GotIronTail:
	writetext Jasmine_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetext
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	waitbutton
	closetext
	end

.OlivineGymGuidePreScript:
	opentext
	writetext OlivineGymGuidePreText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue2Script

Jasmine_SteelTypeIntro:
	text "Gracias por"
	line "ayudarnos en el"
	cont "Faro…"

	para "Pero esto es"
	line "distinto. Déjame"
	cont "que me presente."

	para "Soy Yasmina, una"
	line "Líder de Gimnasio."

	para "Uso el tipo acero."

	para "¿Sabes algo del"
	line "tipo acero?"

	para "Fue descubierto"
	line "hace poco tiempo."

	para "¡Um…! ¡Veamos!"
	done

Jasmine_BetterTrainer:
	text "Eres mejor que yo,"
	line "tanto en habilidad"
	cont "como en simpatía."

	para "De acuerdo con las"
	line "normas de la Liga,"

	para "te concedo esta"
	line "Medalla."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> recibió la"
	line "Medalla Mineral."
	done

Jasmine_BadgeSpeech:
	text "La Medalla Mineral"
	line "aumenta la Defensa"
	cont "de los Pokémon."

	para "¡Eh…! Toma"
	line "esto también…"
	done

Text_ReceivedTM09:
	text "<PLAYER> recibió la"
	line "Mt09."
	done

Jasmine_IronTailSpeech:
	text "Usa esta Mt para"
	line "enseñar Cola"
	cont "Férrea."
	done

Jasmine_GoodLuck:
	text "Eh… No sé"
	line "cómo decirlo, pero"
	cont "buena suerte…"
	done

OlivineGymGuideText:
	text "Yasmina usa el"
	line "tipo acero recién"
	cont "descubierto."

	para "No sé mucho sobre"
	line "ese tipo."
	done

OlivineGymGuideWinText:
	text "Ha sido increíble."

	para "El tipo acero se"
	line "las trae, ¿eh?"

	para "¡No había visto un"
	line "combate así en mi"
	cont "vida!"
	done

OlivineGymGuidePreText:
	text "Yasmina, la Líder"
	line "del Gimnasio, está"
	cont "en el Faro."

	para "Ha estado cuidando"
	line "a un Pokémon"
	cont "enfermo."

	para "Un buen entrenador"
	line "debe ser"
	cont "compasivo."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
