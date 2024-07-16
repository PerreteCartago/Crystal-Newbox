	object_const_def
	const LAKEOFRAGE_LANCE
	const LAKEOFRAGE_GRAMPS
	const LAKEOFRAGE_SUPER_NERD1
	const LAKEOFRAGE_COOLTRAINER_F1
	const LAKEOFRAGE_FISHER1
	const LAKEOFRAGE_FISHER2
	const LAKEOFRAGE_COOLTRAINER_M
	const LAKEOFRAGE_COOLTRAINER_F2
	const LAKEOFRAGE_GYARADOS
	const LAKEOFRAGE_WESLEY
	const LAKEOFRAGE_POKE_BALL1
	const LAKEOFRAGE_POKE_BALL2

LakeOfRage_MapScripts:
	def_scene_scripts
	scene_script LakeOfRageNoop1Scene ; unusable
	scene_script LakeOfRageNoop2Scene ; unusable

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LakeOfRageFlypointCallback
	callback MAPCALLBACK_OBJECTS, LakeOfRageWesleyCallback

LakeOfRageNoop1Scene:
	end

LakeOfRageNoop2Scene:
	end

LakeOfRageFlypointCallback:
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	endcallback

LakeOfRageWesleyCallback:
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .WesleyAppears
	disappear LAKEOFRAGE_WESLEY
	endcallback

.WesleyAppears:
	appear LAKEOFRAGE_WESLEY
	endcallback

LakeOfRageLanceScript:
	checkevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	iftrue .AskAgainForHelp
	opentext
	writetext LakeOfRageLanceForcedToEvolveText
	promptbutton
	faceplayer
	writetext LakeOfRageLanceIntroText
	yesorno
	iffalse .RefusedToHelp
.AgreedToHelp:
	writetext LakeOfRageLanceRadioSignalText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement LAKEOFRAGE_LANCE, LakeOfRageLanceTeleportIntoSkyMovement
	disappear LAKEOFRAGE_LANCE
	clearevent EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	setevent EVENT_DECIDED_TO_HELP_LANCE
	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS
	end

.RefusedToHelp:
	writetext LakeOfRageLanceRefusedText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	end

.AskAgainForHelp:
	faceplayer
	opentext
	writetext LakeOfRageLanceAskHelpText
	yesorno
	iffalse .RefusedToHelp
	sjump .AgreedToHelp

RedGyarados:
	opentext
	writetext LakeOfRageGyaradosCryText
	pause 15
	cry GYARADOS
	closetext
	loadwildmon GYARADOS, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear LAKEOFRAGE_GYARADOS
.NotBeaten:
	reloadmapafterbattle
	opentext
	giveitem RED_SCALE
	waitsfx
	writetext LakeOfRageGotRedScaleText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setscene 0 ; Lake of Rage does not have a scene variable
	appear LAKEOFRAGE_LANCE
	end

LakeOfRageGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	writetext LakeOfRageGrampsText
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext LakeOfRageGrampsText_ClearedRocketHideout
	waitbutton
	closetext
	end

LakeOfRageSuperNerdScript:
	jumptextfaceplayer LakeOfRageSuperNerdText

LakeOfRageCooltrainerFScript:
	jumptextfaceplayer LakeOfRageCooltrainerFText

LakeOfRageSign:
	jumptext LakeOfRageSignText

MagikarpHouseSignScript:
	opentext
	writetext FishingGurusHouseSignText
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .MagikarpLengthRecord
	waitbutton
	closetext
	end

.MagikarpLengthRecord:
	promptbutton
	special MagikarpHouseSign
	closetext
	end

TrainerFisherAndre:
	trainer FISHER, ANDRE, EVENT_BEAT_FISHER_ANDRE, FisherAndreSeenText, FisherAndreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherAndreAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherRaymond:
	trainer FISHER, RAYMOND, EVENT_BEAT_FISHER_RAYMOND, FisherRaymondSeenText, FisherRaymondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRaymondAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAaron:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CooltrainermAaronSeenText, CooltrainermAaronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAaronAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLois:
	trainer COOLTRAINERF, LOIS, EVENT_BEAT_COOLTRAINERF_LOIS, CooltrainerfLoisSeenText, CooltrainerfLoisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLoisAfterBattleText
	waitbutton
	closetext
	end

WesleyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	iftrue WesleyWednesdayScript
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, WesleyNotWednesdayScript
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iftrue .MetWesley
	writetext MeetWesleyText
	promptbutton
	setevent EVENT_MET_WESLEY_OF_WEDNESDAY
.MetWesley:
	writetext WesleyGivesGiftText
	promptbutton
	verbosegiveitem BLACKBELT_I
	iffalse WesleyDoneScript
	setevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	writetext WesleyGaveGiftText
	waitbutton
	closetext
	end

WesleyWednesdayScript:
	writetext WesleyWednesdayText
	waitbutton
WesleyDoneScript:
	closetext
	end

WesleyNotWednesdayScript:
	writetext WesleyNotWednesdayText
	waitbutton
	closetext
	end

LakeOfRageElixer:
	itemball ELIXER

LakeOfRageTMDetect:
	itemball TM_DETECT

LakeOfRageHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_LAKE_OF_RAGE_HIDDEN_FULL_RESTORE

LakeOfRageHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_LAKE_OF_RAGE_HIDDEN_RARE_CANDY

LakeOfRageHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_LAKE_OF_RAGE_HIDDEN_MAX_POTION

LakeOfRageLanceTeleportIntoSkyMovement:
	teleport_from
	step_end

LakeOfRageLanceForcedToEvolveText:
	text "Este Lago está"
	line "lleno de Gyarados…"

	para "Así que los"
	line "Magikarp deben ha-"
	cont "ber evolucionado."
	done

LakeOfRageLanceIntroText:
	text "¿Viniste por los"
	line "rumores?"

	para "¿Eres <PLAYER>?"
	line "Me llamo Lance y"

	para "soy entrenador"
	line "como tú."

	para "Oí rumores y por"
	line "eso vine a"
	cont "investigar…"

	para "Te vi luchar"
	line "antes, <PLAY_G>."

	para "Creo que tienes"
	line "una habilidad"
	cont "considerable."

	para "Si no te importa,"
	line "¿podrías ayudarme"
	cont "a investigar?"
	done

LakeOfRageLanceRadioSignalText:
	text "Lance: ¡Excelente!"

	para "Parece que los"
	line "Magikarp del Lago"

	para "están siendo"
	line "forzados a"
	cont "evolucionar."

	para "Un misterioso"
	line "programa de radio"

	para "que viene de Caoba"
	line "tiene la culpa."

	para "Te estaré esperan-"
	line "do, <PLAY_G>."
	done

LakeOfRageLanceRefusedText:
	text "¡Oh…! Si"
	line "cambias de opinión"

	para "agradecería tu"
	line "ayuda."
	done

LakeOfRageLanceAskHelpText:
	text "Lance: ¿Qué?"
	line "¿Me vas a ayudar?"
	done

LakeOfRageGyaradosCryText:
	text "Gyarados: ¡Gyaraa!"
	done

LakeOfRageGotRedScaleText:
	text "<PLAYER> obtuvo una"
	line "Escama Roja."
	done

LakeOfRageGrampsText:
	text "¡Los Gyarados"
	line "están enfadados!"

	para "¡Mal presagio!"
	done

LakeOfRageGrampsText_ClearedRocketHideout:
	text "¡Ajá! ¡Los"
	line "Magikarp pican!"
	done

LakeOfRageSuperNerdText:
	text "Dicen que este"
	line "lago fue obra de"

	para "violentos"
	line "Gyarados."

	para "Me pregunto si eso"
	line "estará relacionado"

	para "con su aparición"
	line "masiva."
	done

LakeOfRageCooltrainerFText:
	text "¿Me han engañado"
	line "mis ojos? He visto"

	para "un Gyarados rojo"
	line "en el Lago…"

	para "Yo pensaba que los"
	line "Gyarados eran"
	cont "azules."
	done

FisherAndreSeenText:
	text "¡Déjame luchar con"
	line "el Pokémon que"
	cont "acabo de atrapar!"
	done

FisherAndreBeatenText:
	text "Puede que sea un"
	line "pescador experto,"

	para "pero soy un mal"
	line "entrenador…"
	done

FisherAndreAfterBattleText:
	text "¡No perderé como"
	line "pescador! Me paso"

	para "el día capturando"
	line "Pokémon."
	done

FisherRaymondSeenText:
	text "Haga lo que haga,"
	line "siempre capturo"

	para "los mismos"
	line "Pokémon…"
	done

FisherRaymondBeatenText:
	text "Mi caña se ha"
	line "enredado…"
	done

FisherRaymondAfterBattleText:
	text "¿Por qué no atrapo"
	line "buenos Pokémon?"
	done

CooltrainermAaronSeenText:
	text "Si un entrenador"
	line "se encuentra con"

	para "otro entrenador,"
	line "debe desafiarle."

	para "Ése es nuestro"
	line "destino."
	done

CooltrainermAaronBeatenText:
	text "¡Uauu…!"
	line "Buen combate."
	done

CooltrainermAaronAfterBattleText:
	text "Los Pokémon y su"
	line "entrenador se"

	para "hacen más fuertes"
	line "cuanto más luchan."
	done

CooltrainerfLoisSeenText:
	text "¿Qué ocurrió con"
	line "el Gyarados rojo?"

	para "¿Se ha ido?"

	para "¡Maldición! ¿He"
	line "venido para nada?"

	para "Ya sé."
	line "¡Luchemos!"
	done

CooltrainerfLoisBeatenText:
	text "¡Muy bien!"
	done

CooltrainerfLoisAfterBattleText:
	text "Pensándolo bien,"
	line "creo que vi un"
	cont "Butterfree rosa."
	done

MeetWesleyText:
	text "Miguel: Hola,"
	line "¿qué tal estás?"

	para "Hoy es miércoles"
	line "y yo soy Miguel,"

	para "por lo de"
	line "miércoles."
	done

WesleyGivesGiftText:
	text "Encantado de"
	line "conocerte. Toma"
	cont "un recuerdo."
	done

WesleyGaveGiftText:
	text "Miguel: Cinturón"
	line "Negro potencia los"
	cont "ataques de lucha."
	done

WesleyWednesdayText:
	text "Miguel: Si me"
	line "has encontrado,"

	para "habrás visto a"
	line "mis hermanos."

	para "¿O es que has"
	line "tenido suerte?"
	done

WesleyNotWednesdayText:
	text "Miguel: Hoy no es"
	line "miércoles."
	cont "¡Qué pena!"
	done

LakeOfRageSignText:
	text "Lago de la Furia,"
	line "conocido como"
	cont "Lago de Gyarados"
	done

FishingGurusHouseSignText:
	text "Casa del Gurú"
	line "Pescador"
	done

LakeOfRage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, LakeOfRageSign
	bg_event 25, 31, BGEVENT_READ, MagikarpHouseSignScript
	bg_event 11, 28, BGEVENT_ITEM, LakeOfRageHiddenFullRestore
	bg_event  4,  4, BGEVENT_ITEM, LakeOfRageHiddenRareCandy
	bg_event 35,  5, BGEVENT_ITEM, LakeOfRageHiddenMaxPotion

	def_object_events
	object_event 21, 28, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageLanceScript, EVENT_LAKE_OF_RAGE_LANCE
	object_event 20, 26, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageGrampsScript, -1
	object_event 36, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageSuperNerdScript, -1
	object_event 25, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageCooltrainerFScript, -1
	object_event 30, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherAndre, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 24, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherRaymond, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  4, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermAaron, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 36,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCooltrainerfLois, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 18, 22, SPRITE_GYARADOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RedGyarados, EVENT_LAKE_OF_RAGE_RED_GYARADOS
	object_event  4,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesleyScript, EVENT_LAKE_OF_RAGE_WESLEY_OF_WEDNESDAY
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageElixer, EVENT_LAKE_OF_RAGE_ELIXER
	object_event 35,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageTMDetect, EVENT_LAKE_OF_RAGE_TM_DETECT
