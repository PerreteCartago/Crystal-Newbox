	object_const_def
	const ROUTE38_RIVAL_KARATEKA


Route30BusyManHouse_MapScripts:
	def_scene_scripts

	def_callbacks

LastStarterPokemonScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LAST_STARTER
	iftrue .GotLast
	writetext AcceptedLastText
	yesorno
	iffalse .Refused
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .LastChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .LastTotodile
	writetext LastPokemonTotodileText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedLastTotodileText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CYNDAQUIL, 5
	setevent EVENT_GOT_LAST_STARTER
	writetext AlternatetiveLastText
	waitbutton
	closetext
	end

.NoRoom
	writetext Rival2PartyFullText
	waitbutton
	closetext
	end

.Refused:
	writetext LastMistakeText
	waitbutton
	closetext
	end

.GotLast:
	writetext LastWhisesForElmText
	waitbutton
	closetext
	end

.LastTotodile
	writetext LastPokemonChikoritaText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedLastChikoritaText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOTODILE, 5
	setevent EVENT_GOT_LAST_STARTER
	writetext AlternatetiveLastText
	waitbutton
	closetext
	end

.LastChikorita
	writetext LastPokemonCyndaquilText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedLastCyndaquilText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHIKORITA, 5
	setevent EVENT_GOT_LAST_STARTER
	writetext AlternatetiveLastText
	waitbutton
	closetext
	end

Rival2PartyFullText:
	text "¡Espera!"
	line "No puedes llevar"
	cont "más Pokémon."
	done

AcceptedLastText:
	text "¿Eres tú el chaval"
	line "que está ayudando"
	cont "a Elm?"
	done

LastWhisesForElmText:
	text "Espero que ahora"
	line "el Prof. Elm se"
	cont "sienta mejor."

	para "Todos le infrava-"
	line  "loran."

	para "Pobre Hombre."

	para "El único profesor"
	line "que no hace la"
	cont "presentación de su"
	cont "propia región."
	done

ReceivedLastTotodileText:
	text "<PLAYER> recibe"
	line "a Totodile!"
	done

ReceivedLastCyndaquilText:
	text "<PLAYER> recibe"
	line "a Cyndaquil!"
	done

ReceivedLastChikoritaText:
	text "<PLAYER> recibe"
	line "a Chikorita!"
	done

AlternatetiveLastText:
	text "Entrénale como no"
	line "le entrené yo."
	done

LastMistakeText:
	text "Vaya..."

	para "Pues iba a hacerle"
	line "un buen regalo"
	cont "para su aventura."
	done

LastPokemonTotodileText:
	text "Yo quería también"
	line "ser entrenador."

	para "Incluso recibí un"
	line "inicial, Totodile."

	para "Pero mi familia es"
	line "pobre y tuve que"
	cont "dejar los combates"
	cont "y trabajar."

	para "Estar entre cuatro"
	line "paredes no es"
	cont "bueno para un"
	cont "Pokémon."

	para "Llévatelo, seguro"
	line "que contigo es"
	cont "feliz."
	done

LastPokemonCyndaquilText:
	text "Yo quería también"
	line "ser entrenador."

	para "Incluso recibí un"
	line "inicial, Cyndaquil"

	para "Pero mi familia es"
	line "pobre y tuve que"
	cont "dejar los combates"
	cont "y trabajar."

	para "Estar entre cuatro"
	line "paredes no es"
	cont "bueno para un"
	cont "Pokémon."

	para "Llévatelo, seguro"
	line "que contigo es"
	cont "feliz."
	done

LastPokemonChikoritaText:
	text "Yo quería también"
	line "ser entrenador."

	para "Incluso recibí un"
	line "inicial, Chikorita"

	para "Pero mi familia es"
	line "pobre y tuve que"
	cont "dejar los combates"
	cont "y trabajar."

	para "Estar entre cuatro"
	line "paredes no es"
	cont "bueno para un"
	cont "Pokémon."

	para "Llévatelo, seguro"
	line "que contigo es"
	cont "feliz."
	done

Route30BusyManHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 3
	warp_event  3,  7, ROUTE_30, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LastStarterPokemonScript, -1