	object_const_def
	const ROUTE6_POKEFAN_M1
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

Route6PokefanMScript:
	jumptextfaceplayer Route6PokefanMText

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6PokefanMText:
	text "La carretera está"
	line "cortada hasta que"

	para "arreglen la Cen-"
	line "tral de Energía."
	done

Route6UndergroundPathSignText:
	text "VÍA SUBTERRÁNEA"

	para "Ciudad Celeste -"
	line "Ciudad Carmín"
	done

PokefanmRexSeenText:
	text "Mi Phanpy es el"
	line "más bonito del"
	cont "mundo."
	done

PokefanmRexBeatenText:
	text "¡Mi Phanpy!"
	done

PokefanmRexAfterBattleText:
	text "¡Mira qué adorable"
	line "es mi Phanpy!"

	para "¿No es tan bonito"
	line "que te emociona?"
	done

PokefanmAllanSeenText:
	text "Mi Teddiursa es el"
	line "más bonito del"
	cont "mundo."
	done

PokefanmAllanBeatenText:
	text "¡Mi Teddiursa!"
	done

PokefanmAllanAfterBattleText:
	text "¡Mira qué adorable"
	line "es mi Teddiursa!"

	para "¿No es tan bonito"
	line "que te emociona?"
	done


Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  7, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event 17,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 2, Route6PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	object_event  8, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event  9, 22, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
