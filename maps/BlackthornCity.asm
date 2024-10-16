	object_const_def
	const BLACKTHORNCITY_SUPER_NERD1
	const BLACKTHORNCITY_SUPER_NERD2
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BlackthornCityFlypointCallback
	callback MAPCALLBACK_OBJECTS, BlackthornCitySantosCallback

BlackthornCityFlypointCallback:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	endcallback

BlackthornCitySantosCallback:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .SantosAppears
	disappear BLACKTHORNCITY_SANTOS
	endcallback

.SantosAppears:
	appear BLACKTHORNCITY_SANTOS
	endcallback

BlackthornSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext Text_ClairIsOut
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext Text_ClairIsIn
	waitbutton
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetext
	end

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	jumptextfaceplayer BlackthornGrampsGrantsEntryText

BlackthornBlackBeltScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext BlackBeltText_WeirdRadio
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext BlackBeltText_VoicesInMyHead
	waitbutton
	closetext
	end

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue .Saturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checkevent EVENT_MET_SANTOS_OF_SATURDAY
	iftrue .MetSantos
	writetext MeetSantosText
	promptbutton
	setevent EVENT_MET_SANTOS_OF_SATURDAY
.MetSantos:
	writetext SantosGivesGiftText
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalse .Done
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetext
	end

.Saturday:
	writetext SantosSaturdayText
	waitbutton
.Done:
	closetext
	end

.NotSaturday:
	writetext SantosNotSaturdayText
	waitbutton
	closetext
	end

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

MoveDeletersHouseSign:
	jumptext MoveDeletersHouseSignText

MoveReminderHouseSign:
	jumptext MoveReminderHouseSignText

DragonDensSign:
	jumptext DragonDensSignText

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSign:
	jumpstd MartSignScript

Text_ClairIsOut:
	text "Lo siento."

	para "Débora, la Líder"
	line "del Gimnasio, está"

	para "en la Guarida"
	line "Dragón, detrás del"
	cont "Gimnasio."

	para "No tengo ni idea"
	line "de cuándo volverá"
	cont "nuestra Líder."
	done

Text_ClairIsIn:
	text "Débora, la Líder"
	line "del Gimnasio, te"
	cont "espera."

	para "Aunque, a alguien"
	line "como tú le será"
	cont "imposible ganar."
	done

Text_ClairIsBeaten:
	text "¿Has vencido a"
	line "Débora?"

	para "¡Impresionante!"

	para "Nunca oí que"
	line "perdiera contra"

	para "nadie, excepto"
	line "contra Lance."
	done

BlackthornGrampsRefusesEntryText:
	text "No. Sólo los"
	line "elegidos pueden"

	para "entrenarse aquí."
	line "Por favor, vete."
	done

BlackthornGrampsGrantsEntryText:
	text "Si Débora lo"
	line "permite, su"

	para "abuelo, nuestro"
	line "Maestro, también."

	para "Puedes entrar."
	done

BlackBeltText_WeirdRadio:
	text "¿Mi radio está"
	line "rota? Sólo recibo"
	cont "esta rara señal."
	done

BlackBeltText_VoicesInMyHead:
	text "¡Auu! ¡Voces en"
	line "mi cabeza! ¿Cómo?"

	para "¡Estoy escuchando"
	line "la radio!"
	done

BlackthornCooltrainerF1Text:
	text "¿Quieres que tus"
	line "<POKE>mon olviden"
	cont "algún movimiento?"
	done

BlackthornYoungsterText:
	text "Todos los expertos"
	line "en dragones vienen"
	cont "de Ciudad Endrino."
	done

MeetSantosText:
	text "Sabino: …"

	para "Es sábado…"

	para "Soy Sabino, por"
	line "sábado…"
	done

SantosGivesGiftText:
	text "Toma esto…"
	done

SantosGaveGiftText:
	text "Sabino: …"

	para "Hechizo…"

	para "Mejora los"
	line "movimientos de"
	cont "tipo fantasma."

	para "Te voy a asustar…"
	done

SantosSaturdayText:
	text "Sabino: …"

	para "Nos vemos otro"
	line "sábado…"

	para "Pero ya no tendré"
	line "más regalos…"
	done

SantosNotSaturdayText:
	text "Sabino: Hoy no es"
	line "sábado…"
	done

BlackthornCooltrainerF2Text:
	text "¡Uau! ¿Has venido"
	line "por la Ruta"
	cont "Helada?"

	para "¡Debes de ser"
	line "genial!"
	done

BlackthornCitySignText:
	text "CIUDAD ENDRINO"

	para "Un tranquilo"
	line "refugio de montaña"
	done

BlackthornGymSignText:
	text "Líder del Gimnasio"
	line "<POKE>mon DE CIUDAD"
	cont "ENDRINO: Débora"

	para "La gran experta en"
	line "<POKE>mon dragón"
	done

MoveDeletersHouseSignText:
	text "Casa del Quita-"
	line "Movimientos."
	done

MoveReminderHouseSignText:
	text "Casa del Recuerda-"
	line "Movimientos."
	done

DragonDensSignText:
	text "HACIA LA GUARIDA"
	line "DRAGÓN"
	done

BlackthornCityTrainerTipsText:
	text "PISTAS ENTRENADOR"

	para "Todo <POKE>mon que"
	line "vaya equipado con"

	para "una Baya Milagro"
	line "se curará a sí"
	cont "mismo en combate"
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_MART, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 31, MOVE_DELETERS_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1
	warp_event  5, 29, MOVE_REMINDER_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 17, 13, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 31, BGEVENT_READ, MoveDeletersHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  5, 25, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 16, 29, BGEVENT_READ, BlackthornCityMartSign
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign
	bg_event  3, 29, BGEVENT_READ, MoveDeletersHouseSign

	def_object_events
	object_event 18, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 24, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 13, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 35, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
