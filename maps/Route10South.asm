	object_const_def
	const ROUTE10SOUTH_HIKER
	const ROUTE10SOUTH_POKEFAN_M
	const ROUTE10SOUTH_POKEMANIAC

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerJim:
	trainer HIKER, JIM, EVENT_BEAT_HIKER_JIM, HikerJimSeenText, HikerJimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerJimAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmRobert:
	trainer POKEFANM, ROBERT, EVENT_BEAT_POKEFANM_ROBERT, PokefanmRobertSeenText, PokefanmRobertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRobertAfterBattleText
	waitbutton
	closetext
	end

TrainerMarco:
	trainer POKEMANIAC, MARCO, EVENT_BEAT_MARCO, MarcoSeenText, MarcoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MarcoAfterBattleText
	waitbutton
	closetext
	end

Route10Sign:
	jumptext Route10SignText

MarcoSeenText::
	text "¡Hola chaval!"

	para "¿Quieres ver"
	line "mis Pokémon?"
	done

MarcoBeatenText::
	text "¡Oh no!"
	line "Mis Pokémon!"
	done

MarcoAfterBattleText::
	text "¡No me gustas"
	line "cuando ganas!"
	done

HikerJimSeenText:
	text "¡Ja, ja, ja!"
	done

HikerJimBeatenText:
	text "¡Aaaaaaachís!"
	done

HikerJimAfterBattleText:
	text "¡La alergia me"
	line "hace estornudar!"
	cont "¡AAACHÚS!"
	done

PokefanmRobertSeenText:
	text "Te gustan los"
	line "Pokémon, ¿verdad?"

	para "¡A mí también!"
	done

PokefanmRobertBeatenText:
	text "Debo admitir mi"
	line "derrota."
	done

PokefanmRobertAfterBattleText:
	text "Mira lo que le has"
	line "hecho a mi"
	cont "Pokémon."

	para "No lo olvidaré…"
	done

Route10SignText:
	text "Ruta 10"

	para "Monte Moon -"
	line "Pueblo Lavanda"
	done

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  3, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  9,  5, BGEVENT_READ, Route10Sign

	def_object_events
	object_event  2,  7, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerJim, -1
	object_event 16,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmRobert, -1
	object_event 16, 11, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerMarco, -1
