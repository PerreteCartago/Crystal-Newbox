	object_const_def
	const ROUTE20_SWIMMER_GIRL1
	const ROUTE20_SWIMMER_GIRL2
	const ROUTE20_SWIMMER_GUY1
	const ROUTE20_SWIMMER_GIRL3
	const ROUTE20_SWIMMER_GIRL4
	const ROUTE20_SWIMMER_GIRL5
	const ROUTE20_SWIMMER_GIRL6
	const ROUTE20_SWIMMER_GUY2
	const ROUTE20_SWIMMER_GUY3
	const ROUTE20_SWIMMER_GUY4
	const ROUTE20_STANDING_PICNICKER1
	const ROUTE20_STANDING_PICNICKER2
	const ROUTE20_STANDING_BIRD_KEEPER

Route20_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route20ClearRocksCallback

Route20ClearRocksCallback:
	setevent EVENT_CINNABAR_ROCKS_CLEARED
	endcallback

TrainerSwimmerfNicole:
	trainer SWIMMERF, NICOLE, EVENT_BEAT_SWIMMERF_NICOLE, SwimmerfNicoleSeenText, SwimmerfNicoleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNicoleAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLori:
	trainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfLoriAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCameron:
	trainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCameronAfterBattleText
	waitbutton
	closetext
	end

TrainerTania:
	trainer SWIMMERF, TANIA, EVENT_BEAT_TANIA, TaniaSeenText, TaniaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TaniaAfterBattleText
	waitbutton
	closetext
	end

TrainerTiziana:
	trainer SWIMMERF, TIZIANA, EVENT_BEAT_TIZIANA, TizianaSeenText, TizianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TizianaAfterBattleText
	waitbutton
	closetext
	end

TrainerNora:
	trainer SWIMMERF, NORA, EVENT_BEAT_NORA, NoraSeenText, NoraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NoraAfterBattleText
	waitbutton
	closetext
	end

TrainerMelisa:
	trainer SWIMMERF, MELISA, EVENT_BEAT_MELISA, MelisaSeenText, MelisaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MelisaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermBoris:
	trainer SWIMMERM, SWIMMER_BORIS, EVENT_BEAT_SWIMMER_BORIS, BorisSeenText, BorisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BorisAfterBattleText
	waitbutton
	closetext
	end

TrainerDino:
	trainer SWIMMERM, DINO, EVENT_BEAT_DINO, DinoSeenText, DinoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DinoAfterBattleText
	waitbutton
	closetext
	end

TrainerDario:
	trainer SWIMMERM, DARIO, EVENT_BEAT_DARIO, DarioSeenText, DarioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DarioAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnikerIrene:
	trainer PICNICKER, PICNICKER_IRENE, EVENT_BEAT_PICNICKER_IRENE, IreneSeenText, IreneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext IreneAfterBattleText
	waitbutton
	closetext
	end

TrainerMerce:
	trainer PICNICKER, MERCE, EVENT_BEAT_MERCE, MerceSeenText, MerceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MerceAfterBattleText
	waitbutton
	closetext
	end

TrainerRoge:
	trainer BIRD_KEEPER, ROGE, EVENT_BEAT_ROGE, RogeSeenText, RogeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RogeAfterBattleText
	waitbutton
	closetext
	end

CinnabarGymSign:
	jumptext CinnabarGymSignText

BorisSeenText:
	text "El agua es poco"
	line "profunda aquí."
	done

BorisBeatenText::
	text "¡Splash!"
	done

BorisAfterBattleText::
	text "¡Ojalá pudiera"
	line "subirme a mi"
	cont "Pokémon!"
	done

TaniaSeenText::
	text "¡Las Islas Espuma"
	line "son una fácil"
	cont "salida!"
	done

TaniaBeatenText::
	text "¡Déjalo ya!"
	done

TaniaAfterBattleText::
	text "Hay una enorme"
	line "caverna debajo"
	cont "de esta isla."
	done

TizianaSeenText::
	text "¡Me gusta flotar"
	line "con los peces!"
	done

TizianaBeatenText::
	text "¡Auchh!"
	done

TizianaAfterBattleText::
	text "¿Quieres flotar"
	line "conmigo?"
	done

IreneSeenText::
	text "¿También estás"
	line "de vacaciones?"
	done

IreneBeatenText::
	text "¡Sin piedad!"
	done

IreneAfterBattleText::
	text "¡Las Islas Espuma"
	line "solían ser una"
	cont "sola isla!"
	done

DinoSeenText::
	text "¡Mira que"
	line "cuerpazo tengo!"
	done

DinoBeatenText::
	text "¡Qué canijo!"
	done

DinoAfterBattleText::
	text "¡Debería haberte"
	line "mostrado a mis"
	cont "Pokémon!"
	done

DarioSeenText::
	text "¿Por qué te has"
	line "subido a un"
	cont "Pokémon?"
	
	para "¿No sabes nadar?"
	done

DarioBeatenText::
	text "¡Auch!"
	line "¡Fracasé!"
	done

DarioAfterBattleText::
	text "¡Subirse a un"
	line "Pokémon es"
	cont "muy divertido!"
	done

RogeSeenText::
	text "¡Me subí en mi"
	line "pájaro Pokémon!"
	done

RogeBeatenText::
	text "¡Oh no!"
	done

RogeAfterBattleText::
	text "¡Mis pájaros no"
	line "pueden traerme"
	cont "volando!"
	done

NoraSeenText::
	text "¡Mi novio me dio"
	line "unas perlas muy"
	cont "grandes!"
	done

NoraBeatenText::
	text "¡No toques"
	line "mis perlas!"
	done

NoraAfterBattleText::
	text "¿Crecerán más"
	line "mis perlas dentro"
	cont "de un Cloyster?"
	done

MerceSeenText::
	text "¡Nadé hasta aquí"
	line "desde la Isla"
	cont "Canela!"
	done

MerceBeatenText::
	text "¡Estoy tan"
	line "decepcionada!"
	done

MerceAfterBattleText::
	text "¡Los Pokémon"
	line "invadieron una"
	cont "casa abandonada"
	cont "en Isla Canela!"
	done

MelisaSeenText::
	text "En Isla Canela,"
	line "al oeste, hay un"
	cont "laboratorio"
	cont "Pokémon."
	done

MelisaBeatenText::
	text "¡Espera!"
	done

MelisaAfterBattleText::
	text "¡Isla Canela"
	line "es volcánica!"
	done

SwimmerfNicoleSeenText:
	text "Me siento más"
	line "ligera en el agua."
	done

SwimmerfNicoleBeatenText:
	text "¡Oh, no!"
	done

SwimmerfNicoleAfterBattleText:
	text "La natación forta-"
	line "lece todo el cuer-"
	cont "po."
	
	para "¡Es muy sana!"
	done

SwimmerfLoriSeenText:
	text "¡Vaya colección de"
	line "Medallas."

	para "¡Luchemos!"
	done

SwimmerfLoriBeatenText:
	text "¡No!"
	done

SwimmerfLoriAfterBattleText:
	text "Surf ya no es el"
	line "único movimiento"

	para "que se utiliza en"
	line "el agua."
	done

SwimmermCameronSeenText:
	text "Supongo que es"
	line "imposible ir"

	para "nadando hasta"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "¡Aiyah!"
	done

SwimmermCameronAfterBattleText:
	text "Además de nadar"
	line "en el mar, puedo"

	para "nadar en estanques"
	line "y ríos."
	done

CinnabarGymSignText:
	text "¿Qué pone en este"
	line "letrero?"
	done

Route20_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 58,  9, SEAFOAM_ISLANDS, 2
	warp_event 50,  5, SEAFOAM_ISLANDS, 1
	
	def_coord_events

	def_bg_events
	bg_event 57, 11, BGEVENT_READ, CinnabarGymSign

	def_object_events
	object_event 88, 11, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNicole, -1
	object_event 79,  5, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfLori, -1
	object_event 74, 15, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCameron, -1
	object_event 41,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerTania, -1
	object_event 40, 14, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerTiziana, -1
	object_event 25, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerNora, -1
	object_event 18,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerMelisa, -1
	object_event  9, 11, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerSwimmermBoris, -1
	object_event 67,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerDino, -1
	object_event 93,  4, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerDario, -1
	object_event 60, 10, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, -1, OBJECTTYPE_TRAINER, 1, TrainerPicnikerIrene, -1
	object_event 34,  9, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, -1, OBJECTTYPE_TRAINER, 0, TrainerMerce, -1
	object_event 58,  4, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerRoge, -1




