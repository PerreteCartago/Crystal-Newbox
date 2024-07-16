	object_const_def
	const SPROUTTOWER2F_SAGE1
	const SPROUTTOWER2F_SAGE2
	const SPROUTTOWER2F_POKE_BALL

SproutTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageNico:
	trainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageNicoAfterBattleText
	waitbutton
	closetext
	end

TrainerSageEdmond:
	trainer SAGE, EDMOND, EVENT_BEAT_SAGE_EDMOND, SageEdmondSeenText, SageEdmondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageEdmondAfterBattleText
	waitbutton
	closetext
	end

SproutTower2FStatue:
	jumptext SproutTower2FStatueText

SproutTower2FXAccuracy:
	itemball X_ACCURACY

SageNicoSeenText:
	text "Por mucho que"
	line "luchemos, la torre"
	cont "seguirá en pie."
	done

SageNicoBeatenText:
	text "Luché con fuerza,"
	line "pero estoy débil."
	done

SageNicoAfterBattleText:
	text "La columna"
	line "flexible protege"

	para "la torre hasta"
	line "de los terremotos."
	done

SageEdmondSeenText:
	text "Muévete como las"
	line "hojas al viento…"
	done

SageEdmondBeatenText:
	text "¡Oh, estoy débil!"
	done

SageEdmondAfterBattleText:
	text "Quería imitar los"
	line "suaves movimientos"

	para "de Bellsprout para"
	line "pelear…"

	para "Pero no me entrené"
	line "lo suficiente."
	done

SproutTower2FStatueText:
	text "Una estatua Pokémon"
	line "muy desgastada."

	para "Debería ser verde"
	line "y blanca."
	done

SproutTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  4, SPROUT_TOWER_1F, 3
	warp_event  2,  6, SPROUT_TOWER_1F, 4
	warp_event 17,  3, SPROUT_TOWER_1F, 5
	warp_event 10, 14, SPROUT_TOWER_3F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 15, BGEVENT_READ, SproutTower2FStatue

	def_object_events
	object_event 12,  3, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageNico, -1
	object_event  9, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSageEdmond, -1
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower2FXAccuracy, EVENT_SPROUT_TOWER_2F_X_ACCURACY
