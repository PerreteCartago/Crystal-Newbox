	object_const_def
	const MT_MOON_POKECENTER_1F_NURSE

MtMoonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpScript:
	faceplayer
	checkevent EVENT_GOT_ROUTE_4_WEST_MAGIKARP
	iftrue .AlreadyGotMagikarp
	opentext
	writetext _MagikarpSalesmanText1
	yesorno
	iffalse .MagikarpRefused
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NoMoney
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFullMagikarp
	getmonname STRING_BUFFER_3, MAGIKARP
	writetext ReceivedMagikarpText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke MAGIKARP, 5, BERRY
	setevent EVENT_GOT_ROUTE_4_WEST_MAGIKARP
	closetext
	end

.AlreadyGotMagikarp:
	opentext
	writetext _MagikarpSalesmanText2
	waitbutton
	closetext
	end

.PartyFullMagikarp:
	opentext
	writetext _MagikarpSalesmanNoRoomText
	waitbutton
	closetext
	end

 .NoMoney:
 	writetext _MagikarpSalesmanNoMoneyText
 	waitbutton
 	closetext
 	end

 .MagikarpRefused:
 	writetext _MagikarpSalesmanNoText
 	waitbutton
 	closetext
 	end

ReceivedMagikarpText:
	text "¡<PLAYER> recibió"
	line "un @"
	text_ram wStringBuffer3
	text "!"
	done

MtMoonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

MtMoonPokecenter1FCamperScript:
	jumptextfaceplayer MtMoonPokecenter1FCamperText

MtMoonPokecenter1FFirebreatherScript:
	jumptextfaceplayer MtMoonPokecenter1FFirebreatherText

MtMoonPokecenter1FGirlScript:
	jumptextfaceplayer MtMoonPokecenter1FGirlText

MtMoonPokecenter1FCamperText::
	text "Tengo 6 Pokéball"
	line "en mi cinturón."

	para "Voy a tope."

	para "Ojalá pudiera"
	line "llevar más."
	done

MtMoonPokecenter1FFirebreatherText:
	text "Yo no usé destello"
	line "para atravesar la"
	cont "cueva."

	para "Mis Pokémon fuego"
	line "iluminaron la"
	cont "cueva para mi."
	done

MtMoonPokecenter1FGirlText:
	text "Me encanta ver"
	line "a los Clefairy"
	cont "bailando."
	done

_MagikarpSalesmanText1::
	text "HOMBRE: ¡Hola!"
	line "¡Tengo una oferta"
	cont "sólo para ti!"

	para "¡Te daré un"
	line "MAGIKARP por"
	cont "sólo 500¥!"
	cont "¿Qué dices?"
	done

_MagikarpSalesmanNoText::
	text "¿No? ¡Sólo lo"
	line "estoy haciendo"
	cont "como un favor!"
	done

_MagikarpSalesmanNoRoomText::
	text "¡No tendrías"
	line "espacio para"
	cont "llevarlo!"
	done

_MagikarpSalesmanNoMoneyText::
	text "¡Necesitarás más"
	line "dinero que eso!"
	done

_MagikarpSalesmanText2::
	text "HOMBRE:¡No acepto"
	line "devoluciones!"
	done

MtMoonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, ROUTE_4_WEST, 2
	warp_event  6,  7, ROUTE_4_WEST, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FNurseScript, -1
	object_event  9,  4, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FCamperScript, -1
	object_event 10,  5, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FFirebreatherScript, -1
	object_event  1,  3, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FGirlScript, -1
	object_event  4,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpScript, -1
