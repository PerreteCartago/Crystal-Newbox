	object_const_def
	const CERULEANPOKECENTER1F_NURSE
	const CERULEANPOKECENTER1F_SUPER_NERD
	const CERULEANPOKECENTER1F_GYM_GUIDE

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CeruleanPokecenter1FSuperNerdScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText

.mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText_Mobile

CeruleanPokecenter1FGymGuideScript:
	jumptextfaceplayer CeruleanPokecenter1FGymGuideText

CeruleanPokecenter1FSuperNerdText:
	text "En los combates yo"
	line "prefiero usar"

	para "Pokémon que he"
	line "entrenado, aunque"

	para "sean más débiles"
	line "que los Pokémon"
	cont "recién capturados."
	done

CeruleanPokecenter1FSuperNerdText_Mobile:
	text "¿Combates por"
	line "teléfono móvil?"

	para "Si el tiempo se"
	line "acaba durante la"

	para "lucha, la espera"
	line "para ver al"

	para "ganador es"
	line "desesperante."
	done

CeruleanPokecenter1FGymGuideText:
	text "El Magnetotren"
	line "viaja a unos"

	para "550 km/h. Puede"
	line "llevarte de"

	para "Kanto a Johto en"
	line "pocos minutos."

	para "Hace que sea muy"
	line "fácil ir a Johto."
	done


CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, CERULEAN_CITY, 4
	warp_event  6,  7, CERULEAN_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event 10,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FSuperNerdScript, -1
	object_event  2,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FGymGuideScript, -1
