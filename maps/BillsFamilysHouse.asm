	object_const_def
	const BILLSFAMILYSHOUSE_BILL
	const BILLSFAMILYSHOUSE_POKEFAN_F
	const BILLSFAMILYSHOUSE_TWIN

BillsFamilysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EEVEE
	iftrue .GotEevee
	writetext BillTakeThisEeveeText
	yesorno
	iffalse .Refused
	writetext BillImCountingOnYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedEeveeText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 20
	setevent EVENT_GOT_EEVEE
	writetext BillEeveeMayEvolveText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillPartyFullText
	waitbutton
	closetext
	end

.Refused:
	writetext BillNoEeveeText
	waitbutton
	closetext
	end

.GotEevee:
	writetext BillPopWontWorkText
	waitbutton
	closetext
	end

BillsMomScript:
	faceplayer
	opentext
	checkevent EVENT_MET_BILL
	iffalse .HaventMetBill
	writetext BillsMomText_BeforeEcruteak
	waitbutton
	closetext
	end

.HaventMetBill:
	writetext BillsMomText_AfterEcruteak
	waitbutton
	closetext
	end

BillsSisterScript:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillsSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	writetext BillsSisterStorageSystemText
	waitbutton
	closetext
	end

.Refused:
	writetext BillsSisterRefusedNumberText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillsSisterPhoneFullText
	promptbutton
	sjump .Refused

BillsHouseBookshelf1:
	jumpstd PictureBookshelfScript

BillsHouseBookshelf2:
	jumpstd MagazineBookshelfScript

BillsHouseRadio:
	jumpstd Radio2Script

BillTakeThisEeveeText:
	text "Bill: ¡Hola,"
	line "<PLAYER>! Haznos"

	para "un favor y acepta"
	line "este Eevee."

	para "Apareció cuando"
	line "ajustaba la"

	para "Cápsula del"
	line "Tiempo."

	para "Alguien tiene que"
	line "cuidarlo y a mí no"
	cont "me gusta salir."

	para "¿Puedo confiar en"
	line "ti para jugar con"
	cont "él, <PLAYER>?"
	done

BillImCountingOnYouText:
	text "Bill: ¡Sabía que"
	line "aceptarías!"

	para "¡Vamos! ¡Tú sí"
	line "que vales!"

	para "Bueno, cuento"
	line "contigo."

	para "¡Cuídalo bien!"
	done

ReceivedEeveeText:
	text "¡<PLAYER> recibió"
	line "a EEVEE!"
	done

BillEeveeMayEvolveText:
	text "Bill: ELM dice que"
	line "EEVEE evoluciona"

	para "en formas nuevas y"
	line "desconocidas."
	done

BillPartyFullText:
	text "No, espera."
	line "No puedes llevar"
	cont "más #MON."
	done

BillNoEeveeText:
	text "¡Oh…! ¿Qué podemos"
	line "hacer ahora?"
	done

BillPopWontWorkText:
	text "Bill: Mi padre no"
	line "trabaja. Lo único"

	para "que hace es"
	line "holgazanear."

	para "Es que no da ni"
	line "golpe…"
	done

BillsMomText_BeforeEcruteak:
	text "Anda, ¿coleccionas"
	line "#MON? Mi hijo"

	para "Bill es todo un"
	line "experto."

	para "Le han llamado del"
	line "CENTRO #MON de"
	cont "CIUDAD IRIS."

	para "Mi marido fue al"
	line "CASINO sin que le"
	cont "llamara nadie…"
	done

BillsMomText_AfterEcruteak:
	text "Mi marido era"
	line "conocido como un"

	para "Pokemaníaco."
	line "Bill ha debido de"

	para "seguir los pasos"
	line "de su padre."
	done

BillsSisterUsefulNumberText:
	text "¿Entrenas Pokémon?"
	line "Tengo un número de"

	para "teléfono que te"
	line "será útil."
	done

RecordedBillsNumberText:
	text "<PLAYER> grabó el"
	line "Número de Bill."
	done

BillsSisterRefusedNumberText:
	text "Mi hermano creó el"
	line "Sistema de"

	para "Almacenamiento de"
	line "Pokémon del PC."

	para "Te iba a dar el"
	line "teléfono de BILL…"
	done

BillsSisterPhoneFullText:
	text "No puedes grabar"
	line "ningún número más."
	done

BillsSisterStorageSystemText:
	text "Mi hermano Bill"
	line "creó el Sistema de"

	para "Almacenamiento de"
	line "los #MON."
	done

BillsFamilysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BillsHouseBookshelf2
	bg_event  1,  1, BGEVENT_READ, BillsHouseBookshelf1
	bg_event  7,  1, BGEVENT_READ, BillsHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillScript, EVENT_MET_BILL
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSisterScript, -1
