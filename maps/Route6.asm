	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_BUG_CATCHER1
	const ROUTE6_BUG_CATCHER2
	const ROUTE6_CAMPER1
	const ROUTE6_CAMPER2
	const ROUTE6_PICNICKER1
	const ROUTE6_PICNICKER2

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

TrainerKeigo:
	trainer BUG_CATCHER, KEIGO, EVENT_BEAT_KEIGO, KeigoSeenText, KeigoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KeigoAfterBattleText
	waitbutton
	closetext
	end

TrainerElijah:
	trainer BUG_CATCHER, ELIJAH, EVENT_BEAT_ELIJAH, ElijahSeenText, ElijahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ElijahAfterBattleText
	waitbutton
	closetext
	end

TrainerRichi:
	trainer CAMPER, RICHI, EVENT_BEAT_RICHI, RichiSeenText, RichiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RichiAfterBattleText
	waitbutton
	closetext
	end

TrainerGenaro:
	trainer CAMPER, GENARO, EVENT_BEAT_GENARO, GenaroSeenText, GenaroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GenaroAfterBattleText
	waitbutton
	closetext
	end

TrainerNerea:
	trainer PICNICKER, NEREA, EVENT_BEAT_NEREA, NereaSeenText, NereaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NereaAfterBattleText
	waitbutton
	closetext
	end

TrainerChio:
	trainer PICNICKER, CHIO, EVENT_BEAT_CHIO, ChioSeenText, ChioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChioAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

RichiSeenText:
	text "¿Quién está ahí?"

	para "¡Deja de"
	line "espiarnos!"
	done

RichiBeatenText:
	text "¡Sencillamente,"
	line "no puedo ganar!"
	done

RichiAfterBattleText:
	text "(Cuchicheo)..."
	line "(Cuchicheo)..."
	done

NereaSeenText:
	text "¡Perdona! ¡Esta"
	line "conversación"
	cont "es privada!"
	done

NereaBeatenText:
	text "¡Odio perder!"
	done

NereaAfterBattleText:
	text "(Cuchicheo)..."
	line "(Cuchicheo)..."
	done

KeigoSeenText:
	text "No hay muchos"
	line "bichos por aquí."
	done

KeigoBeatenText:
	text "¡No!"
	line "¿Bromeas?"
	done

KeigoAfterBattleText:
	text "Me gustan los"
	line "bichos. Voy a"
	cont "regresar al"
	cont "Bosque Verde."
	done

GenaroSeenText:
	text "¿Qué? ¿Quieres"
	line "hablar conmigo?"
	done

GenaroBeatenText::
	text "¡Yo no empecé!"
	done

GenaroAfterBattleText:
	text "Debería llevar"
	line "más <POKE>mon"
	cont "para protegerme."
	done

ChioSeenText:
	text "¿Yo? Pues vale."
	line "¡Jugaré!"
	done

ChioBeatenText:
	text "¡No"
	line "funcionó!"
	done

ChioAfterBattleText:
	text "¡Quiero ser más"
	line "fuerte! ¿Cuál es"
	cont "tu secreto?"
	done

ElijahSeenText:
	text "¡Jamás te había"
	line "visto por aquí!"
	cont "¿Eres bueno?"
	done

ElijahBeatenText:
	text "¡Eres"
	line "demasiado bueno!"
	done

ElijahAfterBattleText:
	text "¿Es débil mi"
	line "Pokémon o soy"
	cont "yo muy malo?"
	done

Route6PokefanMText:
	text "La carretera está"
	line "cortada hasta que"

	para "arreglen la Cen-"
	line "tral de Energía."
	done

Route6UndergroundPathSignText:
	text "VÍA SUBTERRÁNEA"

	para "Ciudad Celeste -"
	line "Ciudad Carmín"
	done

PokefanmRexSeenText:
	text "Mi Phanpy es el"
	line "más bonito del"
	cont "mundo."
	done

PokefanmRexBeatenText:
	text "¡Mi Phanpy!"
	done

PokefanmRexAfterBattleText:
	text "¡Mira qué adorable"
	line "es mi Phanpy!"

	para "¿No es tan bonito"
	line "que te emociona?"
	done

PokefanmAllanSeenText:
	text "Mi Teddiursa es el"
	line "más bonito del"
	cont "mundo."
	done

PokefanmAllanBeatenText:
	text "¡Mi Teddiursa!"
	done

PokefanmAllanAfterBattleText:
	text "¡Mira qué adorable"
	line "es mi Teddiursa!"

	para "¿No es tan bonito"
	line "que te emociona?"
	done


Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  7, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event 17,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  8, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event  9, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event 11, 25, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerKeigo, -1
	object_event 19, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerElijah, -1
	object_event  7, 15, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerRichi, -1
	object_event 10, 10, SPRITE_CAMPER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerGenaro, -1
	object_event  6, 15, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerNerea, -1
	object_event 11, 24, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerChio, -1
