	object_const_def
	const ROUTE21_SWIMMER_GIRL
	const ROUTE21_SWIMMER_GUY
	const ROUTE21_FISHER

Route21_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmermSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSethAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end

SwimmermSethSeenText:
	text "Tierra a la vista."
	line "¡Sigamos adelante!"
	done

SwimmermSethBeatenText:
	text "¡Glup…!"
	done

SwimmermSethAfterBattleText:
	text "Ese chico tan"
	line "arrogante estaba"

	para "en el volcán de"
	line "Isla Canela."
	done

SwimmerfNikkiSeenText:
	text "¡Si gano, tienes"
	line "que ayudarme con"
	cont "la loción solar!"
	done

SwimmerfNikkiBeatenText:
	text "No quiero"
	line "quemarme…"
	done

SwimmerfNikkiAfterBattleText:
	text "Debería tener"
	line "cuidado con las"

	para "manchas causadas"
	line "por el sol."
	done

FisherArnoldSeenText:
	text "Estoy aburrido de"
	line "pescar. ¡Luchemos!"
	done

FisherArnoldBeatenText:
	text "Qué fracaso…"
	done

FisherArnoldAfterBattleText:
	text "Voy a volver a"
	line "pescar…"
	done

Route21_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 24, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNikki, -1
	object_event  3, 43, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSeth, -1
	object_event 14, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherArnold, -1
