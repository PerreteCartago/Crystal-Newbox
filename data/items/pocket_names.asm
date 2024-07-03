ItemPocketNames:
; entries correspond to item type constants
	table_width 2, ItemPocketNames
	dw .Item
	dw .Key
	dw .Ball
	dw .TM
	dw .Berry
	assert_table_length NUM_ITEM_TYPES

.Item: db "Objetos@"
.Key:  db "Obj. Clave@"
.Ball: db "Balls@"
.TM:   db "Tubo MT@"
.Berry: db "Caja Baya@"
