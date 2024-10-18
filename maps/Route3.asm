	object_const_def
	const ROUTE3_STANDING_FIREBREATHER1
	const ROUTE3_YOUNGSTER1
	const ROUTE3_YOUNGSTER2
	const ROUTE3_STANDING_FIREBREATHER2
	const ROUTE3_STANDING_BEAUTY1
	const ROUTE3_STANDING_BEAUTY2
	const ROUTE3_STANDING_BEAUTY3
	const ROUTE3_BUG_CATCHER1
	const ROUTE3_BUG_CATCHER2
	const ROUTE3_BUG_CATCHER3	

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

TrainerLucrecia:
	trainer BEAUTY, LUCRECIA, EVENT_BEAT_LUCRECIA, LucreciaSeenText, LucreciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LucreciaAfterBattleText
	waitbutton
	closetext
	end

TrainerSusana:
	trainer BEAUTY, SUSANA, EVENT_BEAT_SUSANA, SusanaSeenText, SusanaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SusanaAfterBattleText
	waitbutton
	closetext
	end

TrainerRoberta:
	trainer BEAUTY, ROBERTA, EVENT_BEAT_ROBERTA, RobertaSeenText, RobertaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RobertaAfterBattleText
	waitbutton
	closetext
	end

TrainerCornelio:
	trainer BUG_CATCHER, CORNELIO, EVENT_BEAT_CORNELIO, CornelioSeenText, CornelioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CornelioAfterBattleText
	waitbutton
	closetext
	end

TrainerGregorio:
	trainer BUG_CATCHER, GREGORIO, EVENT_BEAT_GREGORIO, GregorioSeenText, GregorioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GregorioAfterBattleText
	waitbutton
	closetext
	end

TrainerJaime:
	trainer BUG_CATCHER, BUG_CATCHER_JAIME, EVENT_BEAT_BUG_CATCHER_JAIME, JaimeSeenText, JaimeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JaimeAfterBattleText
	waitbutton
	closetext
	end

Route3Sign:
	jumptext Route3SignText

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

CornelioSeenText::
	text "¡Nos vimos en"
	line "el Bosque Verde!"
	done

CornelioBeatenText::
	text "¡Otra vez"
	line "ganaste!"
	done

CornelioAfterBattleText::
	text "¡Hay otros Pokémon"
	line "diferentes a los"
	cont "del bosque!"
	done

LucreciaSeenText::
	text "Estabas mirándome"
	line "¿verdad?"
	done

LucreciaBeatenText::
	text "¡Eres muy malo!"
	done

LucreciaAfterBattleText::
	text "¡Deja de mirarme"
	line "si no quieres"
	cont "luchar!"
	done

GregorioSeenText::
	text "¿Eres entrenador?"
	line "¡Pues luchemos!"
	done

GregorioBeatenText::
	text "¡Con nuevos"
	line "Pokémon te habría"
	cont "ganado!"
	done

GregorioAfterBattleText::
	text "¡Si una Caja de"
	line "Pokémon del PC"
	cont "está llena, cambia"
	cont "automáticamente."
	done

SusanaSeenText::
	text "¡Hola!"

	para "¡Esa mirada es de"
	line "lo más misteriosa!"
	done

SusanaBeatenText::
	text "¡Sé amable!"
	done

SusanaAfterBattleText::
	text "¡Evita las peleas"
	line "ocultándote de"
	cont "la gente!"
	done

JaimeSeenText::
	text "¡Puedes luchar"
	line "contra mis nuevos"
	cont "Pokémon!"
	done

JaimeBeatenText::
	text "¡Estoy"
	line "acabado!"
	done

JaimeAfterBattleText::
	text "¡Los Pokémon"
	line "entrenados son"
	cont "más fuertes que"
	cont "los salvajes!"
	done

RobertaSeenText::
	text "¡Oye! ¿Por qué"
	line "me has tocado?"
	done

RobertaBeatenText::
	text "¿Eso es todo?"
	done

RobertaAfterBattleText::
	text "La Ruta 4 está"
	line "debajo del"
	cont "Mt. Moon."
	done

Route3SignText:
	text "Ruta 3: Monte Moon"
	line "-Ciudad Plateada."
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 59,  9, BGEVENT_READ, Route3Sign


	def_object_events
	object_event 20,  5, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherOtis, -1
	object_event 16,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerYoungsterWarren, -1
	object_event 22,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJimmy, -1
	object_event 27,  4, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherBurt, -1
	object_event 25, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLucrecia, -1
	object_event 61, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerSusana, -1
	object_event 21, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_TRAINER, 0, TrainerRoberta, -1
	object_event 44, 11, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerCornelio, -1
	object_event 34,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerGregorio, -1
	object_event 35, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerJaime, -1
