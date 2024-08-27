	object_const_def
	const ROUTE38_RIVAL_POKEMON_HOUSE_GENTLEMAN

Route38RivalPokemonHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonRivalScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_RIVAL
	iftrue .GotRival
	writetext AcceptedRivalText
	yesorno
	iffalse .Refused
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	writetext SamePokemonTotodileText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedTotodileText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TOTODILE, 5
	setevent EVENT_GOT_RIVAL
	writetext AlternatetiveText
	waitbutton
	closetext
	end

.Refused:
	writetext MistakeText
	waitbutton
	closetext
	end

.GotRival:
	writetext WhisesForElmText
	waitbutton
	closetext
	end

.NoRoom:
	writetext RivalPartyFullText
	waitbutton
	closetext
	end

.Totodile
	writetext SamePokemonChikoritaText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedChikoritaText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CHIKORITA, 5
	setevent EVENT_GOT_RIVAL
	writetext AlternatetiveText
	waitbutton
	closetext
	end

.Chikorita
	writetext SamePokemonCyndaquilText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedCyndaquilText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke CYNDAQUIL, 5
	setevent EVENT_GOT_RIVAL
	writetext AlternatetiveText
	waitbutton
	closetext
	end

AcceptedRivalText:
	text "¿Eres tú el chaval"
	line "que está ayudando"
	cont "a Elm?"
	done

WhisesForElmText:
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

RivalPartyFullText:
	text "¡Espera!"
	line "No puedes llevar"
	cont "más Pokémon."
	done

ReceivedTotodileText:
	text "<PLAYER> recibe"
	line "a Totodile!"
	done

ReceivedCyndaquilText:
	text "<PLAYER> recibe"
	line "a Cyndaquil!"
	done

ReceivedChikoritaText:
	text "<PLAYER> recibe"
	line "a Chikorita!"
	done

AlternatetiveText:
	text "Cuidate, chaval."
	done

MistakeText:
	text "Niñato mentiroso."

	para "Pues que sepas que"
	line "el Prof. Elm es un"
	cont "pardillo."
	
	para "Y tú más aún."
	
	para "Venga fuera de mi"
	line "casa."
	done

SamePokemonTotodileText:
	text "Escuché que han"
	line "robado en su labo-"
	cont "ratorio."

	para "Ya ni en juegos"
	line "de niños estamos"
	cont "a salvo."

	para "Yo tengo un Toto-"
	line "dile que temo se"
	cont "malogre sin entre-"
	cont "namiento."

	para "Llévaselo, seguro"
	line "le haces feliz."
	done

SamePokemonCyndaquilText:
	text "Escuché que han"
	line "robado en su labo-"
	cont "ratorio."

	para "Ya ni en juegos"
	line "de niños estamos"
	cont "a salvo."

	para "Yo tengo un Cynda-"
	line "quil que temo se"
	cont "malogre sin entre-"
	cont "namiento."

	para "Llévaselo, seguro"
	line "le haces feliz."
	done

SamePokemonChikoritaText:
	text "Escuché que han"
	line "robado en su labo-"
	cont "ratorio."

	para "Ya ni en juegos"
	line "de niños estamos"
	cont "a salvo."

	para "Yo tengo un Chiko-"
	line "rita que temo se"
	cont "malogre sin entre-"
	cont "namiento."

	para "Llévaselo, seguro"
	line "le haces feliz."
	done

Route38RivalPokemonHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_38, 3
	warp_event  3,  7, ROUTE_38, 3

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonRivalScript, -1