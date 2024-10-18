Route10North_MapScripts:
	def_scene_scripts

	def_callbacks

TunelRocaSign:
	jumptext TunelRocaSignText

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript

TrainerHernando:
	trainer POKEMANIAC, HERNANDO, EVENT_BEAT_HERNANDO, HernandoSeenText, HernandoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HernandoAfterBattleText
	waitbutton
	closetext
	end

TrainerHilaria:
	trainer PICNICKER, HILARIA, EVENT_BEAT_HILARIA, HilariaSeenText, HilariaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HilariaAfterBattleText
	waitbutton
	closetext
	end

HernandoSeenText::
	text "¿Eres también un"
	line "Pokemaníaco?"

	para "¿Quieres ver mi"
	line "colección?"
	done

HernandoBeatenText::
	text "¡Qué! ¡No estoy"
	line "enfadado!"
	done

HernandoAfterBattleText::
	text "¡En casa tengo"
	line "más Pokémon"
	cont "súper raros!"
	done

HilariaSeenText::
	text "He estado varias"
	line "veces en un"
	cont "Gimnasio Pokémon."

	para "¡Y perdí siempre!"
	done

HilariaBeatenText::
	text "¡Volví a perder!"
	done

HilariaAfterBattleText::
	text "Vi un Pokemaníaco"
	line "en la central"
	done

TunelRocaSignText:
	text "Túnel Roca."
	done

PowerPlantSignText:
	text "Central de Energía"
	line "de Kanto"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3, 21, POWER_PLANT, 1
	warp_event  6, 21, POWER_PLANT_GRANDE, 1

	def_coord_events

	def_bg_events
	bg_event  5, 41, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign
	bg_event  7,  1, BGEVENT_READ, TunelRocaSign

	def_object_events
	object_event  3,  8, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerHilaria, -1
	object_event  7, 24, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerHernando, -1
