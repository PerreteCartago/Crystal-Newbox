	object_const_def
	const WISETRIOSROOM_SAGE1
	const WISETRIOSROOM_SAGE2
	const WISETRIOSROOM_SAGE3
	const WISETRIOSROOM_SAGE4
	const WISETRIOSROOM_SAGE5
	const WISETRIOSROOM_SAGE6

WiseTriosRoom_MapScripts:
	def_scene_scripts
	scene_script WiseTriosRoomNoop1Scene, SCENE_WISETRIOSROOM_SAGE_BLOCKS
	scene_script WiseTriosRoomNoop2Scene, SCENE_WISETRIOSROOM_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WiseTriosRoomWiseTrioCallback

WiseTriosRoomNoop1Scene:
	end

WiseTriosRoomNoop2Scene:
	end

WiseTriosRoomWiseTrioCallback:
	checkevent EVENT_FOUGHT_SUICUNE
	iftrue .NoWiseTrio
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .WiseTrio2
	checkitem CLEAR_BELL
	iftrue .WiseTrio2
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

.WiseTrio2:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

.NoWiseTrio:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

WiseTriosRoomSage1Script:
	jumptextfaceplayer WiseTriosRoomSage1Text

WiseTriosRoomSage2Script:
	jumptextfaceplayer WiseTriosRoomSage2Text

WiseTriosRoomSage3Script:
	jumptextfaceplayer WiseTriosRoomSage3Text

WiseTriosRoom_CannotEnterTinTowerScript:
	turnobject WISETRIOSROOM_SAGE3, UP
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE3, 20
	follow PLAYER, WISETRIOSROOM_SAGE3
	applymovement PLAYER, WiseTriosRoomSageBlocksPlayerMovement
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext WiseTriosRoomSage3BlocksExitText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE3, WiseTriosRoomSageReturnsMovement
	turnobject WISETRIOSROOM_SAGE3, LEFT
	end

TrainerSageGaku:
	trainer SAGE, GAKU, EVENT_BEAT_SAGE_GAKU, SageGakuSeenText, SageGakuBeatenText, 0, .Script

.Script:
	opentext
	writetext SageGakuAfterBattleText
	waitbutton
	closetext
	end

TrainerSageMasa:
	trainer SAGE, MASA, EVENT_BEAT_SAGE_MASA, SageMasaSeenText, SageMasaBeatenText, 0, .Script

.Script:
	opentext
	writetext SageMasaAfterBattleText
	waitbutton
	closetext
	end

TrainerSageKoji:
	trainer SAGE, KOJI, EVENT_BEAT_SAGE_KOJI, SageKojiSeenText, SageKojiBeatenText, 0, .Script

.Script:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue .KojiAllowsPassage
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_SAGE6, 20
	opentext
	writetext SageKojiAfterBattleQuestionText
	promptbutton
	writetext SageKojiAfterBattleSpeechText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_SAGE6, WiseTriosRoomSageAllowsPassageMovement
	turnobject WISETRIOSROOM_SAGE6, UP
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	setscene SCENE_WISETRIOSROOM_NOOP
	end

.KojiAllowsPassage:
	opentext
	writetext SageKojiAfterBattleFinalText
	waitbutton
	closetext
	end

WiseTriosRoomSageBlocksPlayerMovement:
	step LEFT
	step LEFT
	step_end

WiseTriosRoomSageReturnsMovement:
	step RIGHT
	step DOWN
	step_end

WiseTriosRoomSageAllowsPassageMovement:
	step RIGHT
	step DOWN
	step_end

WiseTriosRoomSage1Text:
	text "Asombroso…"

	para "Suicune, Entei y"
	line "Raikou han salido"
	cont "de su letargo…"

	para "¿Se hará realidad"
	line "la leyenda?"
	done

WiseTriosRoomSage2Text:
	text "Nos entrenamos en"
	line "Torre Quemada,"

	para "pero nunca oímos"
	line "hablar de que"

	para "hubiera ningún"
	line "agujero."

	para "Alguien lo debió"
	line "de hacer a"
	cont "propósito."
	done

WiseTriosRoomSage3BlocksExitText:
	text "Sólo pueden entrar"
	line "en la Torre"

	para "Hojalata aquellos"
	line "que lleven la"

	para "Medalla del"
	line "Gimnasio Iris."

	para "¡Aunque, ahora que"
	line "Suicune, Raikou"

	para "y Entei han des-"
	line "pertado, te pido"

	para "que te abstengas"
	line "de entrar!"
	done

WiseTriosRoomSage3Text:
	text "Nosotros, el Trío"
	line "de Sabios, somos"

	para "los protectores"
	line "del Pokémon"
	cont "legendario."
	done

SageGakuSeenText:
	text "Cuenta la leyenda"
	line "que cuando resurja"

	para "un entrenador con"
	line "la capacidad de"

	para "tocar las almas de"
	line "los Pokémon, un"

	para "Pokémon aparecerá"
	line "para retar al"

	para "entrenador en la"
	line "Torre Hojalata."

	para "¡La leyenda se ha"
	line "hecho realidad!"

	para "¡Suicune, el"
	line "Pokémon legenda-"
	cont "rio, ha llegado!"

	para "¡Nosotros, el Trío"
	line "de Sabios, vamos a"

	para "probarte antes de"
	line "que entres!"
	done

SageGakuBeatenText:
	text "¿Más fuerte que"
	line "nosotros? Quizá…"
	done

SageGakuAfterBattleText:
	text "Ah, entonces tú"
	line "eres quien dice"

	para "haber visto a"
	line "Suicune, Entei y"

	para "Raikou mientras"
	line "dormían…"

	para "¡Increíble!"

	para "La leyenda cuenta"
	line "que no se pueden"

	para "ver mientras"
	line "duermen…"
	done

SageMasaSeenText:
	text "¿Mereces conocer"
	line "la verdad?"

	para "Debo averiguar tu"
	line "valía."
	done

SageMasaBeatenText:
	text "Te contaré la"
	line "verdad…"
	done

SageMasaAfterBattleText:
	text "En el pasado, aquí"
	line "se alzaban dos"

	para "torres de nueve"
	line "pisos."

	para "La Torre Latón, de"
	line "la cual se decía"

	para "despertaba a los"
	line "Pokémon, y la"

	para "Torre Hojalata,"
	line "en la que dormían"

	para "los Pokémon,"
	line "según parece."

	para "La vista desde las"
	line "TORRES debía"
	cont "ser magnífica."

	para "Se dice que, por"
	line "aquel entonces, un"

	para "inmenso Pokémon"
	line "plateado hizo su"

	para "nido sobre la"
	line "Torre Latón."

	para "Pero…"

	para "Hace unos 150"
	line "años, un rayo"

	para "destruyó una de"
	line "las Torres."

	para "La envolvió en"
	line "feroces llamas"

	para "durante tres días"
	line "y tres noches."

	para "Un aguacero"
	line "repentino acabó"
	cont "con el fuego."

	para "Y así es como pasó"
	line "a ser la Torre"
	cont "Quemada."
	done

SageKojiSeenText:
	text "¡Déjame ver tu"
	line "poder!"
	done

SageKojiBeatenText:
	text "¡Muy fuerte!"
	line "¿Por qué?"
	done

SageKojiAfterBattleQuestionText:
	text "Tú… ¿Era a ti"
	line "a quien esperaba"

	para "el Pokémon legen-"
	line "dario?"
	done

SageKojiAfterBattleSpeechText:
	text "Ya veo…"

	para "Nosotros, el Trío"
	line "de Sabios, tenemos"

	para "la responsabilidad"
	line "de proteger al"

	para "Pokémon legenda-"
	line "rio. Sólo podemos"

	para "dejar pasar a"
	line "aquellos que"

	para "posean el poder y"
	line "un alma pura."

	para "Por favor, sigue"
	line "adelante hacia la"
	cont "Torre Hojalata."

	para "Suicune te pondrá"
	line "a prueba."
	done

SageKojiAfterBattleFinalText:
	text "Adelante."

	para "Suicune te pondrá"
	line "a prueba."
	done

WiseTriosRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  4, ECRUTEAK_CITY, 4
	warp_event  7,  5, ECRUTEAK_CITY, 5
	warp_event  1,  4, ECRUTEAK_TIN_TOWER_ENTRANCE, 5

	def_coord_events
	coord_event  7,  4, SCENE_WISETRIOSROOM_SAGE_BLOCKS, WiseTriosRoom_CannotEnterTinTowerScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage1Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  6,  7, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage2Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  7,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WiseTriosRoomSage3Script, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  4,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  6,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
