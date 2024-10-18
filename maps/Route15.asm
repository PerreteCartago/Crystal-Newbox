	object_const_def
	const ROUTE15_SCHOOL_BOY1
	const ROUTE15_SCHOOL_BOY2
	const ROUTE15_SCHOOL_BOY3
	const ROUTE15_SCHOOL_BOY4
	const ROUTE15_TEACHER1
	const ROUTE15_TEACHER2
	const ROUTE15_POKE_BALL
	const ROUTE15_SCHOOL_GIRL1
	const ROUTE15_SCHOOL_GIRL2
	const ROUTE15_SCHOOL_GIRL3
	const ROUTE15_TEACHER3
	const ROUTE15_BIKER1
	const ROUTE15_BIKER2
	const ROUTE15_BIRD_KEEPER1
	const ROUTE15_BIRD_KEEPER2

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerTeacherColette:
	trainer TEACHER, COLETTE, EVENT_BEAT_TEACHER_COLETTE, TeacherColetteSeenText, TeacherColetteBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherColetteAfterBattleText
	waitbutton
	closetext
	end

TrainerTeacherHillary:
	trainer TEACHER, HILLARY, EVENT_BEAT_TEACHER_HILLARY, TeacherHillarySeenText, TeacherHillaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherHillaryAfterBattleText
	waitbutton
	closetext
	end

TrainerGracia:
	trainer TEACHER, GRACIA, EVENT_BEAT_GRACIA, GraciaSeenText, GraciaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GraciaAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyKipp:
	trainer SCHOOLBOY, KIPP, EVENT_BEAT_SCHOOLBOY_KIP, SchoolboyKippSeenText, SchoolboyKippBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyKippAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyTommy:
	trainer SCHOOLBOY, TOMMY, EVENT_BEAT_SCHOOLBOY_TOMMY, SchoolboyTommySeenText, SchoolboyTommyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyTommyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJohnny:
	trainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJohnnyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyBilly:
	trainer SCHOOLBOY, BILLY, EVENT_BEAT_SCHOOLBOY_BILLY, SchoolboyBillySeenText, SchoolboyBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	closetext
	end

TrainerBetina:
	trainer SCHOOLGIRL, BETINA, EVENT_BEAT_BETINA, CannotSeeText, BetinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BetinaAfterBattleText
	waitbutton
	closetext
	end

TrainerCleo:
	trainer SCHOOLGIRL, CLEO, EVENT_BEAT_CLEO, CannotSeeText, CleoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CleoAfterBattleText
	waitbutton
	closetext
	end

TrainerCelia:
	trainer SCHOOLGIRL, CELIA, EVENT_BEAT_CELIA, CannotSeeText, CeliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CeliaAfterBattleText
	waitbutton
	closetext
	end

TrainerErnesto:
	trainer BIKER, ERNESTO, EVENT_BEAT_ERNESTO, ErnestoSeenText, ErnestoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ErnestoAfterBattleText
	waitbutton
	closetext
	end

TrainerSandro:
	trainer BIKER, SANDRO, EVENT_BEAT_SANDRO, SandroSeenText, SandroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SandroAfterBattleText
	waitbutton
	closetext
	end

TrainerCelso:
	trainer BIRD_KEEPER, CELSO, EVENT_BEAT_CELSO, CelsoSeenText, CelsoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CelsoAfterBattleText
	waitbutton
	closetext
	end

TrainerEdgardo:
	trainer BIRD_KEEPER, EDGARDO, EVENT_BEAT_EDGARDO, EdgardoSeenText, EdgardoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext EdgardoAfterBattleText
	waitbutton
	closetext
	end

Route15Sign:
	jumptext Route15SignText

Route15PPUp:
	itemball PP_UP

GraciaSeenText:
	text "Estamos dando"
	line "clase."
	done

GraciaBeatenText:
	text "Al menos enseñaré"
	line "a mis alumnas a"
	cont "perder con estilo."
	done

GraciaAfterBattleText:
	text "Es importante que"
	line "mis alumnas sepan"
	cont "cómo se actúa en"
	cont "las rutas."

	para "Déjanos seguir con"
	line "la clase."
	done

TeacherColetteSeenText:
	text "¿Has olvidado"
	line "algo?"
	done

TeacherColetteBeatenText:
	text "¡Kiaaa!"
	done

TeacherColetteAfterBattleText:
	text "Antes de ser"
	line "maestra, solía"

	para "olvidarme de"
	line "muchas cosas."
	done

TeacherHillarySeenText:
	text "Creo que si hace"
	line "sol, los niños"

	para "deberían estar"
	line "jugando en el"

	para "patio en lugar"
	line "de estar en clase."
	done

TeacherHillaryBeatenText:
	text "No quería perder…"
	done

TeacherHillaryAfterBattleText:
	text "Es importante"
	line "estudiar, pero"

	para "hacer deporte"
	line "también."
	done

SchoolboyKippSeenText:
	text "Espera. Tengo que"
	line "llamar a mamá."
	done

SchoolboyKippBeatenText:
	text "¡Lo siento, mamá!"
	line "¡Me han vencido!"
	done

SchoolboyKippAfterBattleText:
	text "Mi madre se"
	line "preocupa mucho por"

	para "mí, tengo que"
	line "llamarla siempre."
	done

SchoolboyTommySeenText:
	text "Luchemos."
	line "¡No perderé!"
	done

SchoolboyTommyBeatenText:
	text "¡Me olvidé de"
	line "hacer los deberes!"
	done

SchoolboyTommyAfterBattleText:
	text "¡Sayonara! Lo he"
	line "aprendido en la"
	cont "clase de japonés."
	done

SchoolboyJohnnySeenText:
	text "Vamos a la Torre"
	line "Radio de Lavanda"

	para "para realizar unos"
	line "estudios sociales."
	done

SchoolboyJohnnyBeatenText:
	text "¡Eres demasiado"
	line "fuerte!"
	done

SchoolboyJohnnyAfterBattleText:
	text "Estoy cansado de"
	line "caminar. Necesito"
	cont "un descanso."
	done

SchoolboyBillySeenText:
	text "¡Mi asignatura"
	line "favorita es la"
	cont "gimnasia!"
	done

SchoolboyBillyBeatenText:
	text "¡Oh, no! ¿Cómo he"
	line "podido perder?"
	done

SchoolboyBillyAfterBattleText:
	text "¡Si los Pokémon"
	line "fueran una"

	para "asignatura, yo"
	line "sería el mejor!"
	done

CannotSeeText:
	text "¡Oye! ¡Que no me"
	line "ver!"
	done

CeliaBeatenText:
	text "¡Oh, no! No tuve"
	line "ninguna opción."
	done

CeliaAfterBattleText:
	text "Cuando acabe la,"
	line "escuela, me haré"
	cont "Nadadora."

	para "Me encantan los"
	line "tipo Agua y nadar."
	done

CleoBeatenText:
	text "Debería tener más"
	line "variedad de tipos."
	done

CleoAfterBattleText:
	text "Cuando acabe la,"
	line "escuela, me haré"
	cont "Dominguera."

	para "Lo mío es trotar"
	line "por las rutas."
	done

BetinaBeatenText:
	text "Quizá debería"
	line "hacer evolucionar"
	cont "a mis Pokémon."
	done

BetinaAfterBattleText:
	text "Cuando acabe la,"
	line "escuela, me haré"
	cont "Entrenadora Bella."

	para "¿No has visto lo"
	line "guapa que soy?"
	done

ErnestoSeenText:
	text "¡Oye! !Ven aquí¡"
	line "¡Mira esto!"
	done

ErnestoBeatenText:
	text "No sé qué decir"
	done

ErnestoAfterBattleText:
	text "Perdí porque esto"
	line "está lleno de"
	cont "críos."

	para "Así no hay quien"
	line "se concentre en"
	cont "el combate."
	done

SandroSeenText:
	text "Si pierdes, todo"
	line "tu dinero será"
	cont "para mi."
	done

SandroBeatenText:
	text "No puede ser."
	done

SandroAfterBattleText:
	text "Lo del dinero era"
	line "broma."
	cont "No me hagas caso."
	done

CelsoSeenText:
	text "Mis pájaros están"
	line "temblando. ¿Eres"
	cont "fuerte?"
	done

CelsoBeatenText:
	text "Lo que pensaba."
	done

CelsoAfterBattleText:
	text "Me gustan los tipo"
	line "volador porque no"
	cont "les afecta los"
	cont "ataques tierra."
	done

EdgardoSeenText:
	text "Solo con silbar"
	line "acuden mis Pokémon"
	cont "pájaro."
	done

EdgardoBeatenText:
	text "Vaya..."
	done

EdgardoAfterBattleText:
	text "Me entrenaré con"
	line "gente más débil."
	done

Route15SignText:
	text "RUTA 15"

	para "Ciudad Fucsia -"
	line "Pueblo Lavanda"
	done

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  8, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  9, ROUTE_15_FUCHSIA_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29,  9, BGEVENT_READ, Route15Sign

	def_object_events
	object_event 34,  9, SPRITE_SCHOOL_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyKipp, -1
	object_event 27, 10, SPRITE_SCHOOL_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyTommy, -1
	object_event 31, 12, SPRITE_SCHOOL_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJohnny, -1
	object_event 43, 10, SPRITE_SCHOOL_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyBilly, -1
	object_event 37, 12, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerTeacherColette, -1
	object_event 17, 12, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherHillary, -1
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route15PPUp, EVENT_ROUTE_15_PP_UP
	object_event 18,  6, SPRITE_SCHOOL_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBetina, -1
	object_event 17,  6, SPRITE_SCHOOL_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCleo, -1
	object_event 16,  6, SPRITE_SCHOOL_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCelia, -1
	object_event 17,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGracia, -1
	object_event  7, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerErnesto, -1
	object_event  6, 13, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerSandro, -1
	object_event 14,  8, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCelso, -1
	object_event 37,  5, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerEdgardo, -1
