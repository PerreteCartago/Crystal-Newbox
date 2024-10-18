	object_const_def
	const ROUTE21_SWIMMER_GIRL
	const ROUTE21_SWIMMER_GUY
	const ROUTE21_FISHER1
	const ROUTE21_FISHER2
	const ROUTE21_FISHER3
	const ROUTE21_FISHER4
	const ROUTE21_FISHER5
	const ROUTE21_SWIMMER_GUY1
	const ROUTE21_SWIMMER_GUY2
	const ROUTE21_SWIMMER_GUY3
	const ROUTE21_SWIMMER_GUY4
	const ROUTE21_STANDING_BALDING_GUY

Route21_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmermSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermSethAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfNikki:
	trainer SWIMMERF, NIKKI, EVENT_BEAT_SWIMMERF_NIKKI, SwimmerfNikkiSeenText, SwimmerfNikkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfNikkiAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end

TrainerEmilio:
	trainer BALD, EMILIO, EVENT_BEAT_EMILIO, EmilioSeenText, EmilioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EmilioAfterBattleText
	waitbutton
	closetext
	end

TrainerNarciso:
	trainer FISHER, NARCISO, EVENT_BEAT_EMILIO, NarcisoSeenText, NarcisoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NarcisoAfterBattleText
	waitbutton
	closetext
	end

TrainerClaudio:
	trainer FISHER, CLAUDIO, EVENT_BEAT_CLAUDIO, ClaudioSeenText, ClaudioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ClaudioAfterBattleText
	waitbutton
	closetext
	end

TrainerGuido:
	trainer FISHER, GUIDO, EVENT_BEAT_GUIDO, GuidoSeenText, GuidoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuidoAfterBattleText
	waitbutton
	closetext
	end

TrainerRonaldo:
	trainer FISHER, RONALDO, EVENT_BEAT_RONALDO, RonaldoSeenText, RonaldoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RonaldoAfterBattleText
	waitbutton
	closetext
	end

TrainerRoman:
	trainer SWIMMERM, ROMAN, EVENT_BEAT_ROMAN, RomanSeenText, RomanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RomanAfterBattleText
	waitbutton
	closetext
	end

TrainerJeromo:
	trainer SWIMMERM, JEROMO, EVENT_BEAT_JEROMO, JeromoSeenText, JeromoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JeromoAfterBattleText
	waitbutton
	closetext
	end

TrainerOmar:
	trainer SWIMMERM, OMAR, EVENT_BEAT_OMAR, OmarSeenText, OmarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OmarAfterBattleText
	waitbutton
	closetext
	end

TrainerSergio:
	trainer SWIMMERM, OMAR, EVENT_BEAT_SERGIO, SergioSeenText, SergioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SergioAfterBattleText
	waitbutton
	closetext
	end

RonaldoSeenText:
	text "¿Quieres saber si"
	line "los peces pican?"
	done

RonaldoBeatenText:
	text "¡Dang!"
	done

RonaldoAfterBattleText::
	text "¡No puedo pescar"
	line "nada bueno!"
	done

GuidoSeenText::
	text "¡Tengo una gran"
	line "red! ¿Quieres"
	cont "probarla?"
	done

GuidoBeatenText::
	text "¡MALDICIÓN!"
	line "¡MAGIKARP!"
	done

GuidoAfterBattleText::
	text "¡Parece que sólo"
	line "pesco Magikarp!"
	done

SergioSeenText::
	text "¡El mar limpia mi"
	line "cuerpo y mi alma!"
	done

SergioBeatenText::
	text "¡Aaayyy!"
	done

SergioAfterBattleText::
	text "¡A mí también me"
	line "gusta la montaña!"
	done

EmilioSeenText::
	text "¿Acaso no puedo"
	line "nadar?"
	done

EmilioBeatenText::
	text "He sido"
	line "humillado."
	done

EmilioAfterBattleText::
	text "La ruta hasta Isla"
	line "Canela es larga."

	para "Estoy cogiendo"
	cont "fuerzas."
	done

OmarSeenText::
	text "¡Pesqué a todos"
	line "mis Pokémon"
	cont "en el mar!"
	done

OmarBeatenText::
	text "¡¡Buzo!!"
	line "¡Fuera de juego!"
	done

OmarAfterBattleText::
	text "¿Dónde atrapaste"
	line "a tus Pokémon?"
	done

JeromoSeenText::
	text "¡Ahora estoy en"
	line "un encuentro de"
	cont "triatlón!"
	done

JeromoBeatenText::
	text_start
	line "(Suspiro)..."
	cont "(Suspiro)..."
	done

JeromoAfterBattleText::
	text "¡Me ganaste!"
	line "¡Pero aún falta"
	cont "el ciclismo y"
	cont "la maratón!"
	done

RomanSeenText::
	text "¡Ah! ¡Siente el"
	line "sol y el viento!"
	done

RomanBeatenText::
	text "¡Auuu!"
	line "¡He perdido!"
	done

RomanAfterBattleText::
	text "¡Estoy totalmente"
	line "quemado!"
	done

ClaudioSeenText::
	text "¡Eh! ¡No asustes"
	line "a los peces!"
	done

ClaudioBeatenText::
	text_start
	line "¡Perdona! ¡No"
	cont "lo hice adrede!"
	done

ClaudioAfterBattleText:
	text "¡Estaba enfadado"
	line "porque no he"
	cont "pescado nada!"
	done

NarcisoSeenText::
	text "¡Quédate conmigo"
	line "hasta que lo"
	cont "consiga!"
	done

NarcisoBeatenText:
	text_start
	line "Así matamos"
	cont "el tiempo."
	done

NarcisoAfterBattleText::
	text "¡Alto! ¡Algo ha"
	line "picado! ¡Sí!"
	done

SwimmermSethSeenText:
	text "Tierra a la vista."
	line "¡Sigamos adelante!"
	done

SwimmermSethBeatenText:
	text "¡Glup…!"
	done

SwimmermSethAfterBattleText:
	text "Ese chico tan"
	line "arrogante estaba"

	para "en el volcán de"
	line "Isla Canela."
	done

SwimmerfNikkiSeenText:
	text "¡Si gano, tienes"
	line "que ayudarme con"
	cont "la loción solar!"
	done

SwimmerfNikkiBeatenText:
	text "No quiero"
	line "quemarme…"
	done

SwimmerfNikkiAfterBattleText:
	text "Debería tener"
	line "cuidado con las"

	para "manchas causadas"
	line "por el sol."
	done

FisherArnoldSeenText:
	text "Estoy aburrido de"
	line "pescar. ¡Luchemos!"
	done

FisherArnoldBeatenText:
	text "Qué fracaso…"
	done

FisherArnoldAfterBattleText:
	text "Voy a volver a"
	line "pescar…"
	done

Route21_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 24, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfNikki, -1
	object_event  3, 43, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSwimmermSeth, -1
	object_event 14, 56, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherArnold, -1
	object_event  8,  5, SPRITE_BALDING_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerEmilio, -1
	object_event  4, 75, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SWIM_WANDER, 0, 3, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerRoman, -1
	object_event 15, 76, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SWIM_WANDER, 3, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerJeromo, -1
	object_event 16, 35, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SWIM_WANDER, 2, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerOmar, -1
	object_event  5, 55, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SWIM_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerSergio, -1
	object_event  2, 65, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerNarciso, -1
	object_event  4, 64, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerClaudio, -1
	object_event 17, 57, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerGuido, -1
	object_event  5, 24, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerRonaldo, -1
