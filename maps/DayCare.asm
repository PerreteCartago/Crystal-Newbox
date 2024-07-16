	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	endcallback

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareManText_GiveOddEgg
	promptbutton
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveOddEgg
	opentext
	writetext DayCareText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_DescribeOddEgg
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

Text_GrampsLookingForYou:
	text "El abuelo te"
	line "estaba buscando."
	done

Text_DayCareManTalksAboutEggTicket:
	text "Soy el Encargado"
	line "de la Guardería."

	para "Hay algo nuevo en"
	line "Ciudad Trigal"

	para "llamado Centro de"
	line "Cambio."

	para "Me dieron un"
	line "Ticket Huevo que"

	para "puede ser cambiado"
	line "por un Huevo Raro."

	para "Pero como tengo"
	line "una Guardería, no"

	para "lo necesito. Mejor"
	line "te lo quedas tú."
	done

DayCareManText_GiveOddEgg:
	text "Soy el Encargado"
	line "de la Guardería."

	para "¿Sabes algo acerca"
	line "de los Huevos?"

	para "He estado cuidando"
	line "Pokémon junto con"
	cont "mi esposa."

	para "¡Y hemos consegui-"
	line "do un Huevo!"

	para "¿A que es"
	line "increíble?"

	para "¿Qué? ¿Te gusta"
	line "este Huevo?"

	para "¡Entonces, "
	line "quédatelo!"
	done

DayCareText_ComeAgain:
	text "Vuelve cuando"
	line "quieras."
	done

DayCareText_GotOddEgg:
	text "¡<PLAYER> recibió"
	line "el Huevo Raro!"
	done

DayCareText_DescribeOddEgg:
	text "Lo encontré"
	line "mientras cuidaba"

	para "el Pokémon de"
	line "alguien."

	para "Pero el entrenador"
	line "no quiso el Huevo,"

	para "así que lo dejé"
	line "por aquí."
	done

DayCareText_PartyFull:
	text "No tienes sitio"
	line "para esto."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
