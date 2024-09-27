	object_const_def
	const VIRIDIANCITY_GRAMPS1
	const VIRIDIANCITY_GRAMPS2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_YOUNGSTER

ViridianCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCityCoffeeGramps:
	faceplayer
	opentext
	writetext ViridianCityCoffeeGrampsQuestionText
	yesorno
	iffalse .no
	writetext ViridianCityCoffeeGrampsBelievedText
	waitbutton
	closetext
	end

.no:
	writetext ViridianCityCoffeeGrampsDoubtedText
	waitbutton
	closetext
	end

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .BlueReturned
	writetext ViridianCityGrampsNearGymText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianCityGrampsNearGymBlueReturnedText
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungsterText

ViridianCitySign:
	jumptext ViridianCitySignText

ViridianGymSign:
	jumptext ViridianGymSignText

ViridianCityWelcomeSign:
	jumptext ViridianCityWelcomeSignText

TrainerHouseSign:
	jumptext TrainerHouseSignText

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript

ViridianCityCoffeeGrampsQuestionText:
	text "¡Hola! ¡Me acabo"
	line "de tomar un café"

	para "doble y estoy como"
	line "una moto!"

	para "¡Tengo que hablar"
	line "con alguien, así"
	cont "que te toca a ti!"

	para "Puede que ahora no"
	line "lo parezca, pero"

	para "yo era un experto"
	line "atrapando Pokémon."

	para "¿Me crees?"
	done

ViridianCityCoffeeGrampsBelievedText:
	text "Muy bien. Sí, yo"
	line "era algo fuera de"

	para "lo normal. ¡Déjame"
	line "contártelo!"
	done

ViridianCityCoffeeGrampsDoubtedText:
	text "¿Qué? ¡Serás"
	line "insolente!"

	para "Si fuera un poco"
	line "más joven, te"

	para "enseñaría un par"
	line "de cosas. ¡Vaya!"
	done

ViridianCityGrampsNearGymText:
	text "Este Gimnasio no"
	line "ha tenido Líder"
	cont "hasta hace poco."

	para "Un joven de"
	line "Pueblo Paleta se"

	para "convirtió en Líder"
	line "pero viaja mucho."
	done

ViridianCityGrampsNearGymBlueReturnedText:
	text "¿Vas a enfrentarte"
	line "al Líder?"

	para "¡Buena suerte! ¡La"
	line "vas a necesitar!"
	done

ViridianCityDreamEaterFisherText:
	text "¡Qué sueño!"

	para "Me habré quedado"
	line "dormido al sol."

	para "He soñado que un"
	line "Drowzee se comía"
	cont "mi sueño."

	para "Es raro, ¿verdad?"

	para "¿Eh?"
	line "¿Qué es esto?"

	para "¿De dónde ha"
	line "salido esta Mt?"

	para "¡Esto es muy"
	line "misterioso! Aquí"
	cont "tienes esta Mt."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "MT42 contiene"
	line "Come Sueños…"

	para "¡Zzzzz…!"
	done

ViridianCityYoungsterText:
	text "Dicen que en el"
	line "suelo del Bosque"

	para "Verde hay muchos"
	line "objetos."
	done

ViridianCitySignText:
	text "Ciudad Verde"

	para "El paraíso"
	line "eternamente verde"
	done

ViridianGymSignText:
	text "Líder del Gimnasio"
	line "Pokémon de Ciudad"
	cont "Verde:…"

	para "El resto del texto"
	line "es ilegible…"
	done

ViridianCityWelcomeSignText:
	text "Ésta es la Ciudad"
	line "Verde, la entrada"
	cont "a la Meseta Añil"
	done

TrainerHouseSignText:
	text "Casa del"
	line "Entrenador"

	para "Club de Mejores"
	line "Entrenadores"
	done

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1
	warp_event 13, 15, VIRIDIAN_SCHOOL_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 19, BGEVENT_READ, ViridianCitySign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 19,  1, BGEVENT_READ, ViridianCityWelcomeSign
	bg_event 21, 15, BGEVENT_READ, TrainerHouseSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign

	def_object_events
	object_event 18,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityCoffeeGramps, -1
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 17, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
