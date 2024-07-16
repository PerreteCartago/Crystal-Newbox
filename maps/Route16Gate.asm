	object_const_def
	const ROUTE16GATE_OFFICER

Route16Gate_MapScripts:
	def_scene_scripts
	scene_script Route16GateNoopScene, SCENE_ROUTE16GATE_BICYCLE_CHECK

	def_callbacks

Route16GateNoopScene:
	end

Route16GateOfficerScript:
	jumptextfaceplayer Route16GateOfficerText

Route16GateBicycleCheck:
	checkitem BICYCLE
	iffalse .NoBicycle
	end

.NoBicycle:
	showemote EMOTE_SHOCK, ROUTE16GATE_OFFICER, 15
	turnobject PLAYER, UP
	opentext
	writetext Route16GateCannotPassText
	waitbutton
	closetext
	applymovement PLAYER, Route16GateCannotPassMovement
	end

Route16GateCannotPassMovement:
	step RIGHT
	turn_head LEFT
	step_end

Route16GateOfficerText:
	text "Aquí empieza el"
	line "Camino de Bicis."

	para "Es todo cuesta"
	line "abajo. Es muy"
	cont "emocionante."

	para "Es una sensación"
	line "que no se"

	para "experimenta en"
	line "barco o en tren."
	done

Route16GateCannotPassText:
	text "¡Eh! ¡Alto!"

	para "No puedes pasar"
	line "por el Camino de"

	para "Bicis si no vas"
	line "en Bicicleta."
	done


Route16Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_16, 4
	warp_event  0,  5, ROUTE_16, 5
	warp_event  9,  4, ROUTE_16, 2
	warp_event  9,  5, ROUTE_16, 3

	def_coord_events
	coord_event  5,  4, SCENE_ROUTE16GATE_BICYCLE_CHECK, Route16GateBicycleCheck
	coord_event  5,  5, SCENE_ROUTE16GATE_BICYCLE_CHECK, Route16GateBicycleCheck

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route16GateOfficerScript, -1
