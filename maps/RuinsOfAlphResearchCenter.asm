	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphResearchCenterNoopScene,        SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	scene_script RuinsOfAlphResearchCenterGetUnownDexScene, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphResearchCenterScientistCallback

RuinsOfAlphResearchCenterNoopScene:
	end

RuinsOfAlphResearchCenterGetUnownDexScene:
	sdefer RuinsOfAlphResearchCenterGetUnownDexScript
	end

RuinsOfAlphResearchCenterScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

RuinsOfAlphResearchCenterGetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"
	text "¡Ya está!"

	para "He modificado tu"
	line "#DEX."

	para "Añadí una #DEX"
	line "opcional para"

	para "guardar los datos"
	line "de UNOWN."

	para "Los registra en el"
	line "orden en que son"
	cont "atrapados."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "Mejorada #DEX"
	line "de <PLAYER>."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "Todos los UNOWN"
	line "que atrapes serán"
	cont "registrados aquí."

	para "A ver cuántos"
	line "tipos existen."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "¿Atrapaste a todos"
	line "los UNOWN?"

	para "¡Es un gran logro!"

	para "He ajustado la"
	line "impresora para"
	cont "UNOWN."

	para "Puedes usarla"
	line "cuando quieras."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "Las RUINAS datan"
	line "de hace unos"
	cont "1.500 años."

	para "Pero ignoramos"
	line "por qué o por"

	para "quién fueron"
	line "construidas."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "¿Cuántos tipos de"
	line "#MON habrá en"
	cont "las RUINAS?"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "¿Hay #MON"
	line "en las RUINAS?"

	para "¡Qué noticia"
	line "tan increíble!"

	para "Tendremos que"
	line "investigarlo."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
	text "Nuestra investiga-"
	line "ción, con tu"

	para "ayuda, nos está"
	line "reportando infor-"
	cont "mación acerca de"
	cont "las RUINAS."

	para "Las RUINAS parecen"
	line "haber sido cons-"
	cont "truidas como un"
	cont "hábitat para"
	cont "#MON."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "En las paredes de"
	line "las RUINAS hay"

	para "unos dibujos muy"
	line "raros."

	para "Son la clave para"
	line "resolver el"

	para "misterio de las"
	line "RUINAS."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "¿Los #MON"
	line "raros que viste"
	cont "en las RUINAS?"

	para "Son muy parecidos"
	line "a los dibujos de"

	para "esas paredes de"
	line "ahí."

	para "¡Mmm…!"

	para "Debe de significar"
	line "que hay muchos"
	cont "tipos diferentes…"
	done

RuinsOfAlphResearchCenterUnusedText1: ; unreferenced
	text "We think something"
	line "caused the cryptic"

	para "patterns to appear"
	line "in the RUINS."

	para "We've focused our"
	line "studies on that."
	done

RuinsOfAlphResearchCenterUnusedText2: ; unreferenced
	text "According to my"
	line "research…"

	para "Those mysterious"
	line "patterns appeared"

	para "when the #COM"
	line "CENTER was built."

	para "It must mean that"
	line "radio waves have"

	para "some sort of a"
	line "link…"
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
	text "¿Por qué estos"
	line "antiguos dibujos"

	para "aparecen ahora en"
	line "el muro?"

	para "Esto es cada vez"
	line "más misterioso…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINAS ALFA"

	para "10 Años"
	line "de Exploración"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Nombre de #MON"
	line "misterioso: UNOWN"

	para "Encontrados un"
	line "total de 26 tipos."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "Parece que esto"
	line "aún no funciona."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "Se puede imprimir"
	line "UNOWN."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the RESEARCH"

	para "CENTER'S founder,"
	line "PROF.SILKTREE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "Es una foto del"
	line "fundador del"

	para "CENTRO de INVES-"
	line "TIGACIÓN, el"
	cont "PROF. SILKTREE."
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
