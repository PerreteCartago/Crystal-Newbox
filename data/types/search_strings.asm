PokedexTypeSearchStrings:
; entries correspond with PokedexTypeSearchConversionTable (see data/types/search_types.asm)
	table_width POKEDEX_TYPE_STRING_LENGTH, PokedexTypeSearchStrings
	db "  ----  @"
	db " Normal @"
	db " Fuego  @"
	db " Agua   @"
	db " Planta @"
	db "Eléctric@"
	db " Hielo  @"
	db " Lucha  @"
	db " Veneno @"
	db " Tierra @"
	db "Volador @"
	db "Psíquico@"
	db " Bicho  @"
	db "  Roca  @"
	db "Fantasma@"
	db " Dragón @"
	db "Siniest.@"
	db " Acero  @"
	db " Hada   @"
	assert_table_length NUM_TYPES + 1
