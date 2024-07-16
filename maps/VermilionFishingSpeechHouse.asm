	object_const_def
	const VERMILIONFISHINGSPEECHHOUSE_FISHING_GURU

VermilionFishingSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FishingDude:
	jumptextfaceplayer FishingDudeText

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText

FishingDudesHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

FishingDudeText:
	text "Soy el Tío Pesca-"
	line "dor, el mayor de"

	para "los Hermanos"
	line "Pescadores."

	para "¿Conoces al Guru"
	line "Pescador del Lago"
	cont "de la Furia?"

	para "Sueña con ver el"
	line "Magikarp más"
	cont "grande del mundo."

	para "Si no te importa,"
	line "¿podrías mostrarle"

	para "todos los Magikarp"
	line "que captures?"

	para "Quién sabe,"
	line "podrías capturar"

	para "el Magikarp de sus"
	line "sueños."
	done

FishingDudesHousePhotoText:
	text "Es una foto de"
	line "gente pescando…"

	para "Lo están pasando"
	line "muy bien…"
	done

VermilionFishingSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingDude, -1
