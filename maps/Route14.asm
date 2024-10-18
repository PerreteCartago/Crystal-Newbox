	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_BIRD_KEEPER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM
	const ROUTE14_BIRD_KEEPER1
	const ROUTE14_BIRD_KEEPER2
	const ROUTE14_BIKER1
	const ROUTE14_BIKER2
	const ROUTE14_BIKER3
	const ROUTE14_BIKER4

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

TrainerMauro:
	trainer BIRD_KEEPER, MAURO, EVENT_BEAT_MAURO, MauroSeenText, MauroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MauroAfterBattleText
	waitbutton
	closetext
	end

TrainerBeni:
	trainer BIRD_KEEPER, BENI, EVENT_BEAT_BENI, BeniSeenText, BeniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeniAfterBattleText
	waitbutton
	closetext
	end

TrainerLucio:
	trainer BIKER, LUCIO, EVENT_BEAT_LUCIO, LucioSeenText, LucioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LucioAfterBattleText
	waitbutton
	closetext
	end

TrainerMalen:
	trainer BIKER, MALEN, EVENT_BEAT_MALEN, MalenSeenText, MalenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MalenAfterBattleText
	waitbutton
	closetext
	end

TrainerIsaac:
	trainer BIKER, ISAAC, EVENT_BEAT_ISAAC, IsaacSeenText, IsaacBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext IsaacAfterBattleText
	waitbutton
	closetext
	end

TrainerGerardo:
	trainer BIKER, GERARDO, EVENT_BEAT_GERARDO, GerardoSeenText, GerardoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GerardoAfterBattleText
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

MauroSeenText:
	text "¡Se venden MTs en"
	line "AZULONA! ¡Pero"
	cont "pocas personas"
	cont "tienen MOs!"
	done

MauroBeatenText:
	text "¡Ayy!"
	line "¡Qué mal!"
	done

MauroAfterBattleText:
	text "Enseña a tus"
	line "Pokémon ataques"
	cont "de sus mismos"
	cont "elementos para"
	cont "conseguir más"
	cont "potencia."
	done

BeniSeenText::
	text "¿Oíste hablar de"
	line "los legendarios"
	cont "Pokémon?"
	done

BeniBeatenText:
	text "¿Qué?"
	line "¿Cómo he"
	cont "podido perder?"
	done

BeniAfterBattleText:
	text "Los 3 Pokémon"
	line "legendarios son"
	cont "aves de presa."
	done

LucioSeenText::
	text "¡Venga, venga!"
	line "¡Vamos, vamos!"
	cont "¡Adelante!"
	done

LucioBeatenText::
	text "¡Arg!"
	line "¡Perdí! ¡Lárgate!"
	done

LucioAfterBattleText:
	text "¿Qué, qué, qué?"
	line "¿Qué quieres?"
	done

IsaacSeenText:
	text "¡Perfecto! ¡Así"
	line "pasaré el rato!"
	done

IsaacBeatenText:
	text "¿Qué?"
	line "¿¡Tú!?"
	done

IsaacAfterBattleText:
	text "¡Entrenar a los"
	line "Pokémon es un"
	cont "rollo!"
	done

GerardoSeenText::
	text "¡Salimos por aquí"
	line "porque hay más"
	cont "espacio!"
	done

GerardoBeatenText::
	text "¡Aniquilado!"
	done

GerardoAfterBattleText:
	text "¡Muy bien! ¡Tus"
	line "Pokémon son"
	cont "súper fuertes!"

	para "¡La fuerza mola!"
	line "¡Y tú lo sabes!"
	done

MalenSeenText::
	text "¿Quieres pelear"
	line "con tus Pokémon?"
	cont "¡Pues vale!"
	done

MalenBeatenText::
	text "¡Pulverizado!"
	done

MalenAfterBattleText::
	text "¡Ya sabes quién"
	line "ganaría si"
	cont "peleáramos"
	cont "tú y yo!"
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event  7, 11, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event 11, 27, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event  7, 19, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
	object_event  6,  4, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBeni, -1
	object_event  6, 26, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerMauro, -1
	object_event 14,  7, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerLucio, -1
	object_event  4, 13, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerMalen, -1
	object_event 15, 13, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerIsaac, -1
	object_event 13, 22, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 3, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 5, TrainerGerardo, -1
