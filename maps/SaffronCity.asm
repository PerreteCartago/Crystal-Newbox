	object_const_def
	const SAFFRONCITY_LASS1
	const SAFFRONCITY_FISHER
	const SAFFRONCITY_COOLTRAINER_M
	const SAFFRONCITY_COOLTRAINER_F
	const SAFFRONCITY_FISHER2
	const SAFFRONCITY_YOUNGSTER1
	const SAFFRONCITY_YOUNGSTER2
	const SAFFRONCITY_LASS3

SaffronCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SaffronCityFlypointCallback

SaffronCityFlypointCallback:
	setflag ENGINE_FLYPOINT_SAFFRON
	endcallback

SaffronCityLass1Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityLass1Text
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityLass1Text_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityPokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityPokefanMText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityPokefanMText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityCooltrainerMScript:
	jumptextfaceplayer SaffronCityCooltrainerMText

SaffronCityCooltrainerFScript:
	jumptextfaceplayer SaffronCityCooltrainerFText

SaffronCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityFisherText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityFisherText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityYoungster1Script:
	jumptextfaceplayer SaffronCityYoungster1Text

SaffronCityYoungster2Script:
	jumptextfaceplayer SaffronCityYoungster2Text

SaffronCityLass2Script:
	jumptextfaceplayer SaffronCityLass2Text

SaffronCitySign:
	jumptext SaffronCitySignText

SaffronGymSign:
	jumptext SaffronGymSignText

FightingDojoSign:
	jumptext FightingDojoSignText

SilphCoSign:
	jumptext SilphCoSignText

MrPsychicsHouseSign:
	jumptext MrPsychicsHouseSignText

SaffronCityMagnetTrainStationSign:
	jumptext SaffronCityMagnetTrainStationSignText

SaffronCityPokecenterSign:
	jumpstd PokecenterSignScript

SaffronCityMartSign:
	jumpstd MartSignScript

SaffronCityLass1Text:
	text "Aquí vive una niña"
	line "que es experta en"
	cont "imitar a la gente."

	para "Imita incluso a la"
	line "gente con la que"

	para "habla, y te"
	line "confunde."
	done

SaffronCityLass1Text_ReturnedMachinePart:
	text "La Copiona parecía"
	line "muy triste."

	para "Había perdido"
	line "su <POKE>muñeco"
	cont "Clefairy favorito."
	done

SaffronCityPokefanMText:
	text "¿Eres de Johto?"

	para "Si funcionara el"
	line "Magnetotrén, no"

	para "tardarías nada en"
	line "volver a casa."
	done

SaffronCityPokefanMText_ReturnedMachinePart:
	text "¿Eres de Johto?"

	para "Con el Magnetotrén"
	line "enseguida estarás"
	cont "en casa."
	done

SaffronCityCooltrainerMText:
	text "Iba al Gimnasio"
	line "a luchar contra"
	cont "entrenadores…"

	para "Y acabé en el"
	line "viejo Gimnasio que"
	cont "hay al lado."

	para "¡Vaya, fue"
	line "vergonzoso!"
	done

SaffronCityCooltrainerFText:
	text "Es Silph S.A.,"
	line "famosa por sus"
	cont "artículos Pokémon."

	para "En el pasado, el"
	line "Team Rocket quiso"

	para "hacerse con esta"
	line "compañía por esa"
	cont "misma razón."
	done

SaffronCityFisherText:
	text "¡Ñam, ñam!"

	para "Dicen que en la"
	line "Central Energía"

	para "tienen muchos"
	line "problemas."

	para "¡Ñam, ñam!"
	done

SaffronCityFisherText_ReturnedMachinePart:
	text "¡Ñam, ñam!"

	para "Dicen que hay"
	line "problemas en la"
	cont "Central Energía."

	para "¡Ñam, ñam!"
	line "¡Estoy lleno!"
	done

SaffronCityYoungster1Text:
	text "Entrar por primera"
	line "vez en un callejón"

	para "me pone un poco"
	line "nervioso."
	done

SaffronCityYoungster2Text:
	text "En Ciudad Verde"
	line "hay un lugar"

	para "llamado la Casa"
	line "del Entrenador,"

	para "donde se reúne"
	line "gente de todas"
	cont "partes."
	done

SaffronCityLass2Text:
	text "Nuestra ciudad"
	line "salió en un"
	cont "programa de radio."

	para "Está bien oír"
	line "alabanzas sobre tu"

	para "ciudad, pero"
	line "también es un poco"
	cont "vergonzoso."
	done

SaffronCitySignText:
	text "Ciudad Azafrán"

	para "La brillante y"
	line "dorada tierra del"
	cont "comercio"
	done

SaffronGymSignText:
	text "Líder del Gimnasio"
	line "Pokémon de Ciudad"
	cont "Azafrán: Sabrina"

	para "Maestra de los"
	line "Pokémon psíquicos"
	done

FightingDojoSignText:
	text "¡Bienvenidos!"
	line "Dojo-Karate"
	done

SilphCoSignText:
	text "Edificio-Oficinas"
	line "Silph S.A."
	done

MrPsychicsHouseSignText:
	text "Casa del"
	line "Sr. Psíquico"
	done

SaffronCityMagnetTrainStationSignText:
	text "Estación del"
	line "Magnetotrén de"
	cont "Ciudad Azafrán"
	done

SaffronCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 26,  3, FIGHTING_DOJO, 1
	warp_event 34,  3, SAFFRON_GYM, 1
	warp_event 25, 11, SAFFRON_MART, 2
	warp_event  9, 29, SAFFRON_POKECENTER_1F, 1
	warp_event 27, 29, MR_PSYCHICS_HOUSE, 1
	warp_event  8,  3, SAFFRON_MAGNET_TRAIN_STATION, 2
	warp_event 18, 21, SILPH_CO_1F, 1
	warp_event  9, 11, COPYCATS_HOUSE_1F, 1
	warp_event 18,  3, ROUTE_5_SAFFRON_GATE_1F, 3
	warp_event  0, 24, ROUTE_7_SAFFRON_GATE, 3
	warp_event  0, 25, ROUTE_7_SAFFRON_GATE, 4
	warp_event 16, 33, ROUTE_6_SAFFRON_GATE, 1
	warp_event 17, 33, ROUTE_6_SAFFRON_GATE, 2
	warp_event 39, 22, ROUTE_8_SAFFRON_GATE, 1
	warp_event 39, 23, ROUTE_8_SAFFRON_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21,  5, BGEVENT_READ, SaffronCitySign
	bg_event 33,  5, BGEVENT_READ, SaffronGymSign
	bg_event 25,  5, BGEVENT_READ, FightingDojoSign
	bg_event 15, 21, BGEVENT_READ, SilphCoSign
	bg_event 25, 29, BGEVENT_READ, MrPsychicsHouseSign
	bg_event 11,  5, BGEVENT_READ, SaffronCityMagnetTrainStationSign
	bg_event 10, 29, BGEVENT_READ, SaffronCityPokecenterSign
	bg_event 26, 11, BGEVENT_READ, SaffronCityMartSign

	def_object_events
	object_event  7, 14, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityLass1Script, -1
	object_event 19, 30, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityPokefanMScript, -1
	object_event 32,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerMScript, -1
	object_event 20, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerFScript, -1
	object_event 27, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityFisherScript, -1
	object_event 15, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster1Script, -1
	object_event 35, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster2Script, -1
	object_event 19,  8, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityLass2Script, -1
