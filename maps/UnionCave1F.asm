	object_const_def
	const UNIONCAVE1F_HIKER1
	const UNIONCAVE1F_SUPER_NERD
	const UNIONCAVE1F_HIKER2
	const UNIONCAVE1F_FIREBREATHER1
	const UNIONCAVE1F_FIREBREATHER2
	const UNIONCAVE1F_POKE_BALL1
	const UNIONCAVE1F_POKE_BALL2
	const UNIONCAVE1F_POKE_BALL3
	const UNIONCAVE1F_POKE_BALL4

UnionCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerRussell:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRussellAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDaniel:
	trainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDanielAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBill:
	trainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBillAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherRay:
	trainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherRayAfterBattleText
	waitbutton
	closetext
	end

UnionCave1FGreatBall:
	itemball GREAT_BALL

UnionCave1FXAttack:
	itemball X_ATTACK

UnionCave1FPotion:
	itemball POTION

UnionCave1FAwakening:
	itemball AWAKENING

UnionCave1FUnusedSign: ; unreferenced
	jumptext UnionCave1FUnusedSignText

HikerRussellSeenText:
	text "¿Te diriges a"
	line "Pueblo Azalea?"

	para "Demuestra a mis"
	line "Pokémon que vales"
	cont "para luchar."
	done

HikerRussellBeatenText:
	text "¡Oh, oh, oh!"
	done

HikerRussellAfterBattleText:
	text "¡Muy bien!"
	line "Ya lo he decidido."

	para "¡No me iré hasta"
	line "que mis Pokémon"
	cont "se fortalezcan!"
	done

PokemaniacLarrySeenText:
	text "Merodeo por todas"
	line "partes en busca de"
	cont "Pokémon."

	para "¿También tú vas en"
	line "busca de Pokémon?"

	para "¡Pues entonces"
	line "eres mi rival"
	cont "coleccionista!"
	done

PokemaniacLarryBeatenText:
	text "¡Ugh! Mis pobres"
	line "Pokémon…"
	done

PokemaniacLarryAfterBattleText:
	text "Todos los viernes"
	line "se escucha a un"

	para "Pokémon que ruge"
	line "en la cueva."
	done

HikerDanielSeenText:
	text "¡Uauu!"
	line "¡Qué sorpresa!"

	para "¡No esperaba ver"
	line "a nadie!"
	done

HikerDanielBeatenText:
	text "¡Uauu! ¡Me"
	line "han machacado!"
	done

HikerDanielAfterBattleText:
	text "Me obligaron a"
	line "comprar una Cola"
	cont "de Slowpoke."

	para "Lo siento por el"
	line "pobre Pokémon."
	done

FirebreatherBillSeenText:
	text "El Supersónico de"
	line "Zubat confunde a"
	cont "mis Pokémon."

	para "¡Y eso me"
	line "preocupa!"
	done

FirebreatherBillBeatenText:
	text "¡Fallé!"
	done

FirebreatherBillAfterBattleText:
	text "Los fines de"
	line "semana se oyen"

	para "extraños rugidos"
	line "en la cueva."
	done

FirebreatherRaySeenText:
	text "Si hay luz, no me"
	line "asusta la cueva."

	para "Si eres fuerte,"
	line "los Pokémon no"
	cont "se asustarán."
	done

FirebreatherRayBeatenText:
	text "¡Rayos y"
	line "centellas!"
	done

FirebreatherRayAfterBattleText:
	text "El fuego de mi"
	line "Pokémon ilumina"
	cont "la cueva."
	done

UnionCave1FUnusedSignText:
	text "CUEVA UNIÓN"
	done


UnionCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, UNION_CAVE_B1F, 3
	warp_event  3, 33, UNION_CAVE_B1F, 4
	warp_event 17, 31, ROUTE_33, 1
	warp_event 17,  3, ROUTE_32, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDaniel, -1
	object_event  4, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacLarry, -1
	object_event 11,  8, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerRussell, -1
	object_event 15, 27, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherRay, -1
	object_event 14, 19, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherBill, -1
	object_event 17, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FGreatBall, EVENT_UNION_CAVE_1F_GREAT_BALL
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FXAttack, EVENT_UNION_CAVE_1F_X_ATTACK
	object_event  4, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FPotion, EVENT_UNION_CAVE_1F_POTION
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FAwakening, EVENT_UNION_CAVE_1F_AWAKENING
