	object_const_def
	const ROUTE10SOUTH_POKEFAN_M1
	const ROUTE10SOUTH_POKEFAN_M2

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

Route10Sign:
	jumptext Route10SignText

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

	para "Ciudad Celeste -"
	line "Pueblo Lavanda"
	done

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_READ, Route10Sign

	def_object_events
	object_event 17,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerJim, -1
	object_event  8, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmRobert, -1
