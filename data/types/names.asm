TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2, TypeNames

	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
	dw Bird
	dw Bug
	dw Ghost
	dw Steel
	assert_table_length UNUSED_TYPES

rept UNUSED_TYPES_END - UNUSED_TYPES - 1 ; discount CURSE_TYPE
	dw Normal
endr
	dw CurseType
	assert_table_length UNUSED_TYPES_END

	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	dw Fairy
	assert_table_length TYPES_END

Normal:    db "Normal@"
Fighting:  db "Lucha@"
Flying:    db "Volador@"
Poison:    db "Veneno@"
CurseType: db "¿¿??@"
Fire:      db "Fuego@"
Water:     db "Agua@"
Grass:     db "Planta@"
Electric:  db "Eléctrico@"
Psychic:   db "Psíquico@"
Ice:       db "Hielo@"
Ground:    db "Tierra@"
Rock:      db "Roca@"
Bird:      db "@"
Bug:       db "Bicho@"
Ghost:     db "Fantasma@"
Steel:     db "Acero@"
Dragon:    db "Dragón@"
Dark:      db "Siniest.@"
Fairy:     db "Hada.@"
