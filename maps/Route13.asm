	object_const_def
	const ROUTE13_BIRD_KEEPER1
	const ROUTE13_BIRD_KEEPER2
	const ROUTE13_POKEFAN_M1
	const ROUTE13_HIKER1
	const ROUTE13_HIKER2
	const ROUTE13_BIRD_KEEPER3
	const ROUTE13_BIRD_KEEPER4
	const ROUTE13_BIRD_KEEPER5
	const ROUTE13_STANDING_PICNICKER1
	const ROUTE13_STANDING_PICNICKER2
	const ROUTE13_STANDING_PICNICKER3
	const ROUTE13_STANDING_PICNICKER4
	const ROUTE13_STANDING_BALDING_GUY
	const ROUTE13_STANDING_BEAUTY1
	const ROUTE13_STANDING_BEAUTY2

Route13_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmAlex:
	trainer POKEFANM, ALEX, EVENT_BEAT_POKEFANM_ALEX, PokefanmAlexSeenText, PokefanmAlexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAlexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmJoshua:
	trainer POKEFANM, JOSHUA, EVENT_BEAT_POKEFANM_JOSHUA, PokefanmJoshuaSeenText, PokefanmJoshuaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmJoshuaAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperPerry:
	trainer BIRD_KEEPER, PERRY, EVENT_BEAT_BIRD_KEEPER_PERRY, BirdKeeperPerrySeenText, BirdKeeperPerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperPerryAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperBret:
	trainer BIRD_KEEPER, BRET, EVENT_BEAT_BIRD_KEEPER_BRET, BirdKeeperBretSeenText, BirdKeeperBretBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBretAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerKenny:
	trainer HIKER, KENNY, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end

TrainerLola:
	trainer BEAUTY, MANOLA, EVENT_BEAT_MANOLA, LolaSeenText, LolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LolaAfterBattleText
	waitbutton
	closetext
	end

TrainerSol:
	trainer BEAUTY, SOL, EVENT_BEAT_SOL, SolSeenText, SolBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SolAfterBattleText
	waitbutton
	closetext
	end

TrainerJavier:
	trainer BALD, JAVIER, EVENT_BEAT_JAVIER, JavierSeenText, JavierBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JavierAfterBattleText
	waitbutton
	closetext
	end

TrainerSebastian:
	trainer BIRD_KEEPER, SEBASTIAN, EVENT_BEAT_SEBASTIAN, SebastianSeenText, SebastianBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SebastianAfterBattleText
	waitbutton
	closetext
	end

TrainerPastor:
	trainer BIRD_KEEPER, PASTOR, EVENT_BEAT_PASTOR, PastorSeenText, PastorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PastorAfterBattleText
	waitbutton
	closetext
	end

TrainerRoberto:
	trainer BIRD_KEEPER, ROBERTO, EVENT_BEAT_ROBERTO, RobertoSeenText, RobertoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RobertoAfterBattleText
	waitbutton
	closetext
	end

TrainerAlma:
	trainer PICNICKER, ALMA, EVENT_BEAT_ALMA, AlmaSeenText, AlmaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AlmaAfterBattleText
	waitbutton
	closetext
	end

TrainerSusi:
	trainer PICNICKER, SUSI, EVENT_BEAT_SUSI, SusiSeenText, SusiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SusiAfterBattleText
	waitbutton
	closetext
	end

TrainerValeria:
	trainer PICNICKER, VALERIA, EVENT_BEAT_VALERIA, ValeriaSeenText, ValeriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ValeriaAfterBattleText
	waitbutton
	closetext
	end

TrainerGema:
	trainer PICNICKER, GEMA, EVENT_BEAT_GEMA, GemaSeenText, GemaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GemaAfterBattleText
	waitbutton
	closetext
	end

Route13TrainerTips:
	jumptext Route13TrainerTipsText

Route13Sign:
	jumptext Route13SignText

Route13DirectionsSign:
	jumptext Route13DirectionsSignText

Route13HiddenCalcium:
	hiddenitem CALCIUM, EVENT_ROUTE_13_HIDDEN_CALCIUM

PokefanmAlexSeenText:
	text "¡Arrodíllate ante"
	line "mi regio Pokémon!"
	done

PokefanmAlexBeatenText:
	text "¿Qué? ¡Te burlas"
	line "de la realeza!"
	done

PokefanmAlexAfterBattleText:
	text "¿Acaso no quiere"
	line "ser rey todo el"
	cont "mundo?"
	done

PokefanmJoshuaSeenText:
	text "¡Jijiji! ¿Quieres"
	line "luchar contra mi"
	cont "grupo de Pikachu?"
	done

PokefanmJoshuaBeatenText:
	text "¡Pi, Pikachu!"
	done

PokefanmJoshuaAfterBattleText:
	text "Parece que tienes"
	line "muchos Pokémon,"

	para "pero Pikachu es el"
	line "mejor."
	done

BirdKeeperPerrySeenText:
	text "La agilidad es"
	line "la clave de los"
	cont "Pokémon pájaro."
	done

BirdKeeperPerryBeatenText:
	text "Me venciste con"
	line "tu velocidad…"
	done

BirdKeeperPerryAfterBattleText:
	text "Tus Pokémon"
	line "están muy bien"
	cont "entrenados."
	done

BirdKeeperBretSeenText:
	text "Mira mis Pokémon."

	para "Fíjate en su color"
	line "y en su plumaje."
	done

BirdKeeperBretBeatenText:
	text "¡Vaya! ¡No soy lo"
	line "bastante bueno!"
	done

BirdKeeperBretAfterBattleText:
	text "Los Pokémon son"
	line "felices si los"
	cont "pones guapos."
	done

HikerKennySeenText:
	text "Debería ir al"
	line "Túnel Roca para"
	cont "conseguir un Onix."
	done

HikerKennyBeatenText:
	text "He perdido…"
	done

HikerKennyAfterBattleText:
	text "Parece que las"
	line "formas geológicas"
	cont "no cambian."

	para "Pero sí que"
	line "cambian, aunque"
	cont "poco a poco."
	done

Route13TrainerTipsText:
	text "PISTAS ENTRENADOR"

	para "¡Mira! Allí, a la"
	line "izquierda del"
	cont "poste"
	done

Route13SignText:
	text "Ruta 13 hacia el"
	line "Norte al Puente"
	cont "Silencio"
	done

Route13DirectionsSignText:
	text "Hacia el Norte"
	line "Al Pueblo Lavanda"

	para "Hacia el Oeste"
	line "A Ciudad Fucsia"
	done

SebastianSeenText::
	text "¡Mis pájaros"
	line "#MON quieren"
	cont "pelear!"
	done

SebastianBeatenText::
	text_start
	line "¿Perdió mi"
	cont "combinación"
	cont "de pájaros?"
	prompt

SebastianAfterBattleText::
	text "Mis #MON"
	line "parecen felices"
	cont "aunque hayan"
	cont "perdido."
	done

SusiSeenText::
	text "¡Dicen que soy"
	line "muy buena para"
	cont "ser una niña!"
	done

SusiBeatenText::
	text "¡Oh! ¡He perdido!"
	done

SusiAfterBattleText::
	text "Quiero ser una"
	line "gran entrenadora."
	cont "Trabajaré duro."
	done

ValeriaSeenText::
	text "¡Qué chulas son"
	line "tus medallas!"
	done

ValeriaBeatenText::
	text "¡No fue"
	line "suficiente!"
	done

ValeriaAfterBattleText::
	text "¡Sé que lograste"
	line "esas medallas de"
	cont "los líderes del"
	cont "gimnasio!"
	done

GemaSeenText::
	text "Mis simpáticos"
	line "Pokémon desean"
	cont "conocerte."
	done

GemaBeatenText::
	text "¡Uauu! ¡Me has"
	line "machacado!"
	done

GemaAfterBattleText::
	text "¡Tienes que hacer"
	line "luchar a tus"
	cont "Pokémon para"
	cont "fortalecerlos!"
	done

AlmaSeenText::
	text "¡Una vez encontré"
	line "caburante en"
	cont "una cueva!"
	done

AlmaBeatenText::
	text "¡Lo hice fatal!"
	done

AlmaAfterBattleText::
	text "El carburante"
	line "aumentó la"
	cont "velocidad de"
	cont "mis Pokémon."
	done

PastorSeenText::
	text "¡El viento sopla"
	line "en mi dirección!"
	done

PastorBeatenText::
	text "¡El viento"
	line "cambió!"
	done

PastorAfterBattleText::
	text "Perdí. Creo que"
	line "volaré a casa."
	done

SolSeenText::
	text "¡Claro que"
	line "jugaré contigo!"
	done

SolBeatenText::
	text "¡Oh!"
	line "¡Qué bruto eres!"
	done

SolAfterBattleText::
	text "¿Cuál es más"
	line "fuerte, un"
	cont "Pokémon femenino"
	cont "o masculino?"
	done

LolaSeenText::
	text "¿Quieres jugar"
	line "conmigo a los"
	cont "Pokémon?"
	done

LolaBeatenText::
	text "¿Ya se ha"
	line "terminado?"
	done

LolaAfterBattleText::
	text "¡No sé nada sobre"
	line "los Pokémon!"

	para "¡Me gustan los"
	line "más chulos!"
	done

JavierSeenText::
	text "¿Y tú"
	line "qué miras?"
	done

JavierBeatenText::
	text "¡Vaya"
	line "patinazo!"
	done

JavierAfterBattleText::
	text "¡Olvídame!"
	done

RobertoSeenText::
	text "¡Me encantan los"
	line "pájaros Pokémon!"
	done

RobertoBeatenText::
	text "¡Me he quedado"
	line "sin energía!"
	done

RobertoAfterBattleText::
	text "Ojalá pudiera"
	line "volar como Pidgey."
	done

Route13_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route13TrainerTips
	bg_event 51, 13, BGEVENT_READ, Route13Sign
	bg_event 35, 15, BGEVENT_READ, Route13DirectionsSign
	bg_event 21, 15, BGEVENT_ITEM, Route13HiddenCalcium

	def_object_events
	object_event 57,  9, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperPerry, -1
	object_event 27, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperBret, -1
	object_event 35,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmJoshua, -1
	object_event 15, 14, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerHikerKenny, -1
	object_event  4, 12, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmAlex, -1
	object_event 62, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 5, TrainerSebastian, -1
	object_event 66,  7, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerPastor, -1
	object_event  4, 10, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerRoberto, -1
	object_event  4,  6, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerAlma, -1
	object_event 45,  6, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSusi, -1
	object_event 47, 10, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerValeria, -1
	object_event 25, 12, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerGema, -1
	object_event 31, 10, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerJavier, -1
	object_event 43, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerLola, -1
	object_event 55, 14, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSol, -1


