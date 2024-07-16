	object_const_def
	const DANCETHEATER_KIMONO_GIRL1
	const DANCETHEATER_KIMONO_GIRL2
	const DANCETHEATER_KIMONO_GIRL3
	const DANCETHEATER_KIMONO_GIRL4
	const DANCETHEATER_KIMONO_GIRL5
	const DANCETHEATER_GENTLEMAN
	const DANCETHEATER_RHYDON
	const DANCETHEATER_COOLTRAINER_M
	const DANCETHEATER_GRANNY

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext SurfGuyLadGiftText
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext SurfGuyLassieGiftText
	waitbutton
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext SurfGuySurfExplanationText
	waitbutton
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetext
	end

DanceTheaterRhydon:
	opentext
	writetext RhydonText
	cry RHYDON
	waitbutton
	closetext
	end

DanceTheaterCooltrainerMScript:
	jumptextfaceplayer DanceTheaterCooltrainerMText

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText

DanceTheaterFancyPanel:
	jumptext DanceTheaterFancyPanelText

KimonoGirlNaokoSeenText:
	text "Tus Pokémon son"
	line "encantadores."
	cont "¿Cómo luchan?"
	done

KimonoGirlNaokoBeatenText:
	text "¡Oh! ¡Eres muy"
	line "fuerte!"
	done

KimonoGirlNaokoAfterBattleText:
	text "Me ha gustado el"
	line "combate. Espero"
	cont "volver a verte."
	done

KimonoGirlSayoSeenText:
	text "Yo siempre bailo"
	line "con mis Pokémon."

	para "Y también los"
	line "entreno, claro."
	done

KimonoGirlSayoBeatenText:
	text "¡Estuve cerca!"
	line "Por poco te venzo."
	done

KimonoGirlSayoAfterBattleText:
	text "El ritmo es muy"
	line "importante para la"

	para "danza y para los"
	line "Pokémon."
	done

KimonoGirlZukiSeenText:
	text "¿Te gusta mi"
	line "pasador?"

	para "¡Ah! ¿Un combate"
	line "Pokémon?"
	done

KimonoGirlZukiBeatenText:
	text "No me queda ningún"
	line "Pokémon…"
	done

KimonoGirlZukiAfterBattleText:
	text "Cada mes pongo una"
	line "flor nueva en mi"
	cont "pasador."
	done

KimonoGirlKuniSeenText:
	text "¡Oh! ¡Eres tan"
	line "guay!"
	cont "¿Quieres luchar?"
	done

KimonoGirlKuniBeatenText:
	text "Eres más fuerte de"
	line "lo que pareces."
	done

KimonoGirlKuniAfterBattleText:
	text "He entrenado mucho"
	line "y creía que tenía"

	para "posibilidades,"
	line "pero no."
	done

KimonoGirlMikiSeenText:
	text "¿Te gusta cómo"
	line "bailo? También"

	para "soy hábil con los"
	line "Pokémon."
	done

KimonoGirlMikiBeatenText:
	text "¡Oh! ¡Tú también"
	line "eres genial!"
	done

KimonoGirlMikiAfterBattleText:
	text "Sigo bailando"
	line "porque hay gente a"

	para "la que le gusta lo"
	line "que hago."

	para "Mis Pokémon me"
	line "animan."
	done

SurfGuyNeverLeftAScratchText:
	text "Las Chicas Kimono"
	line "no sólo bailan."

	para "También son"
	line "extraordinarias"
	cont "con los Pokémon."

	para "Yo siempre las"
	line "desafío pero nunca"

	para "les he hecho ni un"
	line "rasguño…"
	done

SurfGuyLadGiftText:
	text "¡Chaval! Si vences"
	line "a todas las Chicas"

	para "Kimono, te daré un"
	line "regalo."
	done

SurfGuyLassieGiftText:
	text "Chica, si vences a"
	line "todas las Chicas"

	para "Kimono, te daré un"
	line "regalo."
	done

SurfGuyLikeADanceText:
	text "Verte luchar ha"
	line "sido como ver una"
	cont "danza."

	para "¡Ha sido un"
	line "extraño combate!"

	para "Me gustaría darte"
	line "esto. Adelante,"
	cont "¡tuyo es!"
	done

SurfGuySurfExplanationText:
	text "Es Surf."

	para "Un movimiento que"
	line "permite nadar a"
	cont "los Pokémon."
	done

SurfGuyElegantKimonoGirlsText:
	text "Ojalá mis Pokémon"
	line "fueran tan"

	para "elegantes como las"
	line "Chicas Kimono…"
	done

RhydonText:
	text "Rhydon: ¡Rhydo,"
	line "rhydo!"
	done

DanceTheaterCooltrainerMText:
	text "Ese hombre siempre"
	line "va con su Rhydon."

	para "Dice que quiere un"
	line "Pokémon que baile"
	cont "y haga Surf."

	para "¿Intenta crear un"
	line "Pokémon que haga"

	para "natación"
	line "sincronizada?"
	done

DanceTheaterGrannyText:
	text "Las Chicas Kimono"
	line "son tan guapas…"

	para "Pero tienen que"
	line "entrenarse mucho."

	para "Y deben aprender"
	line "los distintos"

	para "bailes antes de"
	line "actuar."

	para "Pero si te gusta"
	line "algo, todo es"
	cont "posible."
	done

DanceTheaterFancyPanelText:
	text "Es un elegante"
	line "panel decorado con"
	cont "flores."
	done

DanceTheater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhydon, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1
