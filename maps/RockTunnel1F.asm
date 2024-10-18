	object_const_def
	const ROCKTUNNEL1F_POKE_BALL1
	const ROCKTUNNEL1F_POKE_BALL2
	const ROCKTUNNEL1F_POKEMANIAC
	const ROCKTUNNEL1F_HIKER1
	const ROCKTUNNEL1F_HIKER2
	const ROCKTUNNEL1F_HIKER3
	const ROCKTUNNEL1F_PICNICKER1
	const ROCKTUNNEL1F_PICNICKER2
	const ROCKTUNNEL1F_PICNICKER3

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks

RockTunnel1FElixer:
	itemball ELIXER

RockTunnel1FTMSteelWing:
	itemball TM_STEEL_WING

RockTunnel1FHiddenXAccuracy:
	hiddenitem X_ACCURACY, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_ACCURACY

RockTunnel1FHiddenXDefend:
	hiddenitem X_DEFEND, EVENT_ROCK_TUNNEL_1F_HIDDEN_X_DEFEND

TrainerBasilio:
	trainer POKEMANIAC, BASILIO, EVENT_BEAT_BASILIO, BasilioSeenText, BasilioBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BasilioAfterBattleText
	waitbutton
	closetext
	end

TrainerLuciano:
	trainer HIKER, LUCIANO, EVENT_BEAT_LUCIANO, LucianoSeenText, LucianoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LucianoAfterBattleText
	waitbutton
	closetext
	end

TrainerOscar:
	trainer HIKER, OSCAR, EVENT_BEAT_OSCAR, OscarSeenText, OscarBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext OscarAfterBattleText
	waitbutton
	closetext
	end

TrainerLucas:
	trainer HIKER, LUCAS, EVENT_BEAT_LUCAS, LucasSeenText, LucasBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LucasAfterBattleText
	waitbutton
	closetext
	end

TunelRocaCatacumbasSign:
	jumptext TunelRocaCatacumbasSignText

TrainerLea:
	trainer PICNICKER, LEA, EVENT_BEAT_LEA, LeaSeenText, LeaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LeaAfterBattleText
	waitbutton
	closetext
	end

TrainerAriana:
	trainer PICNICKER, ARIANA, EVENT_BEAT_ARIANA, ArianaSeenText, ArianaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ArianaAfterBattleText
	waitbutton
	closetext
	end

TrainerDora:
	trainer PICNICKER, DORA, EVENT_BEAT_DORA, DoraSeenText, DoraBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext DoraAfterBattleText
	waitbutton
	closetext
	end

LucianoSeenText::
	text "¡Este oscuro túnel"
	line "recorre un largo"
	cont "camino, chico!"
	done

LucianoBeatenText::
	text "¡Uauu!"
	line "¡Tú ganas!"
	done

LucianoAfterBattleText::
	text "Cuidado con Onix."
	line "¡Podría apretarte"
	cont "las clavijas!"
	done

OscarSeenText::
	text "Mmm. Puede que me"
	line "haya perdido..."
	done

OscarBeatenText::
	text "¡Tranquilo!"
	line "¿Qué hago?"
	cont "¿Por dónde salgo?"
	done

OscarAfterBattleText::
	text "Ese Pokémon"
	line "dormido de la"
	cont "Ruta 12 me obligó"
	cont "a desviarme."
	done

LucasSeenText::
	text "¡Los forasteros"
	line "como tú deberían"
	cont "respetarme!"
	done

LucasBeatenText::
	text "¡Me rindo!"
	done

LucasAfterBattleText::
	text "¡Tienes madera de"
	line "buen montañero!"
	done

BasilioSeenText::
	text "¡Lucha Pokémon!"
	line "¿Listo? ¡YA!"
	done

BasilioBeatenText::
	text "¡Final del"
	line "juego!"
	done

BasilioAfterBattleText::
	text "¡Conseguiré un"
	line "Zubat por"
	cont "el camino!"
	done

LeaSeenText::
	text "¡Oye! ¡No hagas"
	line "tonterías en la"
	cont "oscuridad!"
	done

LeaBeatenText::
	text "¡Estaba demasiado"
	line "oscuro!"
	done

LeaAfterBattleText::
	text "¡Vi a un Machop"
	line "en este túnel!"
	done

DoraSeenText::
	text "¡Vine hasta aquí"
	line "por los Pokémon!"
	done

DoraBeatenText::
	text "¡Me he quedado"
	line "sin Pokémon!"
	done

DoraAfterBattleText::
	text "¡Parecías muy"
	line "mono e indefenso!"
	done

ArianaSeenText::
	text "¡Tienes Pokémon!"
	line "¡Empecemos!"
	done

ArianaBeatenText::
	text "¡Juegas duro!"
	done

ArianaAfterBattleText::
	text "¡Ufff! ¡Estoy"
	line "sudando ahora!"
	done

TunelRocaCatacumbasSignText::
	text "Túnel Roca:"
	line "Ciudad Celeste -"
	cont "Pueblo Lavanda."
	done

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  5, ROUTE_9, 1
	warp_event 15, 31, ROUTE_10_SOUTH, 1
	warp_event 37,  3, ROCK_TUNNEL_B1F, 3
	warp_event 17, 11, ROCK_TUNNEL_B1F, 2
	warp_event 37, 17, ROCK_TUNNEL_B1F, 4
	warp_event  5,  3, ROCK_TUNNEL_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  7,  8, BGEVENT_ITEM, RockTunnel1FHiddenXAccuracy
	bg_event 27, 12, BGEVENT_ITEM, RockTunnel1FHiddenXDefend
	bg_event 11, 27, BGEVENT_READ, TunelRocaCatacumbasSign


	def_object_events
	object_event  4, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FElixer, EVENT_ROCK_TUNNEL_1F_ELIXER
	object_event 25, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FTMSteelWing, EVENT_ROCK_TUNNEL_1F_TM_STEEL_WING
	object_event 35, 29, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerBasilio, -1
	object_event  7, 25, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerLuciano, -1
	object_event 33, 12, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerOscar, -1
	object_event  4,  8, SPRITE_HIKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerLucas, -1
	object_event 13, 17, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerLea, -1
	object_event 27, 20, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerAriana, -1
	object_event 27,  6, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerDora, -1
