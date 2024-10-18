	object_const_def
	const ROUTE9_CAMPER1
	const ROUTE9_LASS1
	const ROUTE9_CAMPER2
	const ROUTE9_LASS2
	const ROUTE9_HIKER1
	const ROUTE9_HIKER2
	const ROUTE9_PICNICKER1
	const ROUTE9_PICNICKER2
	const ROUTE9_HIKER3
	const ROUTE9_HIKER4
	const ROUTE9_HIKER5
	const ROUTE9_CAMPER3
	const ROUTE9_CAMPER4
	const ROUTE9_STANDING_BUG_CATCHER1
	const ROUTE9_STANDING_BUG_CATCHER2

Route9_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCamperDean:
	trainer CAMPER, DEAN, EVENT_BEAT_CAMPER_DEAN, CamperDeanSeenText, CamperDeanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDeanAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHeidi:
	trainer PICNICKER, HEIDI, EVENT_BEAT_PICNICKER_HEIDI, PicnickerHeidiSeenText, PicnickerHeidiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHeidiAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperSid:
	trainer CAMPER, SID, EVENT_BEAT_CAMPER_SID, CamperSidSeenText, CamperSidBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSidAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerEdna:
	trainer PICNICKER, EDNA, EVENT_BEAT_PICNICKER_EDNA, PicnickerEdnaSeenText, PicnickerEdnaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerEdnaAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerTim:
	trainer HIKER, TIM, EVENT_BEAT_HIKER_TIM, HikerTimSeenText, HikerTimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTimAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerSidney:
	trainer HIKER, SIDNEY, EVENT_BEAT_HIKER_SIDNEY, HikerSidneySeenText, HikerSidneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerSidneyAfterBattleText
	waitbutton
	closetext
	end

TrainerAdolfo:
	trainer HIKER, ADOLFO, EVENT_BEAT_ADOLFO, AdolfoSeenText, AdolfoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AdolfoAfterBattleText
	waitbutton
	closetext
	end

TrainerAlfonso:
	trainer HIKER, ALFONSO, EVENT_BEAT_ALFONSO, AlfonsoSeenText, AlfonsoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AlfonsoAfterBattleText
	waitbutton
	closetext
	end

TrainerBaltasar:
	trainer HIKER, BALTASAR, EVENT_BEAT_BALTASAR, BaltasarSeenText, BaltasarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BaltasarAfterBattleText
	waitbutton
	closetext
	end

TrainerNeli:
	trainer PICNICKER, NELI, EVENT_BEAT_NELI, NeliSeenText, NeliBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NeliAfterBattleText
	waitbutton
	closetext
	end

TrainerNoe:
	trainer PICNICKER, NOE, EVENT_BEAT_NOE, NoeSeenText, NoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext NoeAfterBattleText
	waitbutton
	closetext
	end

TrainerCris:
	trainer CAMPER, CRIS, EVENT_BEAT_CRIS, CrisSeenText, CrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CrisAfterBattleText
	waitbutton
	closetext
	end

TrainerDoroteo:
	trainer CAMPER, DOROTEO, EVENT_BEAT_DOROTEO, DoroteoSeenText, DoroteoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DoroteoAfterBattleText
	waitbutton
	closetext
	end

TrainerBernabe:
	trainer BUG_CATCHER, BERNABE, EVENT_BEAT_BERNABE, BernabeSeenText, BernabeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BernabeAfterBattleText
	waitbutton
	closetext
	end

TrainerAriel:
	trainer BUG_CATCHER, ARIEL, EVENT_BEAT_ARIEL, ArielSeenText, ArielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ArielAfterBattleText
	waitbutton
	closetext
	end

Route9Sign:
	jumptext Route9SignText

Route9HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_9_HIDDEN_ETHER

CamperDeanSeenText:
	text "He venido a"
	line "explorar el"
	cont "Túnel Roca."
	done

CamperDeanBeatenText:
	text "¡Uau! Peligro."
	done

CamperDeanAfterBattleText:
	text "Hirieron a mis"
	line "Pokémon antes de"

	para "entrar al Túnel"
	line "Roca."

	para "Será mejor que los"
	line "lleve ahora mismo"

	para "a un Centro"
	line "Pokémon."
	done

PicnickerHeidiSeenText:
	text "¿Has ido alguna"
	line "vez de picnic?"
	cont "¡Es muy divertido!"
	done

PicnickerHeidiBeatenText:
	text "¡Ohhhh!"
	done

PicnickerHeidiAfterBattleText:
	text "Hacemos dulces y"
	line "los repartimos"

	para "entre todos."
	line "¡Son deliciosos!"
	done

CamperSidSeenText:
	text "¡Eh, tú!"
	line "¡No tires basura!"
	done

CamperSidBeatenText:
	text "Sólo estaba"
	line "diciendo que…"
	done

CamperSidAfterBattleText:
	text "Perdón. No estabas"
	line "tirando basura."
	cont "Me he equivocado."
	done

PicnickerEdnaSeenText:
	text "La gente no"
	line "debería dejar la"
	cont "basura por ahí."
	done

PicnickerEdnaBeatenText:
	text "¡Ohh…! Perdí…"
	done

PicnickerEdnaAfterBattleText:
	text "Ahorrar energía es"
	line "importante, pero"

	para "el entorno aún lo"
	line "es más."
	done

HikerTimSeenText:
	text "Cuando venga, lo"
	line "hará por Mt."
	cont "Plateado…"

	para "Mt. Plateado está"
	line "en Johto, ¿verdad?"
	done

HikerTimBeatenText:
	text "Estaba ocupado"
	line "cantando…"
	done

HikerTimAfterBattleText:
	text "Los combates son"
	line "cuestión de"
	cont "concentración."
	done

HikerSidneySeenText:
	text "Te contaré un"
	line "secreto."

	para "Pero primero,"
	line "¡luchemos!"
	done

HikerSidneyBeatenText:
	text "¡Caray!"
	line "He perdido…"
	done

HikerSidneyAfterBattleText:
	text "La Central Energía"
	line "está al otro lado"
	cont "de un riachuelo."
	done

Route9SignText:
	text "Ruta 9"

	para "Ciudad Celeste -"
	line "Túnel Roca"
	done

NeliSeenText::
	text "¡Tienes algunos"
	line "Pokémon!"

	para "¡En guardia!"
	done

NeliBeatenText::
	text "¡Me has"
	line "defraudado!"
	done

NeliAfterBattleText::
	text "Necesitas luz"
	line "para cruzar ese"
	cont "túnel oscuro."
	done

CrisSeenText::
	text "¿Quién anda por"
	line "ahí con esos"
	cont "Pokémon con tan"
	cont "buen aspecto?"
	done

CrisBeatenText::
	text "¡Esto se acabó!"
	done

CrisAfterBattleText::
	text "¡Sigue caminando!"
	done

DoroteoSeenText::
	text "¡Tomaré el Túnel"
	line "Roca para ir a"
	cont "Pueblo Lavanda!"
	done

DoroteoBeatenText::
	text "¡Soy muy malo!"
	line "¡Buaaa!"
	done

DoroteoAfterBattleText::
	text "¿Vas a ir también"
	line "al Túnel Roca?"
	done

NoeSeenText::
	text "¡Trátame con"
	line "respeto!"
	done

NoeBeatenText::
	text "¡Eres demasiado!"
	done

NoeAfterBattleText::
	text "¡Pareces ser"
	line "muy capaz!"

	para "¡Buena suerte!"
	done

AdolfoSeenText::
	text "¡Jaja! ¡Qué bien!"

	para "¡Me estaba"
	line "aburriendo!"
	done

AdolfoBeatenText::
	text "¡No te detengas,"
	line "sigue, sigue!"

	para "Espera. ¡No tengo"
	line "más Pokémon!"
	done

AdolfoAfterBattleText::
	text "¡Debes ser muy"
	line "valiente para"
	cont "desafiarme!"
	done

BaltasarSeenText::
	text "¡Jaja!"
	line "¡No es que seas"
	cont "muy duro!"
	done

BaltasarBeatenText::
	text "¿Qué es eso?"
	done

BaltasarAfterBattleText::
	text "¡Jajaja! ¡Los"
	line "niños deben ser"
	cont "duros!"
	done

BernabeSeenText::
	text "¡Madrugo todos"
	line "los días para"
	cont "cuidar a mis"
	cont "Pokémon del"
	cont "tipo bicho!"
	done

BernabeBeatenText::
	text "¿Qué?"

	para "¡Qué gran pérdida"
	line "de tiempo!"
	done

BernabeAfterBattleText::
	text "Tengo que recoger"
	line "algo que no sea"
	cont "bichos para ser"
	cont "más fuerte..."
	done

AlfonsoSeenText::
	text "¡Jajajaja!"
	line "¡Vamos pequeñajo!"
	done

AlfonsoBeatenText::
	text "¡Jajajaja!"
	line "¡Me has ganado!"
	done

AlfonsoAfterBattleText::
	text "¡Jajaja!"
	line "¡Los más fuertes"
	cont "siempre reímos!"
	done

ArielSeenText::
	text "¡Adelante mi"
	line "súper bicho"
	cont "Pokémon!"
	done

ArielBeatenText::
	text "Mis"
	line "bichos..."
	done

ArielAfterBattleText::
	text "¿No te gustan los"
	line "bichos Pokémon?"

	para "¡Pues inféctame!"
	done

Route9_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 68, 17, ROCK_TUNNEL_1F, 1

	def_coord_events

	def_bg_events
	bg_event 25,  7, BGEVENT_READ, Route9Sign
	bg_event 51,  4, BGEVENT_ITEM, Route9HiddenEther

	def_object_events
	object_event 44,  7, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperDean, -1
	object_event 42,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerHeidi, -1
	object_event 20,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerEdna, -1
	object_event 23, 12, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperSid, -1
	object_event 46,  8, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerTim, -1
	object_event 35,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerSidney, -1
	object_event 53, 10, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerNeli, -1
	object_event 15,  5, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerNoe, -1
	object_event 13,  8, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerAdolfo, -1
	object_event 36, 14, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerAlfonso, -1
	object_event 64,  9, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerBaltasar, -1
	object_event 60,  7, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCris, -1
	object_event 14, 14, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerDoroteo, -1
	object_event 32,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerBernabe, -1
	object_event 22,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerAriel, -1
