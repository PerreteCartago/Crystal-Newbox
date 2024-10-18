	object_const_def

MonteMoonGrandeB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MonteMoonGrandeHiddenMoonStone:
	hiddenitem MOON_STONE, MONTE_MOON_GRANDE_HIDDEN_MOONSTONE

MonteMoonGrandeHiddenNugget2:
	hiddenitem NUGGET, MONTE_MOON_GRANDE_HIDDEN_NUGGET2


MonteMoonGrandeB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  3, MONTE_MOON_GRANDE_1F, 4
	warp_event  8, 23, MONTE_MOON_GRANDE_1F, 5
	warp_event 30, 13, MONTE_MOON_GRANDE_1F, 6
	warp_event 29,  1, MONTE_MOON_GRANDE_1F, 7
	warp_event 16, 26, MONTE_MOON_GRANDE_B2F, 1
	warp_event 22, 13, MONTE_MOON_GRANDE_B2F, 2
	warp_event  3, 25, MONTE_MOON_GRANDE_B2F, 3
	warp_event 25,  3, MONTE_MOON_GRANDE_B2F, 4

	def_coord_events

	def_bg_events
	bg_event  9, 13, BGEVENT_ITEM, MonteMoonGrandeHiddenMoonStone
	bg_event 28, 25, BGEVENT_ITEM, MonteMoonGrandeHiddenNugget2

	def_object_events
