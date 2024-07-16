MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 128, 100, Route29Name
	landmark 100, 100, CherrygroveCityName
	landmark 100,  80, Route30Name
	landmark  96,  60, Route31Name
	landmark  84,  60, VioletCityName
	landmark  85,  58, SproutTowerName
	landmark  84,  92, Route32Name
	landmark  76,  76, RuinsOfAlphName
	landmark  84, 124, UnionCaveName
	landmark  82, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  70, 122, SlowpokeWellName
	landmark  52, 120, IlexForestName
	landmark  52, 112, Route34Name
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  52,  76, Route35Name
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  52,  44, Route38Name
	landmark  36,  48, Route39Name
	landmark  36,  60, OlivineCityName
	landmark  38,  62, LighthouseName
	landmark  28,  56, BattleTowerName
	landmark  28,  64, Route40Name
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 130,  38, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 112,  72, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 148,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
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
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  28,  92, Route26Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "Pueblo Primavera@"
CherrygroveCityName: db "Ciudad cerezo@"
VioletCityName:      db "Ciudad Malva@"
AzaleaTownName:      db "Pueblo Azalea@"
GoldenrodCityName:   db "Ciudad Trigal@"
EcruteakCityName:    db "Ciudad Iris@"
OlivineCityName:     db "Ciudad Olivo@"
CianwoodCityName:    db "Ciudad Orquídea@"
MahoganyTownName:    db "Pueblo Caoba"
BlackthornCityName:  db "Ciudad Endrino"
LakeOfRageName:      db "Lago de la furia@"
SilverCaveName:      db "Cueva plateada@"
SproutTowerName:     db "Torre Bellsprout@"
RuinsOfAlphName:     db "Ruinas Alfa@"
UnionCaveName:       db "Cueva Unión@"
SlowpokeWellName:    db "Pozo Slowpoke@"
RadioTowerName:      db "Torre Radio@"
PowerPlantName:      db "Central Energía@"
NationalParkName:    db "Parque Nacional@"
TinTowerName:        db "Torre Hojalata@"
LighthouseName:      db "Faro@"
WhirlIslandsName:    db "Islas Remolino@"
MtMortarName:        db "Monte Mortero@"
DragonsDenName:      db "Guarida Dragón@"
IcePathName:         db "Ruta helada@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "Pueblo Paleta@"
ViridianCityName:    db "Ciudad Verde@"
PewterCityName:      db "Ciudad Plateada@"
CeruleanCityName:    db "Ciudad Celeste@"
LavenderTownName:    db "Pueblo Lavanda@"
VermilionCityName:   db "Ciudad Carmín@"
CeladonCityName:     db "Ciudad Azulona@"
SaffronCityName:     db "Ciudad Azafrán@"
FuchsiaCityName:     db "Ciudad Fucsia@"
CinnabarIslandName:  db "Isla Canela@"
IndigoPlateauName:   db "Meseta Añil@"
VictoryRoadName:     db "Calle Victoria@"
MtMoonName:          db "Monte Moon@"
RockTunnelName:      db "Tunel Roca@"
LavRadioTowerName:   db "Torre Lavanda@"
SilphCoName:         db "SILPH S.A.@" ; unreferenced
SafariZoneName:      db "Zona Safari@" ; unreferenced
SeafoamIslandsName:  db "Islas Espuma@"
PokemonMansionName:  db "Mansión <POKE>mon@" ; unreferenced
CeruleanCaveName:    db "Cueva Celeste@" ; unreferenced
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
DarkCaveName:        db "Cueva Oscura@"
IlexForestName:      db "Encinar@"
BurnedTowerName:     db "Torre Quemada@"
FastShipName:        db "Ferry@"
ViridianForestName:  db "Bosque Verde@" ; unreferenced
DiglettsCaveName:    db "Cueva Diglett@"
TohjoFallsName:      db "Cataratas Tohjo@"
UndergroundName:     db "Subterráneo@"
BattleTowerName:     db "Torre Batalla@"
SpecialMapName:      db "Especial@"
