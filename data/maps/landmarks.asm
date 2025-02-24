MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName ; 0
	landmark 124, 100, NewBarkTownName ; 1
	landmark 108, 100, Route29Name ; 2
	landmark  92, 100, CherrygroveCityName; 3
	landmark  92,  76, Route30Name ; 4
	landmark  96,  60, Route31Name ; 5
	landmark  76,  60, VioletCityName ; 6
	landmark  76,  56, SproutTowerName ; 7
	landmark  76,  92, Route32Name ; 8
	landmark  68,  76, RuinsOfAlphName ; 9
	landmark  76, 124, UnionCaveName ; 0a
	landmark  68, 124, Route33Name ; 0b
	landmark  60, 124, AzaleaTownName ; 0c
	landmark  64, 120, SlowpokeWellName ; 0d
	landmark  44, 124, IlexForestName ; 0e
	landmark  44, 108, Route34Name ; 0f
	landmark  44,  92, GoldenrodCityName ; 10
	landmark  40,  88, RadioTowerName ; 11
	landmark  44,  76, Route35Name ; 12
	landmark  44,  60, NationalParkName ; 13
	landmark  52,  60, Route36Name ; 14
	landmark  60,  52, Route37Name ; 15
	landmark  60,  44, EcruteakCityName ; 16
	landmark  64,  40, TinTowerName ; 17
	landmark  56,  40, BurnedTowerName
	landmark  44,  44, Route38Name
	landmark  28,  44, Route39Name
	landmark  28,  60, OlivineCityName
	landmark  32,  64, LighthouseName
	landmark  20,  52, BattleTowerName
	landmark  20,  68, Route40Name
	landmark  20,  92, WhirlIslandsName
	landmark  20, 100, Route41Name
	landmark  12, 100, CianwoodCityName
	landmark   4,  84, CianwoodCave
	landmark  84,  44, Route42Name
	landmark  76,  44, MtMortarName
	landmark  92,  44, MahoganyTownName
	landmark  92,  36, Route43Name
	landmark  92,  28, LakeOfRageName
	landmark 104,  44, Route44Name
	landmark 110,  36, IcePathName
	landmark 116,  60, BlackthornCityName
	landmark 116,  36, DragonsDenName
	landmark 116,  64, Route45Name
	landmark 100,  86, DarkCaveName
	landmark 108,  88, Route46Name
	landmark 148, 100, Route27Name
	landmark 156, 100, TohjoFallsName
	landmark 148,  68, Route28Name
	landmark 132,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  48,  62, ViridianForestName
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
	landmark  94,  52, CeruleanCaveName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 100,  60, Route5Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 130, PokemonMansionName
	landmark  52, 120, Route21Name
	landmark  36,  76, Route22Name
	landmark  12,  84, Route26Name
	landmark  12,  52, VictoryRoadName
	landmark  12,  44, Route23Name
	landmark  12,  36, IndigoPlateauName
	landmark   4,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "Pueblo<BSP>Primavera@"
CherrygroveCityName: db "Ciudad<BSP>Cerezo@"
VioletCityName:      db "Ciudad<BSP>Malva@"
AzaleaTownName:      db "Pueblo<BSP>Azalea@"
GoldenrodCityName:   db "Ciudad<BSP>Trigal@"
EcruteakCityName:    db "Ciudad<BSP>Iris@"
OlivineCityName:     db "Ciudad<BSP>Olivo@"
CianwoodCityName:    db "Ciudad<BSP>Orquídea@"
CianwoodCave:        db "Cueva<BSP>Cascada@"
MahoganyTownName:    db "Pueblo<BSP>Caoba@"
BlackthornCityName:  db "Ciudad<BSP>Endrino@"
LakeOfRageName:      db "Lago de<BSP>la furia@"
SilverCaveName:      db "Cueva<BSP>plateada@"
SproutTowerName:     db "Torre<BSP>Bellsprout@"
RuinsOfAlphName:     db "Ruinas<BSP>Alfa@"
UnionCaveName:       db "Cueva<BSP>Unión@"
SlowpokeWellName:    db "Pozo<BSP>Slowpoke@"
RadioTowerName:      db "Torre<BSP>Radio@"
PowerPlantName:      db "Central<BSP>Energía@"
NationalParkName:    db "Parque<BSP>Nacional@"
TinTowerName:        db "Torre<BSP>Hojalata@"
LighthouseName:      db "Faro@"
WhirlIslandsName:    db "Islas<BSP>Remolino@"
MtMortarName:        db "Monte<BSP>Mortero@"
DragonsDenName:      db "Guarida<BSP>Dragón@"
IcePathName:         db "Ruta<BSP>helada@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "Pueblo<BSP>Paleta@"
ViridianCityName:    db "Ciudad<BSP>Verde@"
PewterCityName:      db "Ciudad<BSP>Plateada@"
CeruleanCityName:    db "Ciudad<BSP>Celeste@"
LavenderTownName:    db "Pueblo<BSP>Lavanda@"
VermilionCityName:   db "Ciudad<BSP>Carmín@"
CeladonCityName:     db "Ciudad<BSP>Azulona@"
SaffronCityName:     db "Ciudad<BSP>Azafrán@"
FuchsiaCityName:     db "Ciudad<BSP>Fucsia@"
CinnabarIslandName:  db "Isla<BSP>Canela@"
IndigoPlateauName:   db "Meseta<BSP>Añil@"
VictoryRoadName:     db "Calle<BSP>Victoria@"
MtMoonName:          db "Monte<BSP>Moon@"
RockTunnelName:      db "Tunel<BSP>Roca@"
LavRadioTowerName:   db "Torre<BSP>Lavanda@"
SilphCoName:         db "SILPH<BSP>S.A.@" ; unreferenced
SafariZoneName:      db "Zona<BSP>Safari@" ; unreferenced
SeafoamIslandsName:  db "Islas<BSP>Espuma@"
PokemonMansionName:  db "Mansión<BSP><POKE>mon@"
CeruleanCaveName:    db "Mazmorra<BSP>Rara@"
Route1Name:          db "Ruta 1@"
Route2Name:          db "Ruta 2@"
Route3Name:          db "Ruta 3@"
Route4Name:          db "Ruta 4@"
Route5Name:          db "Ruta 5@"
Route6Name:          db "Ruta 6@"
Route7Name:          db "Ruta 7@"
Route8Name:          db "Ruta 8@"
Route9Name:          db "Ruta 9@"
Route10Name:         db "Ruta 10@"
Route11Name:         db "Ruta 11@"
Route12Name:         db "Ruta 12@"
Route13Name:         db "Ruta 13@"
Route14Name:         db "Ruta 14@"
Route15Name:         db "Ruta 15@"
Route16Name:         db "Ruta 16@"
Route17Name:         db "Ruta 17@"
Route18Name:         db "Ruta 18@"
Route19Name:         db "Ruta 19@"
Route20Name:         db "Ruta 20@"
Route21Name:         db "Ruta 21@"
Route22Name:         db "Ruta 22@"
Route23Name:         db "Ruta 23@"
Route24Name:         db "Ruta 24@"
Route25Name:         db "Ruta 25@"
Route26Name:         db "Ruta 26@"
Route27Name:         db "Ruta 27@"
Route28Name:         db "Ruta 28@"
Route29Name:         db "Ruta 29@"
Route30Name:         db "Ruta 30@"
Route31Name:         db "Ruta 31@"
Route32Name:         db "Ruta 32@"
Route33Name:         db "Ruta 33@"
Route34Name:         db "Ruta 34@"
Route35Name:         db "Ruta 35@"
Route36Name:         db "Ruta 36@"
Route37Name:         db "Ruta 37@"
Route38Name:         db "Ruta 38@"
Route39Name:         db "Ruta 39@"
Route40Name:         db "Ruta 40@"
Route41Name:         db "Ruta 41@"
Route42Name:         db "Ruta 42@"
Route43Name:         db "Ruta 43@"
Route44Name:         db "Ruta 44@"
Route45Name:         db "Ruta 45@"
Route46Name:         db "Ruta 46@"
DarkCaveName:        db "Cueva<BSP>Oscura@"
IlexForestName:      db "Encinar@"
BurnedTowerName:     db "Torre<BSP>Quemada@"
FastShipName:        db "Ferry@"
ViridianForestName:  db "Bosque<BSP>Verde@"
DiglettsCaveName:    db "Cueva<BSP>Diglett@"
TohjoFallsName:      db "Cataratas<BSP>Tohjo@"
UndergroundName:     db "Subterráneo@"
BattleTowerName:     db "Torre<BSP>Batalla@"
SpecialMapName:      db "Especial@"
