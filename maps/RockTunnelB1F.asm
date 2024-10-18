	object_const_def
	const ROCKTUNNELB1F_POKE_BALL1
	const ROCKTUNNELB1F_POKE_BALL2
	const ROCKTUNNELB1F_POKE_BALL3

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnelB1FIron:
	itemball IRON

RockTunnelB1FPPUp:
	itemball PP_UP

RockTunnelB1FRevive:
	itemball REVIVE

RockTunnelB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROCK_TUNNEL_B1F_HIDDEN_MAX_POTION

TrainerMarta:
	trainer PICNICKER, MARTA, EVENT_BEAT_MARTA, MartaSeenText, MartaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MartaAfterBattleText
	waitbutton
	closetext
	end

TrainerSofia:
	trainer PICNICKER, SOFIA, EVENT_BEAT_SOFIA, SofiaSeenText, SofiaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SofiaAfterBattleText
	waitbutton
	closetext
	end

TrainerAlfredo:
	trainer HIKER, ALFREDO, EVENT_BEAT_ALFREDO, AlfredoSeenText, AlfredoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext AlfredoAfterBattleText
	waitbutton
	closetext
	end

TrainerEvaristo:
	trainer HIKER, EVARISTO, EVENT_BEAT_EVARISTO, EvaristoSeenText, EvaristoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext EvaristoAfterBattleText
	waitbutton
	closetext
	end

TrainerDinio:
	trainer HIKER, DINIO, EVENT_BEAT_DINIO, DinioSeenText, DinioBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext DinioAfterBattleText
	waitbutton
	closetext
	end

TrainerDani:
	trainer POKEMANIAC, DANI, EVENT_BEAT_DANI, DaniSeenText, DaniBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext DaniAfterBattleText
	waitbutton
	closetext
	end

TrainerEsteban:
	trainer POKEMANIAC, ESTEBAN, EVENT_BEAT_ESTEBAN, EstebanSeenText, EstebanBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext EstebanAfterBattleText
	waitbutton
	closetext
	end

TrainerJulian:
	trainer POKEMANIAC, JULIAN, EVENT_BEAT_JULIAN, JulianSeenText, JulianBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext JulianAfterBattleText
	waitbutton
	closetext
	end

SofiaSeenText::
	text "Los montañeros"
	line "marcan el camino"
	cont "con ramitas."
	done

SofiaBeatenText::
	text "¡Ohhh! ¡Yo hice"
	line "todo lo posible!"
	done

SofiaAfterBattleText::
	text "¡Quiero volver"
	line "a mi casa!"
	done

DinioSeenText::
	text "¡Jajaja! ¿Crees"
	line "poder ganarme?"
	done

DinioBeatenText::
	text "¡Uups!"
	line "Nivel muscular:"
	cont "¡Cero!"
	done

DinioAfterBattleText::
	text "¡Prefiero la"
	line "fuerza porque no"
	cont "me gusta pensar!"
	done

JulianSeenText::
	text "¿Tienes una"
	line "Pokédex? ¡Yo"
	cont "también quiero"
	cont "una!"
	done

JulianBeatenText::
	text "¡Brgg! ¡Me das"
	line "tanta envidia!"
	done

JulianAfterBattleText::
	text "Cuando termines"
	line "con tu Pokédex"
	cont "¿me la dejarás?"
	done

EstebanSeenText::
	text "¿Qué sabes de"
	line "esos jugadores"
	cont "disfrazados?"
	done

EstebanBeatenText::
	text "Pues"
	line "eso es todo."
	done

EstebanAfterBattleText::
	text "Los jugadores"
	line "disfrazados"
	cont "visten como los"
	cont "Pokémon para"
	cont "divertirse."
	done

AlfredoSeenText::
	text "¡Mis técnicas de"
	line "Pokémon te"
	cont "harán llorar!"
	done

AlfredoBeatenText::
	text "¡Me rindo!"
	line "¡Tus técnicas"
	cont "son mejores!"
	done

AlfredoAfterBattleText::
	text "En las montañas"
	line "suele haber"
	cont "Pokémon del"
	cont "tipo-roca."
	done

MartaSeenText::
	text "¡No suelo venir"
	line "por aquí, pero"
	cont "lucharé contigo!"
	done

MartaBeatenText::
	text "¡Oh! ¡He perdido!"
	done

MartaAfterBattleText::
	text "¡Me gustan los"
	line "Pokémon pequeños!"
	cont "¡Los grandes son"
	cont "horribles!"
	done

EvaristoSeenText::
	text "¡Lánzame tu"
	line "mejor ataque!"
	done

EvaristoBeatenText::
	text "¡Vamos, adelante!"
	done

EvaristoAfterBattleText::
	text "¡Criaré a mis"
	line "Pokémon para"
	cont "que destruyan a"
	cont "los tuyos!"
	done

DaniSeenText::
	text "Cuando estoy en"
	line "casa, dibujo a"
	cont "los Pokémon."
	done

DaniBeatenText::
	text "¡Uf!"
	line "¡Estoy agotado!"
	done

DaniAfterBattleText::
	text "Soy un artista,"
	line "no un guerrero."
	done

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROCK_TUNNEL_1F, 6
	warp_event 23, 11, ROCK_TUNNEL_1F, 4
	warp_event 27,  3, ROCK_TUNNEL_1F, 3
	warp_event 33, 25, ROCK_TUNNEL_1F, 5

	def_coord_events

	def_bg_events
	bg_event  4, 13, BGEVENT_ITEM, RockTunnelB1FHiddenMaxPotion

	def_object_events
	object_event  4, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FIron, EVENT_ROCK_TUNNEL_B1F_IRON
	object_event 36,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FPPUp, EVENT_ROCK_TUNNEL_B1F_PP_UP
	object_event 36, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnelB1FRevive, EVENT_ROCK_TUNNEL_B1F_REVIVE
	object_event 17, 26, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerDani, -1
	object_event 16, 11, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerEsteban, -1
	object_event 21,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerJulian, -1
	object_event  4,  8, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerAlfredo, -1
	object_event 10, 20, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerEvaristo, -1
	object_event  9, 32, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerDinio, -1
	object_event 35,  9, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerMarta, -1
	object_event 30, 28, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSofia, -1
