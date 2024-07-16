BattleTowerTrainers:
; The trainer class is not used in Crystal 1.0 due to a bug.
; Instead, the sixth character in the trainer's name is used.
; See BattleTowerText in engine/events/battle_tower/trainer_text.asm.
	table_width (NAME_LENGTH - 1) + 1, BattleTowerTrainers
	; name, class
	db "Hanson@@@@", FISHER
	db "Soya@@@@@@", POKEMANIAC
	db "Masu@@@@@@", GUITARIST
	db "Nicky@@@@@", SCIENTIST
	db "Olson@@@@@", POKEFANM
	db "Zabora@@@@", LASS
	db "Ruperto@@@", YOUNGSTER
	db "Alejo@@@@@", HIKER
	db "Kawakami@@", TEACHER
	db "Voldo@@@@@", POKEFANM
	db "Kim@@@@@@@", KIMONO_GIRL
	db "Pan@@@@@@@", BOARDER
	db "Díaz@@@@@@", PICNICKER
	db "Erick@@@@@", BIKER
	db "Fair@@@@@@", JUGGLER
	db "Muffy@@@@@", POKEFANF
	db "Juni@@@@@@", FIREBREATHER
	db "Jávea@@@@@", SWIMMERF
	db "Kaufman@@@", SWIMMERM
	db "Casta@@@@@", SKIER
	db "Junior@@@@", CAMPER
	assert_table_length BATTLETOWER_NUM_UNIQUE_MON
; The following can only be sampled in Crystal 1.1.
	db "Ocón@@@@@@", GENTLEMAN
	db "Frost@@@@@", BEAUTY
	db "Mors@@@@@@", SUPER_NERD
	db "Yufune@@@@", BLACKBELT_T
	db "Raya@@@@@@", COOLTRAINERF
	db "Rodri@@@@@", OFFICER
	db "Santiago@@", PSYCHIC_T
	db "Cascabel@@", POKEFANM
	db "Thurm@@@@@", SCIENTIST
	db "Valentina@", BEAUTY
	db "Wagner@@@@", CAMPER
	db "Yates@@@@@", BIRD_KEEPER
	db "López@@@@@", PICNICKER
	db "Bar@@@@@@@", POKEMANIAC
	db "Mori@@@@@@", SCIENTIST
	db "Kondo@@@@@", SAGE
	db "Mini@@@@@@", SCHOOLBOY
	db "Pérez@@@@@", FISHER
	db "Ari@@@@@@@", KIMONO_GIRL
	db "Camp@@@@@@", PSYCHIC_T
	db "Freeman@@@", CAMPER
	db "Gertru@@@@", LASS
	db "Diner@@@@@", GENTLEMAN
	db "Jackson@@@", POKEFANF
	db "Cobu@@@@@@", POKEMANIAC
	db "León@@@@@@", YOUNGSTER
	db "Marina@@@@", TEACHER
	db "Willy@@@@@", SAILOR
	db "Arrás@@@@@", BLACKBELT_T
	db "Ojén@@@@@@", SUPER_NERD
	db "Sonia@@@@@", COOLTRAINERF
	db "Aguas@@@@@", SWIMMERM
	db "Seres@@@@@", BIRD_KEEPER
	db "Roc@@@@@@@", BOARDER
	db "Turner@@@@", LASS
	db "Vicent@@@@", OFFICER
	db "Vandy@@@@@", SKIER
	db "Rango@@@@@", SCHOOLBOY
	db "Camino@@@@", SWIMMERF
	db "Juanito@@@", YOUNGSTER
	db "Adán@@@@@@", GUITARIST
	db "Satos@@@@@", BUG_CATCHER
	db "Tajir@@@@@", BUG_CATCHER
	db "Vaca@@@@@@", POKEMANIAC
	db "Colín@@@@@", SCIENTIST
	db "Mort@@@@@@", SUPER_NERD
	db "Ramona@@@@", SWIMMERF
	db "Ruli@@@@@@", BIKER
	db "Ígneo@@@@@", FIREBREATHER
	assert_table_length BATTLETOWER_NUM_UNIQUE_TRAINERS
