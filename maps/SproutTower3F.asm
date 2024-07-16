	object_const_def
	const SPROUTTOWER3F_SAGE1
	const SPROUTTOWER3F_SAGE2
	const SPROUTTOWER3F_SAGE3
	const SPROUTTOWER3F_SAGE4
	const SPROUTTOWER3F_POKE_BALL1
	const SPROUTTOWER3F_POKE_BALL2
	const SPROUTTOWER3F_RIVAL

SproutTower3F_MapScripts:
	def_scene_scripts
	scene_script SproutTower3FNoop1Scene, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER
	scene_script SproutTower3FNoop2Scene, SCENE_SPROUTTOWER3F_NOOP

	def_callbacks

SproutTower3FNoop1Scene:
	end

SproutTower3FNoop2Scene:
	end

SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement PLAYER, SproutTower3FPlayerApproachesRivalMovement
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalApproachesElderMovement
	opentext
	writetext SproutTowerElderLecturesRivalText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SPROUTTOWER3F_RIVAL, 15
	turnobject SPROUTTOWER3F_RIVAL, DOWN
	pause 15
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalLeavesElderMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SproutTowerRivalOnlyCareAboutStrongText
	waitbutton
	closetext
	turnobject SPROUTTOWER3F_RIVAL, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_RIVAL
	waitsfx
	special FadeInFromBlack
	setscene SCENE_SPROUTTOWER3F_NOOP
	special RestartMapMusic
	end

SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, 0
	loadtrainer SAGE, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiTakeThisFlashText
	promptbutton
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_BEAT_SAGE_LI
	writetext SageLiFlashExplanationText
	waitbutton
	closetext
	end

.GotFlash:
	writetext SageLiAfterBattleText
	waitbutton
	closetext
	end

TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end

TrainerSageTroy:
	trainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTroyAfterBattleText
	waitbutton
	closetext
	end

TrainerSageNeal:
	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageNealAfterBattleText
	waitbutton
	closetext
	end

SproutTower3FPainting:
	jumptext SproutTower3FPaintingText

SproutTower3FStatue:
	jumptext SproutTower3FStatueText

SproutTower3FPotion:
	itemball POTION

SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE

SproutTower3FPlayerApproachesRivalMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

SproutTower3FRivalApproachesElderMovement:
	step UP
	step_end

SproutTower3FRivalLeavesElderMovement:
	step RIGHT
	step DOWN
	step_end

SproutTowerElderLecturesRivalText:
	text "Anciano: Eres muy"
	line "hábil entrenando"
	cont "Pokémon."

	para "Como te prometí,"
	line "aquí tienes tu MO."

	para "Pero déjame que te"
	line "diga que deberías"

	para "tratar mejor a"
	line "tus Pokémon."

	para "Luchas de forma"
	line "muy violenta."

	para "Los Pokémon no son"
	line "armas de guerra."
	done

SproutTowerRivalOnlyCareAboutStrongText:
	text "…"

	para "¡Bah!"
	line "Afirma ser el"

	para "Anciano, pero"
	line "es muy débil."

	para "Es evidente."

	para "Jamás perdería"
	line "ante quienes dicen"

	para "que hay que ser"
	line "bueno con los"
	cont "Pokémon."

	para "Sólo me interesan"
	line "los Pokémon"
	cont "ganadores."

	para "Paso de los"
	line "Pokémon débiles."
	done

SproutTowerRivalUsedEscapeRopeText:
	text "¡<RIVAL>"
	line "usó Cuerda huída!"
	done

SageLiSeenText:
	text "¡Encantado de"
	line "verte por aquí!"

	para "Torre Bellsprout"
	line "es un lugar de"
	cont "entrenamiento."

	para "La gente y los"
	line "Pokémon evalúan"

	para "sus vínculos para"
	line "construir juntos"
	cont "un futuro mejor."

	para "Yo soy la prueba"
	line "final."

	para "¡Déjame evaluar"
	line "tus vínculos con"
	cont "los Pokémon!"
	done

SageLiBeatenText:
	text "¡Ah, excellente!"
	done

SageLiTakeThisFlashText:
	text "Tú y tus Pokémon"
	line "no deberíais tener"

	para "problemas con este"
	line "movimiento."

	para "Toma esta MO."
	line "Es Destello."
	done

SageLiFlashExplanationText:
	text "Destello ilumina"
	line "hasta el lugar más"
	cont "oscuro."

	para "Y, con la Medalla"
	line "de Ciudad Malva,"

	para "podrás usarlo"
	line "fuera del combate."
	done

SageLiAfterBattleText:
	text "¡Ojalá aprendas y"
	line "madures en tu"
	cont "viaje!"
	done

SageJinSeenText:
	text "¡Entreno para"
	line "saberlo todo"
	cont "sobre los Pokémon!"
	done

SageJinBeatenText:
	text "Mi entrenamiento"
	line "está incompleto…"
	done

SageJinAfterBattleText:
	text "Cuánto más fuerte"
	line "sea el Pokémon,"

	para "más fuerte será"
	line "su entrenador."

	para "No, espera. Cuánto"
	line "más fuerte sea el"

	para "entrenador, más"
	line "fuerte el Pokémon."
	done

SageTroySeenText:
	text "A ver cuanto"
	line "confías en tus"
	cont "Pokémon."
	done

SageTroyBeatenText:
	text "¡Sí, tu confianza"
	line "es auténtica!"
	done

SageTroyAfterBattleText:
	text "No estás lejos del"
	line "Anciano."
	done

SageNealSeenText:
	text "La MO del Anciano"
	line "alumbra hasta lo"
	cont "más oscuro."
	done

SageNealBeatenText:
	text "¡Mi cerebro sí que"
	line "es brillante!"
	done

SageNealAfterBattleText:
	text "¡Que haya luz en"
	line "tus viajes!"
	done

SproutTower3FPaintingText:
	text "Es un bonito"
	line "cuadro de un"
	cont "Bellsprout."
	done

SproutTower3FStatueText:
	text "Una estatua Pokémon"
	line "muy desgastada."

	para "Debería ser verde"
	line "y blanca."
	done

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 14, SPROUT_TOWER_2F, 4

	def_coord_events
	coord_event 11,  9, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER, SproutTower3FRivalScene

	def_bg_events
	bg_event  8,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event 11,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event 10,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  5, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 14, 15, BGEVENT_READ, SproutTower3FStatue

	def_object_events
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1
	object_event  8,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageTroy, -1
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
	object_event 10,  4, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER
