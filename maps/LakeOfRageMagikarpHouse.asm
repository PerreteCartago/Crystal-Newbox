	object_const_def
	const LAKEOFRAGEMAGIKARPHOUSE_FISHING_GURU

LakeOfRageMagikarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftrue .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue .ExplainedHistory
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ExplainedHistory:
	writetext MagikarpLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXER
	iffalse .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	writetext MagikarpLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpLengthRaterText_NotMagikarp
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagikarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagikarpHouseUnusedRecordText

MagikarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagikarpLengthRaterText_LakeOfRageHistory:
	text "El Lago de la"
	line "Furia es un cráter"

	para "obra de violentos"
	line "Gyarados."

	para "El cráter se llenó"
	line "de agua de lluvia"

	para "y se formó el"
	line "Lago."

	para "Esta historia la"
	line "contó por primera"

	para "vez el tatarabuelo"
	line "de mi abuelo."

	para "Antes se podían"
	line "pescar Magikarp"
	cont "en el lago, pero…"

	para "No entiendo lo que"
	line "ocurre ahora."
	done

MagikarpLengthRaterText_MenInBlack:
	text "En el Lago pasan"
	line "cosas raras desde"

	para "que llegaron esos"
	line "hombres de negro."
	done

MagikarpLengthRaterText_WorldsLargestMagikarp:
	text "La normalidad ha"
	line "vuelto al Lago de"

	para "la Furia. Vuelve a"
	line "haber Magikarp."

	para "Quizá se cumpla mi"
	line "sueño de ver al"

	para "Magikarp más"
	line "grande del mundo."

	para "¿Tienes una caña?"
	line "Si tienes una,"
	cont "ayúdame por favor."
	done

MagikarpLengthRaterText_YouHaveAMagikarp:
	text "¡Ah, tienes un"
	line "Magikarp! A ver lo"

	para "grande que es ese"
	line "bebé."
	done

MagikarpLengthRaterText_Memento:
	text "¡Uau! ¡Éste es"
	line "impresionante!"

	para "¡Me quito el"
	line "sombrero ante ti!"

	para "¡Toma esto como"
	line "recuerdo!"
	done

MagikarpLengthRaterText_Bonus:
	text "Lo importante es"
	line "el récord. ¡Piensa"

	para "en él como una"
	line "bonificación!"
	done

MagikarpLengthRaterText_TooShort:
	text "¡Uau! ¡Éste es"
	line "impresionante!"

	para "Ojalá no tuviera"
	line "que decirlo, pero"

	para "he visto uno más"
	line "grande antes."
	done

MagikarpLengthRaterText_NotMagikarp:
	text "¿Qué? ¡Eso no es"
	line "un Magikarp!"
	done

MagikarpLengthRaterText_Refused:
	text "¿No tienes ninguno"
	line "bueno que"

	para "enseñarme? Quizá"
	line "la próxima vez."
	done

LakeOfRageMagikarpHouseUnusedRecordText:
	text "RÉCORD ACTUAL"

	para "@"
	text_ram wStringBuffer3
	text " cm, atrapado"
	line "por @"
	text_ram wStringBuffer4
	text ".@"
	text_end

LakeOfRageMagikarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagikarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagikarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagikarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1
