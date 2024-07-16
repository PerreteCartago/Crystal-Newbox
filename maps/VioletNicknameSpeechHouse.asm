	object_const_def
	const VIOLETNICKNAMESPEECHHOUSE_TEACHER
	const VIOLETNICKNAMESPEECHHOUSE_LASS
	const VIOLETNICKNAMESPEECHHOUSE_BIRD

VioletNicknameSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletNicknameSpeechHouseTeacherScript:
	jumptextfaceplayer VioletNicknameSpeechHouseTeacherText

VioletNicknameSpeechHouseLassScript:
	jumptextfaceplayer VioletNicknameSpeechHouseLassText

VioletNicknameSpeechHouseBirdScript:
	faceplayer
	opentext
	writetext VioletNicknameSpeechHouseBirdText
	cry PIDGEY
	waitbutton
	closetext
	end

VioletNicknameSpeechHouseTeacherText:
	text "Usa los nombres"
	line "de sus comidas"
	cont "favoritas."

	para "Quiero decir,"
	line "como motes para"
	cont "sus Pokémon."
	done

VioletNicknameSpeechHouseLassText:
	text "¡A mi Pidgey le"
	line "llamo Fresita!"
	done

VioletNicknameSpeechHouseBirdText:
	text "Fresita: Pijji!"
	done

VioletNicknameSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 4
	warp_event  4,  7, VIOLET_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseTeacherScript, -1
	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseLassScript, -1
	object_event  5,  2, SPRITE_BIRD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletNicknameSpeechHouseBirdScript, -1
