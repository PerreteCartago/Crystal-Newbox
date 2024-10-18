	object_const_def
	const ROUTE12_FISHER1
	const ROUTE12_FISHER2
	const ROUTE12_FISHER3
	const ROUTE12_FISHER4
	const ROUTE12_POKE_BALL1
	const ROUTE12_POKE_BALL2
	const ROUTE12_FISHER5
	const ROUTE12_FISHER6
	const ROUTE12_STANDIND_CAMPER
	const ROUTE12_STANDING_ROCKER

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerFisherKyle:
	trainer FISHER, KYLE, EVENT_BEAT_FISHER_KYLE, FisherKyleSeenText, FisherKyleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherKyleAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherMartin:
	trainer FISHER, MARTIN, EVENT_BEAT_FISHER_MARTIN, FisherMartinSeenText, FisherMartinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMartinAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherStephen:
	trainer FISHER, STEPHEN, EVENT_BEAT_FISHER_STEPHEN, FisherStephenSeenText, FisherStephenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherStephenAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherBarney:
	trainer FISHER, BARNEY, EVENT_BEAT_FISHER_BARNEY, FisherBarneySeenText, FisherBarneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherBarneyAfterBattleText
	waitbutton
	closetext
	end

TrainerJusti:
	trainer CAMPER, JUSTI, EVENT_BEAT_JUSTI, JustiSeenText, JustiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JustiAfterBattleText
	waitbutton
	closetext
	end

TrainerMone:
	trainer GUITARIST, MONE, EVENT_BEAT_MONE, MoneSeenText, MoneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MoneAfterBattleText
	waitbutton
	closetext
	end

TrainerNestor:
	trainer FISHER, NESTOR, EVENT_BEAT_NESTOR, NestorSeenText, NestorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NestorAfterBattleText
	waitbutton
	closetext
	end

TrainerChicho:
	trainer FISHER, CHICHO, EVENT_BEAT_CHICHO, ChichoSeenText, ChichoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ChichoAfterBattleText
	waitbutton
	closetext
	end

Route12Sign:
	jumptext Route12SignText

FishingSpotSign:
	jumptext FishingSpotSignText

Route12Calcium:
	itemball CALCIUM

Route12Nugget:
	itemball NUGGET

Route12HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_12_HIDDEN_ELIXER

FisherMartinSeenText:
	text "La paciencia es la"
	line "clave para pescar"
	cont "y criar Pokémon."
	done

FisherMartinBeatenText:
	text "¡Guaaa!"
	done

FisherMartinAfterBattleText:
	text "No tengo paciencia"
	line "para la pesca…"
	done

FisherStephenSeenText:
	text "Me gusta pescar"
	line "mientras escucho"

	para "canciones por la"
	line "radio."
	done

FisherStephenBeatenText:
	text "¡Mi estúpida radio"
	line "me ha distraído!"
	done

FisherStephenAfterBattleText:
	text "¿Conoces las"
	line "emisoras de"

	para "radio de Kanto?"
	line "Tenemos muchas."
	done

FisherBarneySeenText:
	text "¿Qué es lo más"
	line "importante en"
	cont "nuestras vidas?"
	done

FisherBarneyBeatenText:
	text "¡La respuesta"
	line "vendrá luego!"
	done

FisherBarneyAfterBattleText:
	text "Creo que la"
	line "electricidad es lo"

	para "más importante en"
	line "nuestras vidas."

	para "Si no lo fuera, no"
	line "se habría montado"

	para "tanto follón"
	line "cuando se estropeó"

	para "la Central"
	line "Energía."
	done

FisherKyleSeenText:
	text "¿Te acuerdas?"
	done

FisherKyleBeatenText:
	text "Te acuerdas, ¿no?"
	done

FisherKyleAfterBattleText:
	text "El tirón de la"
	line "caña cuando ha"
	cont "picado un Pokémon…"

	para "Ésa es la mejor"
	line "sensación para un"
	cont "pescador como yo."
	done

Route12SignText:
	text "Ruta 12"

	para "Pueblo Lavanda"
	line "Hacia el norte"
	done

FishingSpotSignText:
	text "Coto de Pesca"
	done

ChichoSeenText::
	text "¡Bien! ¡Ha"
	line "picado algo!"
	done

ChichoBeatenText::
	text "¡Bah! ¡Era muy"
	line "pequeñajo!"
	done

ChichoAfterBattleText::
	text "¡Alto! ¡Mi sedal"
	line "está enganchado!"
	done

NestorSeenText::
	text "¡Ten paciencia!"
	line "¡Pescar requiere"
	cont "tiempo!"
	done

NestorBeatenText::
	text "¡Ese"
	line "se escapó!"
	done

NestorAfterBattleText::
	text "¡Con una caña"
	line "mejor podría"
	cont "pescar mejores"
	cont "Pokémon!"
	done

JustiSeenText::
	text "¿Has encontrado"
	line "una Piedra Lunar?"
	done

JustiBeatenText::
	text "¡Auuuu!"
	done

JustiAfterBattleText::
	text "¡Podría haber"
	line "transformado a"
	cont "mis Pokémon con"
	cont "una Piedra Lunar!"
	done

MoneSeenText::
	text "¡Soy un experto"
	line "en electricidad!"
	done

MoneBeatenText::
	text "¡Se acabó!"
	done

MoneAfterBattleText::
	text "El agua conduce"
	line "la electricidad."

	para "¡Deberías poder"
	line "atrapar a los"
	cont "Pokémon del mar!"
	done

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 77, ROUTE_12_SUPER_ROD_HOUSE, 1
	warp_event 12, 15, ROUTE_12_GATE_1F, 1
	warp_event 13, 15, ROUTE_12_GATE_1F, 2
	warp_event 12, 21, ROUTE_12_GATE_1F, 3
	warp_event  0, 62, ROUTE_11_GATE_1F, 3
	warp_event  0, 63, ROUTE_11_GATE_1F, 4
	def_coord_events

	def_bg_events
	bg_event 13, 27, BGEVENT_READ, Route12Sign
	bg_event 15, 13, BGEVENT_READ, FishingSpotSign
	bg_event  7, 30, BGEVENT_ITEM, Route12HiddenElixer

	def_object_events
	object_event 15, 40, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherMartin, -1
	object_event  8, 76, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerFisherStephen, -1
	object_event 17, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerFisherBarney, -1
	object_event 12, 30, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherKyle, -1
	object_event  6, 89, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Calcium, EVENT_ROUTE_12_CALCIUM
	object_event 17, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Nugget, EVENT_ROUTE_12_NUGGET
	object_event 15, 90, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, -1, OBJECTTYPE_TRAINER, 1, TrainerChicho, -1
	object_event  7, 17, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, -1, OBJECTTYPE_TRAINER, 1, TrainerNestor, -1
	object_event  6, 88, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerJusti, -1
	object_event 15, 52, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, -1, OBJECTTYPE_TRAINER, 1, TrainerMone, -1
