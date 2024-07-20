DEF EARLSPOKEMONACADEMY_FRESH_WATER_PRICE EQU 200
DEF EARLSPOKEMONACADEMY_SODA_POP_PRICE    EQU 300
DEF EARLSPOKEMONACADEMY_LEMONADE_PRICE    EQU 350

	object_const_def
	const EARLSPOKEMONACADEMY_EARL
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScripts:
	def_scene_scripts

	def_callbacks

EarlVendingMachine:
	opentext
	writetext EarlVendingText
.Start:
	special PlaceMoneyTopRight
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	closetext
	end

.FreshWater:
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_FRESH_WATER_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem FRESH_WATER
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_FRESH_WATER_PRICE
	getitemname STRING_BUFFER_3, FRESH_WATER
	sjump .VendItem

.SodaPop:
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_SODA_POP_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SODA_POP
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_SODA_POP_PRICE
	getitemname STRING_BUFFER_3, SODA_POP
	sjump .VendItem

.Lemonade:
	checkmoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_LEMONADE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem LEMONADE
	iffalse .NotEnoughSpace
	takemoney YOUR_MONEY, GOLDENRODDEPTSTORE6F_LEMONADE_PRICE
	getitemname STRING_BUFFER_3, LEMONADE
	sjump .VendItem

.VendItem:
	pause 10
	playsound SFX_ENTER_DOOR
	writetext EarlClangText
	promptbutton
	itemnotify
	sjump .Start

.NotEnoughMoney:
	writetext EarlVendingNoMoneyText
	waitbutton
	sjump .Start

.NotEnoughSpace:
	writetext EarlVendingNoSpaceText
	waitbutton
	sjump .Start

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "Agua Fresca  ¥{d:EARLSPOKEMONACADEMY_FRESH_WATER_PRICE}@"
	db "Refresco     ¥{d:EARLSPOKEMONACADEMY_SODA_POP_PRICE}@"
	db "Limonada     ¥{d:EARLSPOKEMONACADEMY_LEMONADE_PRICE}@"
	db "Salir@"

AcademyEarl:
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalse .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse .Done
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse .Done
	writetext AcademyEarlTeachHowToRaiseWellText
	waitbutton
	closetext
	end

.Done:
	writetext AcademyEarlNoMoreToTeachText
	waitbutton
	closetext
	end

EarlsPokemonAcademyYoungster1Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster1Text

EarlsPokemonAcademyGameboyKid1Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid1Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID1, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid2Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID2, DOWN
	end

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "ENV@"
	db "PAR@"
	db "DOR@"
	db "QUE@"
	db "CON@"
	db "SALIR@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	closetext
	end

AcademyStickerMachine: ; unreferenced
	jumptext AcademyStickerMachineText

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

AcademyEarlSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

EarlVendingText:
	text "¡Una máquina"
	line "expendedora!"
	done

EarlClangText:
	text "¡Clang! ¡Salió"
	line "una lata de"
	cont "@"
	text_ram wStringBuffer3
	text "!"
	done

EarlVendingNoMoneyText:
	text "¡Uups! No tienes"
	line "bastante dinero."
	done

EarlVendingNoSpaceText:
	text "No hay sitio para"
	line "nada más."
	done

AcademyEarlIntroText:
	text "¡Soy yo, Primo!"

	para "¡Fantásticos son"
	line "los Pokémon!"

	para "¡A ti yo te ense-"
	line "ñaré a ser mejor!"

	para "¿Quieres saber"
	line "cómo ganar?"
	done

AcademyEarlTeachHowToWinText:
	text "¡Bien! ¡A ti yo"
	line "te enseñaré!"

	para "¡En combate, los"
	line "primeros Pokémon"
	cont "salen antes!"

	para "¡Quizá sea más"
	line "fácil si cambias"
	cont "el orden!"

	para "¿Quieres que te"
	line "cuente más cosas?"
	done

AcademyEarlTeachMoreText:
	text "¿Quieres saber"
	line "cómo educar bien"
	cont "a los Pokémon?"
	done

AcademyEarlTeachHowToRaiseWellText:
	text "¡Bien! ¡A ti yo"
	line "te enseñaré!"

	para "Si un Pokémon"
	line "sale al combate,"

	para "aunque brevemente,"
	line "gana puntos EXP."

	para "¡Pon arriba los"
	line "Pokémon débiles,"

	para "y cámbialos rápido"
	line "en el combate!"

	para "¡Así se harán más"
	line "fuertes los"
	cont "Pokémon débiles!"
	done

AcademyEarlNoMoreToTeachText:
	text "¡Oh! ¡Muy inteli-"
	line "gente eres! ¡Nada"
	cont "más quieres saber!"

	para "¡Genial en Pokémon"
	line "debes de ser!"
	done

EarlsPokemonAcademyYoungster1Text:
	text "Estoy tomando"
	line "apuntes de lo que"
	cont "dice el profesor."

	para "Y debería copiar"
	line "también lo escrito"
	cont "en la pizarra."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "He cambiado a mis"
	line "mejores Pokémon"
	cont "con mi compañero."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "¡El Pokémon que"
	line "he conseguido va"
	cont "equipado con algo!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "Si un Pokémon va"
	line "equipado con una"

	para "Baya, se curará él"
	line "solo en combate."

	para "Los Pokémon pueden"
	line "ir equipados con"
	cont "muchos objetos…"

	para "Es muy duro tomar"
	line "apuntes…"
	done

AcademyBlackboardText:
	text "La pizarra indica"
	line "cómo cambian de"

	para "estado los Pokémon"
	line "en combate."
	done

AcademyBlackboardText2:
; unused
	text "¿Qué tema quieres"
	line "leer?"
	done

AcademyPoisonText:
	text "Si un Pokémon es"
	line "envenenado,"
	cont "perderá PS."

	para "El envenenamiento"
	line "continúa tras el"

	para "combate y al"
	line "caminar seguirá"
	cont "perdiendo PS."

	para "Para curarlo, usa"
	line "Antídoto."
	done

AcademyParalysisText:
	text "La parálisis baja"
	line "la Velocidad y"

	para "puede impedir el"
	line "movimiento."

	para "Permanece tras el"
	line "combate, así que"
	cont "usa Antiparaliz."
	done

AcademySleepText:
	text "Si tu Pokémon"
	line "se queda dormido"

	para "no podrá realizar"
	line "ningún movimiento."

	para "Un Pokémon dormido"
	line "no se despierta"
	cont "tras el combate."

	para "Despiértalo con"
	line "Despertar."
	done

AcademyBurnText:
	text "Las quemaduras"
	line "consumen PS,"

	para "reducen el poder"
	line "del ataque y"

	para "permanecen tras"
	line "el combate."

	para "Usa Antiquemar"
	line "como cura."
	done

AcademyFreezeText:
	text "Si tu Pokémon está"
	line "congelado, no"
	cont "podrá hacer nada."

	para "Seguirá congelado"
	line "tras el combate."

	para "Descongélalo con"
	line "Antihielo."
	done

AcademyNotebookText:
	text "Es el cuaderno de"
	line "este niño…"

	para "Captura Pokémon"
	line "usando <POKE>Ball."

	para "Tu equipo puede"
	line "tener hasta seis."

	para "¿Sigues leyendo?"
	done

AcademyNotebookText1:
	text "Antes de lanzar la"
	line "<POKE>BALL, debes"
	cont "debilitarlo."

	para "Atrapar un Pokémon"
	line "quemado o envene-"
	cont "nado es mucho más"
	cont "fácil."

	para "¿Sigues leyendo?"
	done

AcademyNotebookText2:
	text "Algunos ataques"
	line "causan confusión."

	para "Un Pokémon confuso"
	line "puede atacarse a"
	cont "sí mismo."

	para "Retirarlo del"
	line "combate, eliminará"
	cont "su confusión."

	para "¿Sigues leyendo?"
	done

AcademyNotebookText3:
	text "Quienes atrapan"
	line "Pokémon y los usan"

	para "para luchar son"
	line "entrenadores."

	para "Su misión es ir"
	line "a los Gimnasios"

	para "y vencer a otros"
	line "entrenadores."

	para "La hoja siguiente"
	line "está… ¡vacía!"

	para "Niño: Eh, eh…"

	para "No he escrito nada"
	line "más…"
	done

AcademyStickerMachineText:
	text "¡Esta supermáquina"
	line "imprime los datos"
	cont "como pegatinas!"
	done

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  6,  2, BGEVENT_UP, EarlVendingMachine
	bg_event  7,  2, BGEVENT_UP, EarlVendingMachine

	def_object_events
	object_event  4,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
