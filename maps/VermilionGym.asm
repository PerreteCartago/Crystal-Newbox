	object_const_def
	const VERMILIONGYM_SURGE
	const VERMILIONGYM_GENTLEMAN
	const VERMILIONGYM_ROCKER
	const VERMILIONGYM_SUPER_NERD
	const VERMILIONGYM_GYM_GUIDE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionGymSurgeScript:
	faceplayer
	opentext
	checkflag ENGINE_THUNDERBADGE
	iftrue .FightDone
	writetext LtSurgeIntroText
	waitbutton
	closetext
	winlosstext LtSurgeWinLossText, 0
	loadtrainer LT_SURGE, LT_SURGE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_GENTLEMAN_GREGORY
	setevent EVENT_BEAT_GUITARIST_VINCENT
	setevent EVENT_BEAT_JUGGLER_HORTON
	opentext
	writetext ReceivedThunderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	writetext LtSurgeThunderBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext LtSurgeFightDoneText
	waitbutton
	closetext
	end

TrainerGentlemanGregory:
	trainer GENTLEMAN, GREGORY, EVENT_BEAT_GENTLEMAN_GREGORY, GentlemanGregorySeenText, GentlemanGregoryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanGregoryAfterBattleText
	waitbutton
	closetext
	end

TrainerGuitaristVincent:
	trainer GUITARIST, VINCENT, EVENT_BEAT_GUITARIST_VINCENT, GuitaristVincentSeenText, GuitaristVincentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVincentAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerHorton:
	trainer JUGGLER, HORTON, EVENT_BEAT_JUGGLER_HORTON, JugglerHortonSeenText, JugglerHortonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerHortonAfterBattleText
	waitbutton
	closetext
	end

VermilionGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuideWinScript
	writetext VermilionGymGuideText
	waitbutton
	closetext
	end

.VermilionGymGuideWinScript:
	writetext VermilionGymGuideWinText
	waitbutton
	closetext
	end

VermilionGymTrashCan:
	jumptext VermilionGymTrashCanText

VermilionGymStatue:
	checkflag ENGINE_THUNDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, LT_SURGE, LT_SURGE1
	jumpstd GymStatue2Script

LtSurgeIntroText:
	text "Surge: ¡Eh, tú,"
	line "joven!"

	para "Tengo que recono-"
	line "cerlo. No es que"

	para "sea inteligente"
	line "desafiarme, ¡pero"
	cont "requiere agallas!"

	para "Cuando se trata de"
	line "Pokémon"

	para "eléctricos, ¡soy"
	line "el número uno!"

	para "Nunca he perdido"
	line "en la batalla."

	para "¡Te electrocutaré"
	line "como hice con el"

	para "enemigo en la"
	line "guerra!"
	done

LtSurgeWinLossText:
	text "Surge: ¡Arrrgh!"
	line "¡Eres fuerte!"

	para "Vale, joven. ¡Toma"
	line "la Medalla Trueno!"
	done

ReceivedThunderBadgeText:
	text "<PLAYER> recibió"
	line "la Medalla Trueno."
	done

LtSurgeThunderBadgeText:
	text "Surge: La Medalla"
	line "Trueno."

	para "Te la mereces por"
	line "haberme vencido."

	para "Llévala con"
	line "orgullo, ¿me oyes?"
	done

LtSurgeFightDoneText:
	text "Surge: ¡Eh, tú!"
	line "¿Todavía estás"

	para "molestando por"
	line "aquí?"

	para "¡Mis Pokémon y yo"
	line "seguimos en ello!"
	done

GentlemanGregorySeenText:
	text "¿Vienes a derrotar"
	line "al Lt. Surge?"

	para "¡No, si yo puedo"
	line "impedirlo!"
	done

GentlemanGregoryBeatenText:
	text "¡Cuánto siento"
	line "haberle fallado,"
	cont "Lt. Surge!"
	done

GentlemanGregoryAfterBattleText:
	text "Cuando aún estaba"
	line "en el ejército, el"

	para "Lt. Surge me salvó"
	line "la vida."
	done

GuitaristVincentSeenText:
	text "El Lt. Surge reco-"
	line "noció mi potencial"

	para "con los Pokémon"
	line "eléctricos."

	para "¿Crees que puedes"
	line "vencerme?"
	done

GuitaristVincentBeatenText:
	text "¡Ooh! ¡Increíble!"
	done

GuitaristVincentAfterBattleText:
	text "Si funcionaran las"
	line "trampas del"

	para "Gimnasio, no lo"
	line "habrías logrado."
	done

JugglerHortonSeenText:
	text "¡Voy a acabar"
	line "contigo! ¡Vas a"
	cont "echar chispas!"
	done

JugglerHortonBeatenText:
	text "¡Vaya! Me has"
	line "vencido…"
	done

JugglerHortonAfterBattleText:
	text "No te relajes por"
	line "haberme vencido…"

	para "Lt. Surge es muy"
	line "fuerte."
	done

VermilionGymGuideText:
	text "¡Hola!"

	para "Esta vez no ten-"
	line "drás tanta suerte."

	para "El Lt. Surge es"
	line "muy prudente. Ha"

	para "puesto trampas por"
	line "todo el Gimnasio."

	para "Pero (risas), las"
	line "trampas no están"
	cont "activadas."

	para "Te será fácil"
	line "encontrar a"
	cont "Lt. Surge."
	done

VermilionGymGuideWinText:
	text "¡Vaya combate más"
	line "electrizante!"

	para "¡Me has puesto"
	line "muy nervioso!"
	done

VermilionGymTrashCanText:
	text "¡Bah! Aquí sólo"
	line "hay basura."
	done

VermilionGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 7
	warp_event  5, 17, VERMILION_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  1,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  1,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  1, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3, 15, BGEVENT_READ, VermilionGymStatue
	bg_event  6, 15, BGEVENT_READ, VermilionGymStatue

	def_object_events
	object_event  5,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeScript, -1
	object_event  8,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerGentlemanGregory, -1
	object_event  4,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristVincent, -1
	object_event  0, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerHorton, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, VermilionGymGuideScript, -1
