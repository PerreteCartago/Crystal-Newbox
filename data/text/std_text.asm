NurseMornText:
NurseDayText:
	text "¡Bienvenido a"
	line "nuestro Centro"
	cont "Pokémon!"
	done

NurseNiteText:
	text "¡Buenas noches!"
	line "Bienvenido a"

	para "nuestro Centro"
	line "Pokémon."
	done

PokeComNurseMornText:
	text "¡Buenas!"

	para "Éste es el Centro"
	line "de Comunicaciones"

	para "Pokémon o"
	line "Centro <POKE>com."
	done

PokeComNurseDayText:
	text "¡Hola!"

	para "Éste es el Centro"
	line "de Comunicaciones"

	para "Pokémon o"
	line "Centro <POKE>com."
	done

PokeComNurseNiteText:
	text "Te veo trabajando"
	line "hasta tarde…"

	para "Éste es el Centro"
	line "de Comunicaciones"

	para "Pokémon o"
	line "Centro <POKE>com."
	done

NurseAskHealText:
	text "¿Quieres curar a"
	line "tus Pokémon?"
	done

NurseTakePokemonText:
	text "Muy bien, déjame"
	line "tus Pokémon."
	done

NurseReturnPokemonText:
	text "Tus Pokémon están"
	line "en plena forma."
	done

NurseGoodbyeText:
	text "¡Vuelve siempre"
	line "que quieras!"
	done

; not used
	text "We hope to see you"
	line "again."
	done

NursePokerusText:
	text "Tus Pokémon"
	line "tienen minúsculas"

	para "formas de vida"
	line "unidas a ellos."

	para "Tus Pokémon están"
	line "sanos y parecen"
	cont "contentos."

	para "Pero no podemos"
	line "darte más"

	para "información en un"
	line "Centro Pokémon."
	done

PokeComNursePokerusText:
	text "Tus Pokémon"
	line "tienen minúsculas"

	para "formas de vida"
	line "unidas a ellos."

	para "Tus Pokémon están"
	line "sanos y parecen"
	cont "contentos."

	para "Pero no podemos"
	line "darte más"

	para "información en"
	line "este momento."
	done

DifficultBookshelfText:
	text "Está llena de"
	line "libros complejos."
	done

PictureBookshelfText:
	text "¡Una colección de"
	line "libros ilustrados"
	cont "de Pokémon!"
	done

MagazineBookshelfText:
	text "Revistas Pokémon…"
	line "Televisor Pokémon,"

	para "Manual Pokémon,"
	line "Gráfica Pokémon…"
	done

TeamRocketOathText:
	text "Votos Team Rocket"

	para "Robar Pokémon para"
	line "enriquecernos."

	para "Explotarlos para"
	line "enriquecernos."

	para "¡Todo Pokémon"
	line "existe para gloria"
	cont "del Team Rocket!"
	done

IncenseBurnerText:
	text "¿Qué es esto?"

	para "¡Oh! ¡Es un"
	line "pebetero!"
	done

MerchandiseShelfText:
	text "¡Cantidad de"
	line "artículos Pokémon!"
	done

LookTownMapText:
	text "Mapa del Pueblo."
	done

WindowText:
	text "¡Mi reflejo!"
	line "¡Qué guay!"
	done

TVText:
	text "Es una TV."
	done

HomepageText:
	text "Página de Inicio"
	line "Revista Pokémon."

	para "No ha sido"
	line "actualizada…"
	done

; not used
	text "¡Radio Pokémon!"

	para "¡Llámanos con"
	line "tus peticiones!"
	done

TrashCanText:
	text "Aquí dentro no"
	line "hay nada…"
	done

; not used
	text "Un Pokémon"
	line "podría moverla."
	done

; not used
	text "Un Pokémon"
	line "podría romperla."
	done

PokecenterSignText:
	text "Cura a tus Pokémon"
	line "Centro Pokémon"
	done

MartSignText:
	text "Todo lo necesario"
	line "para tus Pokémon"

	para "Tienda Pokémon"
	done

ContestResults_ReadyToJudgeText:
	text "Vamos a evaluar"
	line "a tus Pokémon."

	para "<……>"
	line "<……>"

	para "¡Hemos elegido a"
	line "los ganadores!"

	para "Aquí van…"
	done

ContestResults_PlayerWonAPrizeText:
	text "<PLAYER> gana el"
	line "premio n.°@"
	text_ram wStringBuffer3
	text ":"
	cont "¡una @"
	text_ram wStringBuffer4
	text "!"
	done

ReceivedItemText:
	text "<PLAYER> recibió"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

ContestResults_JoinUsNextTimeText:
	text "¡Participa en el"
	line "próximo concurso!"
	done

ContestResults_ConsolationPrizeText:
	text "¡Todos los demás"
	line "reciben una baya"
	cont "como consolación!"
	done

ContestResults_DidNotWinText:
	text "A ver si mejoras"
	line "la próxima vez."
	done

ContestResults_ReturnPartyText:
	text "Aquí tienes los"
	line "Pokémon que"

	para "te estábamos"
	line "cuidando."
	done

ContestResults_PartyFullText:
	text "¡Equipo completo!"
	line "El Pokémon fue"

	para "enviado a tu caja"
	line "en el PC de BILL."
	done

GymStatue_CityGymText:
	text "GIMNASIO Pokémon"
	line "DE @"
	text_ram wStringBuffer3
	text_end

	text_end ; unused

GymStatue_WinningTrainersText:
	text "LÍDER: @"
	text_ram wStringBuffer4
	text_start

	para "Ganadores:"
	line "<PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Bienvenidos al"
	line "Casino."
	done

CoinVendor_NoCoinCaseText:
	text "¿Necesitas fichas"
	line "de juego?"

	para "¡Oh! No tienes"
	line "un monedero"
	cont "para tus fichas."
	done

CoinVendor_IntroText:
	text "¿Necesitas fichas"
	line "de juego?"

	para "50 fichas por"
	line "1000¥. ¿Quieres"
	cont "comprar?"
	done

CoinVendor_Buy50CoinsText:
	text "¡Gracias! Aquí"
	line "tienes 50 fichas."
	done

CoinVendor_Buy500CoinsText:
	text "¡Gracias! Aquí"
	line "tienes 500 fichas."
	done

CoinVendor_NotEnoughMoneyText:
	text "No tienes"
	line "bastante dinero."
	done

CoinVendor_CoinCaseFullText:
	text "¡Uups! Tu monedero"
	line "está lleno."
	done

CoinVendor_CancelText:
	text "¿No quieres"
	line "fichas? Vuelve"
	cont "cuando quieras."
	done

BugContestPrizeNoRoomText:
	text "¡Oh! Tu mochila"
	line "está llena."

	para "Te guardaremos"
	line "esto. Vuelve"

	para "cuando tengas"
	line "sitio."
	done

HappinessText3:
	text "¡Uauu! ¡Tú y tus"
	line "Pokémon estáis"
	cont "muy unidos!"
	done

HappinessText2:
	text "Cuanto más tiempo"
	line "pases con los"

	para "Pokémon, más"
	line "te querrán."
	done

HappinessText1:
	text "No has domesticado"
	line "a tu Pokémon."

	para "Si no eres amable,"
	line "éste se enfadará."
	done

RegisteredNumber1Text:
	text "<PLAYER> grabó el"
	line "n.° de @"
	text_ram wStringBuffer3
	text "."
	done

RegisteredNumber2Text:
	text "<PLAYER> grabó el"
	line "n.° de @"
	text_ram wStringBuffer3
	text "."
	done
