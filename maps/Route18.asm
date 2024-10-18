	object_const_def
	const ROUTE18_BIRD_KEEPER1
	const ROUTE18_BIRD_KEEPER2
	const ROUTE18_FIREBREATHER1
	const ROUTE18_FIREBREATHER2
	const ROUTE18_GENTLEMAN
	const ROUTE18_COOLTRAINERM1
	const ROUTE18_COOLTRAINERM2
	const ROUTE18_COOLTRAINERM3

Route18_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperBoris:
	trainer BIRD_KEEPER, BORIS, EVENT_BEAT_BIRD_KEEPER_BORIS, BirdKeeperBorisSeenText, BirdKeeperBorisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBorisAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperBob:
	trainer BIRD_KEEPER, BOB, EVENT_BEAT_BIRD_KEEPER_BOB, BirdKeeperBobSeenText, BirdKeeperBobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBobAfterBattleText
	waitbutton
	closetext
	end

TrainerErick:
	trainer COOLTRAINERM, ERICK, EVENT_BEAT_ERICK, ErickSeenText, ErickBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ErickAfterBattleText
	waitbutton
	closetext
	end

TrainerAndy:
	trainer COOLTRAINERM, ANDY, EVENT_BEAT_ANDY, AndySeenText, AndyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AndyAfterBattleText
	waitbutton
	closetext
	end

TrainerElias:
	trainer COOLTRAINERM, ELIAS, EVENT_BEAT_ELIAS, EliasSeenText, EliasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EliasAfterBattleText
	waitbutton
	closetext
	end

TrainerVirgil:
	trainer GENTLEMAN, VIRGIL, EVENT_BEAT_VIRGIL, VirgilSeenText, VirgilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VirgilAfterBattleText
	waitbutton
	closetext
	end

TrainerNeron:
	trainer FIREBREATHER, NERON, EVENT_BEAT_NERON, NeronSeenText, NeronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NeronAfterBattleText
	waitbutton
	closetext
	end

TrainerDario2:
	trainer FIREBREATHER, DARIO2, EVENT_BEAT_DARIO2, Dario2SeenText, Dario2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Dario2AfterBattleText
	waitbutton
	closetext
	end

Route18Sign:
	jumptext Route18SignText

BirdKeeperBorisSeenText:
	text "Si estás buscando"
	line "Pokémon, mira"

	para "en las zonas de"
	line "hierba alta."
	done

BirdKeeperBorisBeatenText:
	text "¡Ayyyy!"
	done

BirdKeeperBorisAfterBattleText:
	text "Siendo tan fuerte,"
	line "debe de ser muy"
	cont "divertido luchar."
	done

BirdKeeperBobSeenText:
	text "El Camino de Bicis"
	line "es un atajo a"
	cont "Ciudad Azulona."
	done

BirdKeeperBobBeatenText:
	text "¡Uau…!"
	done

BirdKeeperBobAfterBattleText:
	text "Si no tienes una"
	line "Bici, no podrás"

	para "usar el atajo."
	done

EliasSeenText:
	text "¡Tú! ¡Luchemos!"
	done

EliasBeatenText:
	text "Me pasa por ir de"
	line "gallito."
	done

EliasAfterBattleText:
	text "A partir de ahora"
	line "seré más humilde."
	done

ErickSeenText:
	text "Tengo todos los"
	line "Pokémon iniciales"
	cont "de Kanto."
	done

ErickBeatenText:
	text "No me han servido"
	line "de nada."
	done

ErickAfterBattleText:
	text "Digamos que soy de"
	line "los favoritos del"
	cont "Prof. Oak."
	done

AndySeenText:
	text "Tengo todos los"
	line "Pokémon iniciales"
	cont "de Johto."
	done

AndyBeatenText:
	text "No me han servido"
	line "de nada."
	done

AndyAfterBattleText:
	text "Por el camino de"
	line "bicis hay gente"
	cont "muy maleducada."
	done

VirgilSeenText:
	text "No me gusta salir"
	line "por las rutas, no"
	cont "es lugar para un"
	cont "caballero."
	done

VirgilBeatenText:
	text "Bien hecho."
	done

VirgilAfterBattleText:
	text "A veces tienes que"
	line "bajar al lodo para"
	cont "entrenar a tus"
	cont "Pokémon."

	para "Lo que sea por"
	line "ellos."
	done

Dario2SeenText:
	text "Solos nos dejan"
	line "practicar por en"
	cont "esta plaza."

	para "La gente suele"
	line "tener miedo al"
	cont "fuego."
	done

Dario2BeatenText:
	text "Extinguido."
	done

Dario2AfterBattleText:
	text "Tampoco es que"
	line "tenga una bici"
	cont "para ir por el"
	cont "camino de bicis."
	done

NeronSeenText:
	text "Mi amigo es un"
	line "llorica."
	done

NeronBeatenText:
	text "¿Qué?"
	done

NeronAfterBattleText:
	text "Solo me ganaste"
	line "porque el tipo agua"
	cont "abunda en Kanto."

	para "Y tampoco tenemos"
	line "muchos sitios"
	cont "donde nos dejen"
	cont "entrenar."
	done

Route18SignText:
	text "Ruta 18"

	para "Ciudad Azulona -"
	line "Ciudad Fucsia"
	done

Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  6, ROUTE_17_ROUTE_18_GATE, 3
	warp_event  6,  7, ROUTE_17_ROUTE_18_GATE, 4

	def_coord_events

	def_bg_events
	bg_event  7,  5, BGEVENT_READ, Route18Sign

	def_object_events
	object_event 16, 11, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperBoris, -1
	object_event 16,  8, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperBob, -1
	object_event 45, 15, SPRITE_FIREBREATHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerDario2, -1
	object_event 42, 13, SPRITE_FIREBREATHER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerNeron, -1
	object_event 24, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerVirgil, -1
	object_event 39,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerErick, -1
	object_event 22,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerAndy, -1
	object_event 33, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerElias, -1
