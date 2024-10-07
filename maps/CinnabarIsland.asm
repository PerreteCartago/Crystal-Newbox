	object_const_def
	const CINNABARISLAND_BLUE
	const CINNABARISLAND_COOLTRAINER_F
	const CINNABARISLAND_YOUNGSTER
	const CINNABARISLAND_GRAMPS

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlypointCallback

CinnabarIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd PokecenterSignScript

CinnabarIslandShopSign:
	jumptext CinnabarIslandShopSignText

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

Cayetana:
	jumptextfaceplayer _Lab2Text1

CinnabarYoungster:
	jumptextfaceplayer _CinnabarIslandText1

CinnabarGramps:
	jumptextfaceplayer _CinnabarIslandText2

_CinnabarIslandText1:
	text "Blaine, del "
	line "Gimnasio Canela,"
	cont "es un hombre raro"

	para "Mi padre dice que"
	line "lleva décadas"
	cont "viviendo aquí."
	done

_CinnabarIslandText2:
	text "Ninguno de ellos"
	line "lo reconocerá,"

	para "pero los cientí-"
	line "ficos hacen sus"
	cont "exprimentos en el"
	cont "edificio quemado."

	para "Las mayores atro-"
	line "cidades son en"
	cont "nombre de la"
	cont "ciencia."
	done

_Lab2Text1::
	text "¡Encontré un"
	line "fósil raro en"
	cont "el Monte Moon!"

	para "¡Creo que es un"
	line "prehistórico y"
	cont "raro Pokémon!"

	para "Lo he dejado en"
	line "el Laboratorio."

	para "No sé qué me"
	line "darán, solo"
	cont "espero que sea"
	cont "achuchable."
	done

CinnabarIslandBlueText:
	text "¿Quién eres tú?"

	para "Es evidente que"
	line "entrenas <POKE>mon…"

	para "Me llamo Azul."

	para "Y una vez fui el"
	line "Campeón, pero sólo"

	para "durante poco"
	line "tiempo…"

	para "El entrometido de"
	line "Rojo me ganó…"

	para "¡Pero qué más da!"
	line "¿Y tú qué quieres?"

	para "¿Has venido a"
	line "desafiarme?"

	para "Lo siento, pero"
	line "salí de mi Gimna-"
	cont "sio porque oí que"
	cont "un volcán destruyó"
	cont "esta Isla."

	para "Lo sentí mucho por"
	line "Blaine y vine a"
	cont "verle."

	para "Pero mira a tu"
	line "tu alrededor…"

	para "La isla sigue"
	line "aquí."

	para "Si quieres luchar"
	line "contra mí, vuelve"

	para "al Gimnasio de"
	line "Ciudad Verde."

	para "Y aceptaré tu"
	line "desafío…"
	done

CinnabarIslandSignText:
	text "Isla Canela"

	para "La feroz ciudad"
	line "del ardiente"
	cont "deseo."
	done

CinnabarIslandGymSignText:
	text "Líder del Gimnasio"
	line "Pokémon de Isla"
	cont "Canela: Blaine"

	para "¡El maestro de"
	line "los acertijos!"
	done

CinnabarIslandShopSignText:
	text "Laboratorio"
	done

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1
	warp_event 15, 11, CINNABAR_MART, 2
	warp_event 18,  3, SEAFOAM_GYM, 1
	warp_event  5,  3, POKEMON_MANSION_1F, 1
	warp_event  7, 11, CINNABAR_LAB, 2
	warp_event  6, 11, CINNABAR_LAB, 1

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event 11,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9, 13, BGEVENT_READ, CinnabarIslandShopSign
	bg_event 13,  3, BGEVENT_READ, CinnabarIslandGymSign
	bg_event 11,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	def_object_events
	object_event 11,  5, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
	object_event  5, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Cayetana, -1
	object_event 13,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarYoungster, -1
	object_event  7,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarGramps, -1
