	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks

SeafoamGymNoopScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUIDE
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

.FightDone:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLAINE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideIntroText
	waitbutton
	closetext
	end

.TalkedToSeafoamGymGuideScript:
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	end

BlaineIntroText:
	text "Blaine: ¡Buaaa!"

	para "Mi Gimnasio de"
	line "Isla Canela se ha"
	cont "quemado."

	para "El volcán nos ha"
	line "dejado sin casa a"

	para "mis Pokémon"
	line "comefuego y a mí."

	para "¡Buaaaa!"

	para "Pero sigo haciendo"
	line "mi trabajo de"

	para "Líder de Gimnasio"
	line "en esta cueva."

	para "Si me vences, te"
	line "daré una Medalla."

	para "¡Ja! Espero que"
	line "tengas Antiquemar."
	done

BlaineWinLossText:
	text "Blaine: Increíble."
	line "Me consumí…"

	para "¡Has ganado la"
	line "Medalla Volcán!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> recibió"
	line "la Med. Volcán."
	done

BlaineAfterBattleText:
	text "Blaine: Esta vez"
	line "he perdido, pero"

	para "la próxima te"
	line "ganaré."

	para "Cuando reconstruya"
	line "mi Gimnasio de I."
	cont "Canela, tendremos"
	cont "la revancha."
	done

BlaineFightDoneText:
	text "Blaine: Mis"
	line "Pokémon de fuego"

	para "serán más fuertes."
	line "¡Ya lo verás!"
	done

SeafoamGymGuideWinText:
	text "¡Vaya!"

	para "¿Eh…?"
	line "¿Ya ha acabado?"

	para "¡Lo siento!"

	para "No pude verlo."

	para "Pero eres fuerte"
	line "hasta sin mis"

	para "consejos. ¡Sabía"
	line "que ganarías!"
	done

SeafoamGymGuideIntroText:
	text "Las puertas se"
	line "abren al derrotar"
	cont "a sus guardianes."

	para "Buena Suerte"
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 19, CINNABAR_ISLAND, 3
	warp_event 17, 19, CINNABAR_ISLAND, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event 17, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, -1
