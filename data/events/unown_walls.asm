MACRO unownwall
	for n, CHARLEN(\1)
		DEF x = CHARSUB(\1, n + 1)
		if x == "-"
			db $64
		elif x >= "Y"
			db 2 * (x - "Y") + $60
		elif x >= "Q"
			db 2 * (x - "Q") + $40
		elif x >= "I"
			db 2 * (x - "I") + $20
		else
			db 2 * (x - "A")
		endc
	endr
	db -1 ; end
ENDM

UnownWalls:
; UNOWNWORDS_ESCAPE
	; db $0e, $48, $20, $06, $00, -1
	unownwall "H", "U", "I", "D", "A"
; UNOWNWORDS_LIGHT
	; db $64, $26, $48, $62, $64, -1
	unownwall "-", "L", "U", "Z", "-"
; UNOWNWORDS_WATER
	; db $00, $0c, $48, $00, -1
	unownwall "A", "G", "U", "A"
; UNOWNWORDS_HO_OH
	; db $0e, $2c, $64, $2c, $0e, -1
	unownwall "HO-OH"

MenuHeaders_UnownWalls:
; UNOWNWORDS_ESCAPE
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
; UNOWNWORDS_LIGHT
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
; UNOWNWORDS_WATER
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 4, 14, 9
; UNOWNWORDS_HO_OH
	db MENU_BACKUP_TILES ; flags
	menu_coords 4, 4, 15, 9
