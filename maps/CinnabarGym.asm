	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE
	const SEAFOAMGYM_BURGLAR1
	const SEAFOAMGYM_SUPERNERD1
	const SEAFOAMGYM_SUPERNERD2
	const SEAFOAMGYM_BURGLAR2
	const SEAFOAMGYM_SUPERNERD3
	const SEAFOAMGYM_BURGLAR3
	const SEAFOAMGYM_SUPERNERD4


SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks
	callback MAPCALLBACK_TILES, .CinnabarBlockades

.CinnabarBlockades
	checkevent EVENT_BEAT_OCTAVIO
	iffalse .Donothing
	changeblock 18,  6, $7b
	checkevent EVENT_BEAT_ENRIQUE
	iffalse .Donothing2
	changeblock 14,  2, $7b
	checkevent EVENT_BEAT_AVERO
	iffalse .Donothing3
	changeblock 12,  8, $7b
	checkevent EVENT_BEAT_RAMON
	iffalse .Donothing4
	changeblock 12, 14, $7b
	checkevent EVENT_BEAT_DANTE
	iffalse .Donothing5
	changeblock  8, 18, $7b
	checkevent EVENT_BEAT_DACIO
	iffalse .Donothing6
	changeblock  4, 14, $7b
	checkevent EVENT_BEAT_ZAC
	iffalse .Donothing7
	changeblock  4,  8, $7b
.Done:
	return

.Donothing
	changeblock 18,  6, $78
	return

.Donothing2
	changeblock 14,  2, $b8
	return

.Donothing3
	changeblock 12,  8, $78
	return

.Donothing4
	changeblock 12, 14, $78
	return

.Donothing5
	changeblock  8, 18, $b8
	return

.Donothing6
	changeblock  4, 14, $78
	return

.Donothing7
	changeblock  4,  8, $78
	return

SeafoamGymNoopScene:
	end

TrainerOctavio:
	trainer BURGLAR, OCTAVIO, EVENT_BEAT_OCTAVIO, OctavioSeenText, OctavioBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_1
	iftrue .removedblockade1
	reloadmapafterbattle
	playsound SFX_STRENGTH
	setevent EVENT_OPENED_CINNABAR_BLOCKADE_1
	waitsfx
	opentext
	writetext OctavioAfterBattleText
	waitbutton
	closetext
	end

.removedblockade1
	opentext
	writetext OctavioAfterBattleText
	waitbutton
	closetext
	end

TrainerEnrique:
	trainer SUPER_NERD, ENRIQUE, EVENT_BEAT_ENRIQUE, EnriqueSeenText, EnriqueBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_2
	iftrue .removedblockade2
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext EnriqueAfterBattleText
	waitbutton
	closetext
	end

.removedblockade2
	opentext
	writetext EnriqueAfterBattleText
	waitbutton
	closetext
	end

TrainerAvero:
	trainer SUPER_NERD, AVERO, EVENT_BEAT_AVERO, AveroSeenText, AveroBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_3
	iftrue .removedblockade3
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext AveroAfterBattleText
	waitbutton
	closetext
	end

.removedblockade3
	opentext
	writetext AveroAfterBattleText
	waitbutton
	closetext
	end

TrainerDante:
	trainer SUPER_NERD, DANTE, EVENT_BEAT_DANTE, DanteSeenText, DanteBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_4
	iftrue .removedblockade4
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext DanteAfterBattleText
	waitbutton
	closetext
	end

.removedblockade4
	opentext
	writetext DanteAfterBattleText
	waitbutton
	closetext
	end

TrainerZac:
	trainer SUPER_NERD, ZAC, EVENT_BEAT_ZAC, ZacSeenText, ZacBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_5
	iftrue .removedblockade5
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext ZacAfterBattleText
	waitbutton
	closetext
	end

.removedblockade5
	opentext
	writetext ZacAfterBattleText
	waitbutton
	closetext
	end

TrainerRamon:
	trainer BURGLAR, RAMON, EVENT_BEAT_RAMON, RamonSeenText, RamonBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_6
	iftrue .removedblockade6
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext RamonAfterBattleText
	waitbutton
	closetext
	end

.removedblockade6
	opentext
	writetext RamonAfterBattleText
	waitbutton
	closetext
	end

TrainerDacio:
	trainer BURGLAR, DACIO, EVENT_BEAT_DACIO, DacioSeenText, DacioBeatenText, 0, .Script

.Script:
	checkevent EVENT_OPENED_CINNABAR_BLOCKADE_7
	iftrue .removedblockade7
	reloadmapafterbattle
	playsound SFX_STRENGTH
	waitsfx
	opentext
	writetext DacioAfterBattleText
	waitbutton
	closetext
	end

.removedblockade7
	opentext
	writetext DacioAfterBattleText
	waitbutton
	closetext
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

EnriqueSeenText::
	text "¿Sabes el calor"
	line "que puede dar el"
	cont "aliento de fuego"
	cont "de un Pokémon?"
	done

EnriqueBeatenText::
	text "¡Ay!"
	line "¡Quema, quema!"
	done

EnriqueAfterBattleText::
	text "Fuego, o para ser"
	line "más preciso,"
	cont "combustión..."

	para "¡Bla, bla, bla,"
	line "bla!..."
	done

OctavioSeenText:
	text "¡Yo era un ladrón,"
	line "pero me volví"
	cont "honrado cuando me"
	cont "hice entrenador!"
	done

OctavioBeatenText:
	text "¡Me rindo!"
	done

OctavioAfterBattleText:
	text "¡No puedo evitar"
	line "robar los "
	cont "Pokémon de"
	cont "otras personas!"
	done

AveroSeenText::
	text "¡No puedes ganar!"
	line "¡Soy un experto"
	cont "en los Pokémon!"
	done

AveroBeatenText::
	text "¡Au!"
	line "¡Mis estudios!"
	done

AveroAfterBattleText::
	text "¡Mis teorías son"
	line "muy complicadas"
	cont "para ti!"
	done

RamonSeenText::
	text "¡Me encanta usar"
	line "a los Pokémon"
	cont "del fuego!"
	done

RamonBeatenText::
	text_start
	line "¡Quema demasiado!"
	done

RamonAfterBattleText::
	text "¡Ojalá hubiera un"
	line "Pokémon ladrón!"

	para "¡Me encantaría"
	line "utilizarlo!"
	done

DanteSeenText::
	text "¡Ya sé por qué"
	line "Blaine se hizo"
	cont "entrenador!"
	done

DanteBeatenText::
	text_start
	line "¡Auuuuuuuuuu!"
	done

DanteAfterBattleText::
	text "Blaine estaba"
	line "perdido en las"
	cont "montañas, cuando"
	cont "apareció un feroz"
	cont "pájaro Pokémon."

	para "¡Su luz permitió"
	line "a Blaine"
	cont "encontrar la"
	cont "forma de bajar!"
	done

DacioSeenText::
	text "¡Estuve en muchos"
	line "Gimnasios,"
	cont "pero éste es mi"
	cont "preferido!"
	done

DacioBeatenText::
	text "¡Caray!"
	line "¡Eso quema!"
	done

DacioAfterBattleText::
	text "¡A nosotros, los"
	line "seguidores de los"
	cont "Pokémon del fuego"
	cont "nos gustan Ponyta"
	cont "y Ninetales!"
	done

ZacSeenText::
	text "El fuego es débil"
	line "contra el agua."
	done

ZacBeatenText::
	text "¡Oh!"
	line "¡Esto se acabó!"
	done

ZacAfterBattleText::
	text "¡El agua apaga el"
	line "fuego!"

	para "¡Pero el fuego"
	cont "derrite los <POKE>mon"
	cont "tipo hielo."
	done

BlaineIntroText:
	text "¡Ja!"

	para "¡Soy Blaine!"
	line "¡Líder del"
	cont "Gimnasio de Isla"
	cont "Canela!"

	para "¡Mis feroces"
	line "Pokémon"
	cont "quemarán a"
	cont "todo aquel que"
	cont "me desafíe!"

	para "¡Ja! ¡Mejor que"
	line "tengas el"
	cont "Antiquemaduras!"
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
	object_event 17,  8, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerOctavio, -1
	object_event 17,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerEnrique, -1
	object_event 11,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerAvero, -1
	object_event 11, 10, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRamon, -1
	object_event 11, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerDante, -1
	object_event  3, 16, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerDacio, -1
	object_event  3, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerZac, -1
