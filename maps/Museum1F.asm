	object_const_def

Museum1F_MapScripts:
	def_scene_scripts

	def_callbacks

MuseumReceptionist:
	jumptextfaceplayer MuseoRecepcionista

MuseumGramps:
	jumptextfaceplayer MuseumGrampsText

MuseumPokefan:
	jumptextfaceplayer MuseumPokefanText

SeguridadScript:
	jumptextfaceplayer SeguridadText

MuseumHikerScript:
	jumptextfaceplayer MuseumHikerText

OldAmberScript:
	jumptext OldAmberText

MuseumOldAmberGiveawayScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MUSEUM_OLD_AMBER
	iftrue .AlreadyGotOldAmber
	readvar VAR_DEXCAUGHT
	ifgreater 20, .MuseumPokedex
	writetext MuseumFailureText
	waitbutton
	closetext
	end

.AlreadyGotOldAmber:
	writetext MuseoEmpleadoYes
	waitbutton
	closetext
	end

.MuseumPokedex
	writetext MuseoEmpleado
	giveitem OLD_AMBER
	iffalse .NoRoom
	setevent EVENT_GOT_MUSEUM_OLD_AMBER
	writetext _ReceivedOldAmberText
	waitbutton
	closetext
	end

.NoRoom:
	writetext _Museum1FText_5c29e
	waitbutton
	closetext
	end

MuseumFailureText::
	text "¿Ni si quiera has"
	line "capturado 50"
	cont "Pokémon distintos?"

	para "¿Seguro que eres"
	line "el campeón de"
	cont "Johto?"
	done

MuseumGrampsText::
	text "¡Lleva mucho"
	line "tiempo mirar!"
	done

MuseoRecepcionista::
	text "Bienvenido al"
	line "Museo de Ciudad"
	cont "Plateada."

	para "La entrada son 50¥"
	line "pero los escolares"
	cont "entran gratis."
	
	para "Disfruta."
	done

MuseumPokefanText::
	text "¡Ese fósil es"
	line "magnífico!"
	done

MuseoEmpleado::
	text "¡No puedes entrar"
	line "por detrás!"

	para "¡Oh, da igual!"
	line "¿Sabes qué es"
	cont "el ámbar?"

	para "Sí. Seguro que sí."
	
	para "Tenemos varias"
	line "muestras."

	para "Pues el jefe, un"
	line "cerdo capitalista,"
	cont "mantiene uno para"
	cont "exponer y el resto"
	cont "los tiene bajo"
	cont "llave."

	para "Se acabó."

	para "¿Conoces el labo-"
	line "ratorio de Isla"
	cont "Canela?"

	para "LLeva allí este"
	line "ámbar y dale una"
	cont "segunda vida al"
	cont "Pokémon en él"
	cont "encerrado"
	done

MuseoEmpleadoYes::
	text "Todos los Pokémon"
	line "revividos de"
	cont "fósiles aprenden"
	cont "el movimiento"
	cont "Poder Pasado."
	
	para "Nadie conoce el"
	line "motivo."
	done

SeguridadText::
	text "¡Por favor, ve"
	line "por el otro lado!"
	done

_ReceivedOldAmberText::
	text "¡<PLAYER> recibe"
	line "el ambar viejo!@"
	done

_Museum1FText_5c29e::
	text "¡No tienes sitio"
	line "para esto!"
	done

MuseumHikerText::
	text "¡Tengo 2"
	line "fósiles de"
	cont "unos Pokémon"
	cont "muy raros y"
	cont "prehistóricos!"

	para "Los conseguí"
	line "usando Golpe Roca."
	done

OldAmberText::
	text "¡Es un trozo de"
	line "ámbar transparente"
	cont "y de color oro!"

	para "Está apartado del"
	line "publico. Es mejor"
	cont "que no lo toque."
	done

Museum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 7
	warp_event 16,  7, PEWTER_CITY, 8
	warp_event 17,  7, PEWTER_CITY, 8
	warp_event  7,  7, MUSEUM_2F, 1

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event 12,  4, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumReceptionist, -1
	object_event  2,  4, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MuseumGramps, -1
	object_event  2,  7, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumPokefan, -1
	object_event 18,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeguridadScript, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, OldAmberScript, -1
	object_event 10,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MuseumHikerScript, -1
	object_event 17,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MuseumOldAmberGiveawayScript, -1
