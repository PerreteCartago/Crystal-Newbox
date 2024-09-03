	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeSlotsMachineScript:
	random 6
	ifequal 0, OlivineCafeLuckySlotsMachineScript
	reanchormap
	setval FALSE
	special SlotMachine
	closetext
	end

OlivineCafeLuckySlotsMachineScript:
	reanchormap
	setval TRUE
	special SlotMachine
	closetext
	end

OlivineCafeMachineSailorScript:
	jumptextfaceplayer OlivineCafeMachineText

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeMachineText:
	text "Si quieres jugar"
	line "a la tragaperras"
	cont "necesitas fichas."

	para "Aquí no venden."

	para "Puedes comprar en"
	line "el Casino de"
	cont "Ciudad Trigal."
	done


OlivineCafeStrengthSailorText:
	text "¡Ja! ¡Tus Pokémon"
	line "parecen ser muy"
	cont "enclenques!"

	para "No tienen el poder"
	line "para desplazar"
	cont "rocas."

	para "Mira, ¡usa esto y"
	line "enséñales Fuerza!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "¡En el mar sólo"
	line "puedes confiar en"
	cont "ti mismo!"

	para "¡Y yo estoy en"
	line "plena forma!"
	done

OlivineCafeFishingGuruText:
	text "¡El menú del Café"
	line "Olivo está repleto"

	para "de buena comida"
	line "para fornidos"
	cont "Marineros!"
	done

OlivineCafeSailorText:
	text "Cuando estoy de"
	line "paso, siempre"

	para "visito el Café"
	line "Olivo."

	para "Todo lo del menú"
	line "me hace sentir más"

	para "fuerte. ¡No puedo"
	line "parar de comer!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 15, OLIVINE_CITY, 7
	warp_event  7, 15, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, OlivineCafeSlotsMachineScript
	bg_event 11,  1, BGEVENT_READ, OlivineCafeSlotsMachineScript

	def_object_events
	object_event 10, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event 15,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  9, 12, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
	object_event 13,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeMachineSailorScript, -1
