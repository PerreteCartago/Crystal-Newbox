	object_const_def
	const BULBASAUR_HOUSE_GIRL

CeruleanBulbasaurHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BulbasaurScript:
	faceplayer
	opentext
	checkevent EVENT_BULBASAUR_HAPPINESS
	iftrue .GotBulbasaur
	special GetFirstPokemonHappiness
	ifgreater 200 - 1, .VeryHappy
	ifgreater 150 - 1, .SomewhatHappy
	sjump .NotVeryHappy


.VeryHappy
	writetext YouTakeThisBulbasaurText
	yesorno
	iffalse .Refused
	writetext ThanksText2
	promptbutton
	waitsfx
	writetext ReceivedBulbasaurText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BULBASAUR, 5
	setevent EVENT_BULBASAUR_HAPPINESS
	writetext BulbasaurAlternatetiveText
	waitbutton
	closetext
	end

.Refused:
	writetext NoBulbasaurText
	waitbutton
	closetext
	end

.GotBulbasaur:
	writetext AlreadyGaveBulbasaurText
	waitbutton
	closetext
	end

.SomewhatHappy:
	writetext SomewhatHappyText2
	waitbutton
	closetext
	end

.NotVeryHappy:
	writetext NotVeryHappyText2
	waitbutton
	closetext
	end

YouTakeThisBulbasaurText:
	text "Hola."

	para "Soy la encargada"
	line "de cuidar Pokémon"
	cont "heridos en Ciudad"
	cont "Celeste."

	para "Este Bulbasaur ya"
	line "está recuperado y"
	cont "tiene ganas de ver"
	cont "mundo."

	para "Necesita un buen"
	line "entrenador que vea"
	cont "a los Pokémon como"
	cont "amigos."

	para "Ya sé!"
	
	para "¿Te gustaría"
	line "cuidar de este"
	cont "Pokémon?"
	done

ThanksText2:
	text "Gracias."

	para "Ver un chico joven"
	line "como tú interesado"
	cont "por los desvalidos"
	cont "me hace recuperar"
	cont "la esperanza."
	done

ReceivedBulbasaurText:
	text "<PLAYER> recibió"
	line "a Bulbasaur."
	done

NoBulbasaurText:
	text "¿No? Vaya..."

	para "No sé por qué pero"
	line "creí que eras el"
	cont "indicado."
	done

NotVeryHappyText2:
	text "Hola. ¡Oh, tu"
	line "Pokémon…!"

	para "Deberías"
	line "tratarlo mejor."

	para "No es un objeto."
	done

SomewhatHappyText2:
	text "Tu Pokémon parece"
	line "quererte mucho."

	para "Da gusto veros"

	para "Pero aún os queda"
	line "mucho camino por"
	cont "recorrer juntos."
	done

AlreadyGaveBulbasaurText:
	text "¿Qué tal le va a"
	line "Bulbasaur?"
	done

BulbasaurAlternatetiveText:
	text "Cuida bien de mi"
	line "Bulbasaur."
	done


CeruleanBulbasaurHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 8
	warp_event  3,  7, CERULEAN_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BulbasaurScript, -1
