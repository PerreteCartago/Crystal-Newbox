	object_const_def
	const CINNABARISLAND_BLUE

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

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "¿Quién eres tú?"

	para "Es evidente que"
	line "entrenas Pokémon…"

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
	line "no, ahora no tengo"
	cont "ganas de luchar."

	para "Echa un vistazo a"
	line "tu alrededor…"

	para "Un volcán entra en"
	line "erupción y una"

	para "ciudad entera"
	line "desaparece."

	para "En Pokémon se"
	line "puede ganar o"

	para "perder, pero si se"
	line "tuercen las cosas"

	para "se puede perder"
	line "enseguida."

	para "…"

	para "Así son las cosas…"

	para "Sin embargo, sigo"
	line "siendo entrenador."

	para "Y encontrarme con"
	line "un rival fuerte me"
	cont "anima a luchar."

	para "Si quieres luchar"
	line "contra mí, ven al"

	para "Gimnasio de la"
	line "Ciudad Verde."

	para "Y aceptaré tu"
	line "desafío…"
	done

CinnabarIslandGymSignText:
	text "Aquí hay una nota…"

	para "El Gumnasio de"
	line "Isla Canela se ha"

	para "trasladado a Islas"
	line "Espuma."

	para "Blaine"
	done

CinnabarIslandSignText:
	text "Isla Canela"

	para "La abrasadora isla"
	line "del ardiente deseo"
	done


CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event  9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event  7,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	def_object_events
	object_event  9,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
