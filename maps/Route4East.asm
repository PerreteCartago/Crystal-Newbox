	object_const_def
	const ROUTE4_BIRD_KEEPER
	const ROUTE4_PICNICKER1
	const ROUTE4_PICNICKER2
	const ROUTE4_POKE_BALL

Route4East_MapScripts:
	def_scene_scripts

	def_callbacks


TrainerBirdKeeperHank:
	trainer BIRD_KEEPER, HANK, EVENT_BEAT_BIRD_KEEPER_HANK, BirdKeeperHankSeenText, BirdKeeperHankBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperHankAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHope:
	trainer PICNICKER, HOPE, EVENT_BEAT_PICNICKER_HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHopeAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerSharon:
	trainer PICNICKER, SHARON, EVENT_BEAT_PICNICKER_SHARON, PicnickerSharonSeenText, PicnickerSharonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerSharonAfterBattleText
	waitbutton
	closetext
	end

MtMoonSquareSign:
	jumptext MtMoonSquareSignText

Route4HPUp:
	itemball HP_UP

Route4HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_4_HIDDEN_ULTRA_BALL

BirdKeeperHankSeenText:
	text "Estoy mejorando"
	line "mis Pokémon."

	para "¿Quieres luchar"
	line "contra mí?"
	done

BirdKeeperHankBeatenText:
	text "¡Argh! He perdido"
	line "esta vez…"
	done

BirdKeeperHankAfterBattleText:
	text "Si tienes un"
	line "Pokémon que desees"

	para "mejorar, ponlo en"
	line "primer lugar y"

	para "cámbialo nada más"
	line "empezar."

	para "Así es como hay"
	line "que hacerlo."
	done

PicnickerHopeSeenText:
	text "Presiento que"
	line "puedo ganar."

	para "¡Veamos si tengo"
	line "razón!"
	done

PicnickerHopeBeatenText:
	text "¡Uau! Eres"
	line "demasiado fuerte."
	done

PicnickerHopeAfterBattleText:
	text "Dicen que Clefairy"
	line "aparece en el"

	para "Mt. Moon."
	line "¿Pero dónde?"
	done

PicnickerSharonSeenText:
	text "¡Umm…!"
	line "Yo…"
	done

PicnickerSharonBeatenText:
	text "<……>"
	done

PicnickerSharonAfterBattleText:
	text "…Creo que seguiré"
	line "entrenándome…"
	done

MtMoonSquareSignText:
	text "PLAZA MT. MOON"

	para "Sube las"
	line "escaleras"
	done

Route4East_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, MOUNT_MOON, 2
	warp_event  6,  9, MONTE_MOON_GRANDE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  9, 11, BGEVENT_READ, MtMoonSquareSign
	bg_event 32,  8, BGEVENT_ITEM, Route4HiddenUltraBall

	def_object_events
	object_event 27, 14, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperHank, -1
	object_event 20, 12, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerPicnickerHope, -1
	object_event 46, 18, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerPicnickerSharon, -1
	object_event 21,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP

