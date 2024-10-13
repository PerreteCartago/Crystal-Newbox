	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4
	const ROUTE17_BIKER5
	const ROUTE17_BIKER6
	const ROUTE17_BIKER7
	const ROUTE17_BIKER8
	const ROUTE17_BIKER9
	const ROUTE17_BIKER10

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

Route17HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerCharlesAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRileyAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJoel:
	trainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJoelAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerGlennAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerVirgilo:
	trainer BIKER, BIKER_BENNY, EVENT_BEAT_BIKER_BENNY, VirgilioSeenText, VirgilioBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext VirgilioAfterBattleText
	waitbutton
	closetext
	end

TrainerIsaias:
	trainer BALD, ISAIAS, EVENT_BEAT_ISAIAS, IsaiasSeenText, IsaiasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext IsaiasAfterBattleText
	waitbutton
	closetext
	end

TrainerRale:
	trainer BALD, RALE, EVENT_BEAT_RALE, RaleSeenText, RaleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaleAfterBattleText
	waitbutton
	closetext
	end

TrainerDero:
	trainer BALD, DERO, EVENT_BEAT_DERO, DeroSeenText, DeroBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DeroAfterBattleText
	waitbutton
	closetext
	end

TrainerJavi:
	trainer BALD, JAVI, EVENT_BEAT_JAVI, JaviSeenText, JaviBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JaviAfterBattleText
	waitbutton
	closetext
	end

TrainerCefe:
	trainer BALD, CEFE, EVENT_BEAT_CEFE, CefeSeenText, CefeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CefeAfterBattleText
	waitbutton
	closetext
	end

IsaiasSeenText:
	text "¿Qué quieres"
	line "chaval?"
	done

IsaiasBeatenText:
	text "¡Uauuu!"
	done

IsaiasAfterBattleText:
	text "¡Podría echarte"
	line "de aquí de un"
	cont "barrigazo!"
	done

RaleSeenText:
	text "¿Te diriges a la"
	line "Ciudad Fucsia?"
	done

RaleBeatenText:
	text "¡Destrozado"
	line "y vencido!"
	done

RaleAfterBattleText:
	text "Me gusta pedalear"
	line "cuesta abajo."
	done

DeroSeenText:
	text "¡Somos los"
	line "MOTORISTAS!"
	cont "¡Las estrellas"
	cont "de la autopista!"
	done

DeroBeatenText:
	text "¡Ahumado!"
	done

DeroAfterBattleText:
	text "¿Vas en busca"
	line "de aventuras?"
	done

JaviSeenText:
	text "¡Necesito un poco"
	line "de ejercicio!"
	done

JaviBeatenText:
	text "¡Ufff! ¡Qué buen"
	line "entrenamiento!"
	done

JaviAfterBattleText:
	text "¡Seguro que he"
	line "perdido peso!"
	done

CefeSeenText:
	text "¡Sé un rebelde!"
	done

CefeBeatenText:
	text "¡Aaaargh!"
	done

CefeAfterBattleText:
	text "¡Prepárate para"
	line "luchar por tus"
	cont "ideas!"
	done

VirgilioSeenText:
	text "¡No hay dinero"
	line "por luchar contra"
	cont "los niños!"
	done

VirgilioBeatenText:
	text "¡Chamuscado!"
	done

VirgilioAfterBattleText:
	text "¡Por el camino de"
	line "las bicis hay"
	cont "buenas cosas!"
	done

BikerRileySeenText:
	text "¡Eh, tú! Eres de"
	line "Johto, ¿verdad?"
	done

BikerRileyBeatenText:
	text "¡Venga, golpea!"
	done

BikerRileyAfterBattleText:
	text "¡No te pases, que"
	line "esto no es Johto!"
	done

BikerJoelSeenText:
	text "¡Uau! ¡Qué Bici"
	line "más guay!"
	done

BikerJoelBeatenText:
	text "Pero tú no"
	line "pareces guay…"
	done

BikerJoelAfterBattleText:
	text "Soy guay, pero"
	line "estoy débil. Por"
	cont "eso no lo parezco."

	para "Debería entrenar"
	line "mucho más…"
	done

BikerGlennSeenText:
	text "¡Eh! ¿Un combate"
	line "rapidito?"
	done

BikerGlennBeatenText:
	text "¡Vaya!"
	line "¡Qué vitalidad!"
	done

BikerGlennAfterBattleText:
	text "Montar sin manos"
	line "en el Camino de"
	cont "Bicis es muy guay."
	done

BikerCharlesSeenText:
	text "¡Somos estrellas"
	line "de la carretera!"
	done

BikerCharlesBeatenText:
	text "¡Arrrg! ¡Chocar y"
	line "arder!"
	done

BikerCharlesAfterBattleText:
	text "¡Conducir de forma"
	line "imprudente causa"

	para "accidentes! ¡Ten"
	line "cuidado!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 19, 152, ROUTE_17_ROUTE_18_GATE, 1
	warp_event 19, 153, ROUTE_17_ROUTE_18_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 16, 56, BGEVENT_ITEM, Route17HiddenMaxEther
	bg_event  7, 87, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event 12, 19, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event  3, 17, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBikerJoel, -1
	object_event 11, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerGlenn, -1
	object_event  6, 32, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerBikerCharles, -1
	object_event 14, 34, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerBikerVirgilo, -1
	object_event 17, 58, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerIsaias, -1
	object_event  2, 69, SPRITE_BIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerRale, -1
	object_event 14, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerDero, -1
	object_event  5, 98, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerJavi, -1
	object_event 10, 118, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCefe, -1
