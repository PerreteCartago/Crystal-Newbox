	object_const_def
	const SPROUTTOWER1F_SAGE1
	const SPROUTTOWER1F_SAGE2
	const SPROUTTOWER1F_GRANNY
	const SPROUTTOWER1F_TEACHER
	const SPROUTTOWER1F_SAGE3
	const SPROUTTOWER1F_POKE_BALL

SproutTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

SproutTower1FSage1Script:
	jumptextfaceplayer SproutTower1FSage1Text

SproutTower1FSage2Script:
	jumptextfaceplayer SproutTower1FSage2Text

SproutTower1FGrannyScript:
	jumptextfaceplayer SproutTower1FGrannyText

SproutTower1FTeacherScript:
	jumptextfaceplayer SproutTower1FTeacherText

TrainerSageChow:
	trainer SAGE, CHOW, EVENT_BEAT_SAGE_CHOW, SageChowSeenText, SageChowBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageChowAfterBattleText
	waitbutton
	closetext
	end

SproutTower1FParlyzHeal:
	itemball PARLYZ_HEAL

SproutTower1FStatue:
	jumptext SproutTower1FStatueText

SageChowSeenText:
	text "Montamos guardia"
	line "en esta torre."

	para "Así expresamos"
	line "nuestra gratitud a"
	cont "todos los Pokémon."
	done

SageChowBeatenText:
	text "Gra… Gracias."
	done

SageChowAfterBattleText:
	text "Todos los seres"
	line "vivos cooperan"
	cont "para sobrevivir."

	para "Deberíamos estar"
	line "agradecidos."
	done

SproutTower1FSage1Text:
	text "Obtendras una MO"
	line "si llegas hasta"
	cont "arriba."
	done

SproutTower1FSage2Text:
	text "La Torre"
	line "Bellsprout fue"

	para "construida para"
	line "entrenar Pokémon."
	done

SproutTower1FGrannyText:
	text "Una majestuosa"
	line "torre de 100 me-"
	cont "tros de altura."

	para "Actualmente viven"
	line "aquí entrenadores"
	cont "Pokémon retirados."
	done

SproutTower1FTeacherText:
	text "Este pilar no deja"
	line "de moverse."

	para "El edificio esta"
	line "en ruinas."
	
	para "Mandan los entrena-"
	line "dores mas seniles"
	cont "aquí a morir"

	para "Es el gobierno de"
	line "Johto."

	para "Por eso no pago"
	line "impuestos."
	done

SproutTower1FStatueText:
	text "Una estatua Pokémon"
	line "muy desgastada."

	para "Debería ser verde"
	line "y blanca."
	done

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, VIOLET_CITY, 7
	warp_event 10, 15, VIOLET_CITY, 7
	warp_event  6,  4, SPROUT_TOWER_2F, 1
	warp_event  2,  6, SPROUT_TOWER_2F, 2
	warp_event 17,  3, SPROUT_TOWER_2F, 3

	def_coord_events

	def_bg_events
	bg_event  7, 15, BGEVENT_READ, SproutTower1FStatue
	bg_event 12, 15, BGEVENT_READ, SproutTower1FStatue

	def_object_events
	object_event  7,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage1Script, -1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage2Script, -1
	object_event 11, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FGrannyScript, -1
	object_event  9,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FTeacherScript, -1
	object_event  3,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageChow, -1
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower1FParlyzHeal, EVENT_SPROUT_TOWER_1F_PARLYZ_HEAL
