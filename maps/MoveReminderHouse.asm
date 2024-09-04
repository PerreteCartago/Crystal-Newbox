	object_const_def
	const MOVEDELETERSHOUSE_GRAMPS

MoveReminderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MoveReminder:
	faceplayer
	opentext
	special MoveReminder
	waitbutton
	closetext
	end

MoveReminderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 9
	warp_event  3,  7, BLACKTHORN_CITY, 9

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminder, -1