MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MANKEY,     "Cachas@@@@@", $37, $66, GOLD_BERRY,   37460, "Miki@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "Rocky@@@@@@", $96, $66, BITTER_BERRY, 48926, "Kevin@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "Volti@@@@@@", $98, $88, PRZCUREBERRY, 29189, "Falcán@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  DODRIO,     "Vidri@@@@@@", $77, $66, SMOKE_BALL,   00283, "Emy@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    XATU,       "Oma@@@@@@@@", $96, $86, MYSTERYBERRY, 15616, "Gabi@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CHANSEY,    AERODACTYL, "Aero@@@@@@@", $96, $66, GOLD_BERRY,   26491, "Norma@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, DUGTRIO,    MAGNETON,   "Tato@@@@@@@", $96, $66, METAL_COAT,   50082, "Greppi@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      SPEAROW,    FARFETCH_D, "Farfi@@@@@@", $96, $86, STICK,        12987, "Carmela@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, JIGGLYPUFF, MR__MIME,   "Mimi@@@@@@@", $37, $66, TWISTEDSPOON, 01985, "Rúteo@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     CUBONE,     MACHOKE,    "Ricky@@@@@@", $98, $88, GOLD_BERRY,   38971, "Ulises@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      NIDORAN_F,  NIDORAN_M,  "Nidrana@@@@", $96, $66, GOLD_BERRY,   63184, "Quica@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    NIDORAN_M,  NIDORAN_F,  "Nidrán@@@@@", $37, $66, SMOKE_BALL,   13637, "Onzano@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, RHYDON,     KANGASKHAN, "Onori@@@@@@", $37, $66, KINGS_ROCK,   32063, "Jonán@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_NEWBIE,    GOLDUCK,    LICKITUNG,  "Licikitito@", $37, $66, LEFTOVERS,    01239, "Diocho@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     PERSIAN,    TAUROS,     "Ratón@@@@@@", $37, $66, GOLD_BERRY,   23891, "Santi@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, RAICHU,     ELECTRODE,  "Bolichi@@@@", $37, $66, GOLD_BERRY,   50298, "Canel@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, PONYTA,     SEEL,       "Seelin@@@@@", $37, $66, GOLD_BERRY,   09853, "Goyo@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, VENONAT,    TANGELA,    "Tangelito@@", $37, $66, STARDUST,     60042, "Dulce@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      POLIWHIRL,  JYNX,       "Morritos@@@", $96, $66, GOLD_BERRY,   63184, "Goiz@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      GLOOM,      RAPIDASH,   "Rapid@@@@@@", $96, $66, MYSTERYBERRY, 16156, "Goiz@@@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES