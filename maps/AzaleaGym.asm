	object_const_def
	const AZALEAGYM_BUGSY
	const AZALEAGYM_BUG_CATCHER1
	const AZALEAGYM_BUG_CATCHER2
	const AZALEAGYM_BUG_CATCHER3
	const AZALEAGYM_TWIN1
	const AZALEAGYM_TWIN2
	const AZALEAGYM_GYM_GUIDE

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	opentext
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	readvar VAR_BADGES
	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	clearevent EVENT_BEAT_BIRD_KEEPER_ROD
	clearevent EVENT_BEAT_BIRD_KEEPER_ABE
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetext
	end

AzaleaGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerTwinsAmyandmay1:
	trainer TWINS, AMYANDMAY1, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay1SeenText, TwinsAmyandmay1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAmyandmay2:
	trainer TWINS, AMYANDMAY2, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay2SeenText, TwinsAmyandmay2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BUG_CATCHER_BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

AzaleaGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	writetext AzaleaGymGuideText
	waitbutton
	closetext
	end

.AzaleaGymGuideWinScript:
	opentext
	writetext AzaleaGymGuideWinText
	waitbutton
	closetext
	end

AzaleaGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue2Script

BugsyText_INeverLose:
	text "¡Soy Antón!"
	line "Soy invencible"

	para "con los Pokémon"
	line "bicho."

	para "¡Mis estudios me"
	line "van a convertir en"

	para "una autoridad en"
	line "los Pokémon bicho!"

	para "Te enseñaré lo"
	line "que he aprendido."
	done


BugsyText_ResearchIncomplete:
	text "¡Uauu, increíble!"
	line "¡No hay Pokémon"
	cont "que se te resista!"

	para "Mi investigación"
	line "aún no ha acabado."

	para "Vale, tú ganas."
	line "Toma esta Medalla."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> recibió la"
	line "Medalla Colmena."
	done

BugsyText_HiveBadgeSpeech:
	text "¿Conoces las"
	line "ventajas de la"
	cont "Medalla Colmena?"

	para "Si la tienes, los"
	line "Pokémon hasta N.30"
	cont "te obedecerán."

	para "Y los Pokémon"
	line "que sepan Corte"

	para "podrán usarlo"
	line "fuera del combate."

	para "Mira, también te"
	line "daré esto."
	done

BugsyText_FuryCutterSpeech:
	text "Mt49 contiene"
	line "Cortefuria."

	para "Si no fallas, se"
	line "hace cada vez más"
	cont "fuerte."

	para "Cuanto más dure"
	line "el combate, más"
	cont "fuerte será."

	para "¿No es genial?"
	line "¡Lo descubrí yo!"
	done

BugsyText_BugMonsAreDeep:
	text "Los Pokémon bicho"
	line "son muy complejos."

	para "Quedan muchos"
	line "misterios por"
	cont "resolver."

	para "Estudia a fondo"
	line "tus favoritos."
	done

BugCatcherBennySeenText:
	text "Los Pokémon bicho"
	line "evolucionan pronto"

	para "y se hacen fuertes"
	line "mucho antes."
	done

BugCatcherBennyBeatenText:
	text "¡No se trata sólo"
	line "de evolucionar!"
	done

BugCatcherBennyAfterBattleText:
	text "Los Pokémon se"
	line "hacen más fuertes"
	cont "si evolucionan."
	done

BugCatcherAlSeenText:
	text "¡Los Pokémon bicho"
	line "son buenos y muy"

	para "fuertes! ¡Te lo"
	line "demostraré!"
	done

BugCatcherAlBeatenText:
	text "Has demostrado lo"
	line "fuerte que eres…"
	done

BugCatcherAlAfterBattleText:
	text "Son geniales,"
	line "pero la mayoría de"

	para "las chicas odian"
	line "los Pokémon bicho."

	para "No sé por qué…"
	done

BugCatcherJoshSeenText:
	text "¿Has salvado a los"
	line "Slowpooke? ¡Uauu!"
	cont "¡Eres muy fuerte!"

	para "¡Pero mis Pokémon"
	line "entrenados también"
	cont "lo son!"
	done

BugCatcherJoshBeatenText:
	text "Urrgggh!"
	done

BugCatcherJoshAfterBattleText:
	text "Supongo que"
	line "debería enseñarles"
	cont "mejores ataques…"
	done

TwinsAmyandmay1SeenText:
	text "Amy: ¡Hola! ¿Estás"
	line "retando al Líder?"
	cont "¡No puede ser!"
	done

TwinsAmyandmay1BeatenText:
	text "Amy-May: ¡Oh,"
	line "madre mía!"
	done

TwinsAmyandmay1AfterBattleText:
	text "Amy: ¡Eres muy"
	line "fuerte!"
	done

TwinsAmyandmay2SeenText:
	text "May: ¿Quieres ver"
	line "al Líder? ¡Antes"
	cont "vamos nosotras!"
	done

TwinsAmyandmay2BeatenText:
	text "Amy-May: ¡Oh,"
	line "madre mía!"
	done

TwinsAmyandmay2AfterBattleText:
	text "May: Han perdido"
	line "nuestros Pokémon."
	cont "¡Qué lástima!"
	done

AzaleaGymGuideText:
	text "¡Hola, valiente!"

	para "Antón es joven,"
	line "pero conoce muy"

	para "bien a los Pokémon"
	line "bicho."

	para "Y sin mis consejos"
	line "te resultaría aún"
	cont "más duro."

	para "Veamos… A los"
	line "Pokémon bicho no"
	cont "les va el fuego."

	para "Y los ataques de"
	line "tipo volador son"
	cont "muy efectivos."
	done

AzaleaGymGuideWinText:
	text "¡Eso es! Ha sido"
	line "un gran encuentro"

	para "entre jóvenes con"
	line "talento."

	para "Con gente como tú,"
	line "¡el futuro de los"

	para "Pokémon será"
	line "maravilloso!"
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherBenny, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAl, -1
	object_event  0,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJosh, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay2, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
