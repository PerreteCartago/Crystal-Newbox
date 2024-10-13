	object_const_def
	const ROUTE3_FIREBREATHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_YOUNGSTER2
	const ROUTE3_FIREBREATHER2

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFirebreatherOtis:
	trainer FIREBREATHER, OTIS, EVENT_BEAT_FIREBREATHER_OTIS, FirebreatherOtisSeenText, FirebreatherOtisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherOtisAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterWarren:
	trainer YOUNGSTER, WARREN, EVENT_BEAT_YOUNGSTER_WARREN, YoungsterWarrenSeenText, YoungsterWarrenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterWarrenAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterJimmy:
	trainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, YoungsterJimmySeenText, YoungsterJimmyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJimmyAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBurt:
	trainer FIREBREATHER, BURT, EVENT_BEAT_FIREBREATHER_BURT, FirebreatherBurtSeenText, FirebreatherBurtBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBurtAfterBattleText
	waitbutton
	closetext
	end

FirebreatherOtisSeenText:
	text "¡Ah! Hace un"
	line "tiempo estupendo."
	done

FirebreatherOtisBeatenText:
	text "Hace sol, pero"
	line "estoy mojado…"
	done

FirebreatherOtisAfterBattleText:
	text "Cuando llueve,"
	line "es difícil"
	cont "encenderlo…"
	done

YoungsterWarrenSeenText:
	text "¡Mmm…! No sé"
	line "qué hacer…"
	done

YoungsterWarrenBeatenText:
	text "Sabía que"
	line "perdería…"
	done

YoungsterWarrenAfterBattleText:
	text "Parecías fuerte."

	para "Me daba miedo"
	line "desafiarte…"
	done

YoungsterJimmySeenText:
	text "¡Puedo correr como"
	line "el viento!"
	done

YoungsterJimmyBeatenText:
	text "¡He perdido!"
	done

YoungsterJimmyAfterBattleText:
	text "Siempre llevo"
	line "pantalones cortos."

	para "Ésa es mi forma"
	line "de vestir."
	done

FirebreatherBurtSeenText:
	text "¡Sube y echa un"
	line "vistazo!"
	done

FirebreatherBurtBeatenText:
	text "¡Uh! ¡Eso quema!"
	done

FirebreatherBurtAfterBattleText:
	text "Soy el mejor"
	line "Comefuegos de"
	cont "Kanto."

	para "Pero no el mejor"
	line "entrenador…"
	done


Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 36, 11, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherOtis, -1
	object_event 15,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterWarren, -1
	object_event 20,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJimmy, -1
	object_event 62, 11, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherBurt, -1
