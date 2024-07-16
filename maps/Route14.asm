	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Que sepas que me"
	line "costó mucho"

	para "atrapar a mis"
	line "queridos Pokémon."
	done

PokefanmCarterBeatenText:
	text "¡Auuuu!"
	done

PokefanmCarterAfterBattleText:
	text "Squirtle, Charman-"
	line "der y Bulbasaur."

	para "Creo que es una"
	line "buena combinación."
	done

BirdKeeperRoySeenText:
	text "Mi sueño es volar"
	line "con mi querido"
	cont "Pokémon pájaro."
	done

BirdKeeperRoyBeatenText:
	text "Puedo soñar, pero"
	line "nunca podré volar."
	done

BirdKeeperRoyAfterBattleText:
	text "¿Tienes Pokémon"
	line "que conozcan la"

	para "MO Vuelo? ¿Sí?"
	line "¡Qué envidia!"
	done

PokefanmTrevorSeenText:
	text "Hola."
	line "¿Sabes qué…?"

	para "Los Pokémon son"
	line "más amigables si"

	para "los entrenas en un"
	line "lugar que ellos"
	cont "recuerden."
	done

PokefanmTrevorBeatenText:
	text "¿Dónde conocí a"
	line "este Psyduck?"
	done

PokefanmTrevorAfterBattleText:
	text "Si hubiera un"
	line "sistema fácil de"

	para "identificar dónde"
	line "obtuve mi Pokémon…"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  6, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
