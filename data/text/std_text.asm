NurseMornText:
NurseDayText:
	text "¡Bienvenido a"
	line "nuestro CENTRO"
	cont "#MON!"
	done

NurseNiteText:
	text "¡Buenas noches!"
	line "Bienvenido a"

	para "nuestro CENTRO"
	line "#MON."
	done

PokeComNurseMornText:
	text "¡Buenas!"

	para "Éste es el CENTRO"
	line "de COMUNICACIONES"

	para "#MON o"
	line "CENTRO #COM."
	done

PokeComNurseDayText:
	text "¡Hola!"

	para "Éste es el CENTRO"
	line "de COMUNICACIONES"

	para "#MON o"
	line "CENTRO #COM."
	done

PokeComNurseNiteText:
	text "Te veo trabajando"
	line "hasta tarde…"

	para "Éste es el CENTRO"
	line "de COMUNICACIONES"

	para "#MON o"
	line "CENTRO #COM."
	done

NurseAskHealText:
	text "¿Quieres curar a"
	line "tus #MON?"
	done

NurseTakePokemonText:
	text "Muy bien, déjame"
	line "tus #MON."
	done

NurseReturnPokemonText:
	text "Tus #MON están"
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
	text "Tus #MON"
	line "tienen minúsculas"

	para "formas de vida"
	line "unidas a ellos."

	para "Tus #MON están"
	line "sanos y parecen"
	cont "contentos."

	para "Pero no podemos"
	line "darte más"

	para "información en un"
	line "CENTRO #MON."
	done

PokeComNursePokerusText:
	text "Tus #MON"
	line "tienen minúsculas"

	para "formas de vida"
	line "unidas a ellos."

	para "Tus #MON están"
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
	cont "de #MON!"
	done

MagazineBookshelfText:
	text "#MON magazines…"
	line "#MON PAL,"

	para "#MON HANDBOOK,"
	line "#MON GRAPH…"
	done

TeamRocketOathText:
	text "TEAM ROCKET OATH"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

IncenseBurnerText:
	text "What is this?"

	para "Oh, it's an"
	line "incense burner!"
	done

MerchandiseShelfText:
	text "Lots of #MON"
	line "merchandise!"
	done

LookTownMapText:
	text "It's the TOWN MAP."
	done

WindowText:
	text "My reflection!"
	line "Lookin' good!"
	done

TVText:
	text "It's a TV."
	done

HomepageText:
	text "#MON JOURNAL"
	line "HOME PAGE…"

	para "It hasn't been"
	line "updated…"
	done

; not used
	text "#MON RADIO!"

	para "Call in with your"
	line "requests now!"
	done

TrashCanText:
	text "There's nothing in"
	line "here…"
	done

; not used
	text "A #MON may be"
	line "able to move this."
	done

; not used
	text "Maybe a #MON"
	line "can break this."
	done

PokecenterSignText:
	text "Heal Your #MON!"
	line "#MON CENTER"
	done

MartSignText:
	text "For All Your"
	line "#MON Needs"

	para "#MON MART"
	done

ContestResults_ReadyToJudgeText:
	text "We will now judge"
	line "the #MON you've"
	cont "caught."

	para "<……>"
	line "<……>"

	para "We have chosen the"
	line "winners!"

	para "Are you ready for"
	line "this?"
	done

ContestResults_PlayerWonAPrizeText:
	text "<PLAYER>, the No.@"
	text_ram wStringBuffer3
	text_start
	line "finisher, wins"
	cont "@"
	text_ram wStringBuffer4
	text "!"
	done

ReceivedItemText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

ContestResults_JoinUsNextTimeText:
	text "Please join us for"
	line "the next Contest!"
	done

ContestResults_ConsolationPrizeText:
	text "Everyone else gets"
	line "a BERRY as a con-"
	cont "solation prize!"
	done

ContestResults_DidNotWinText:
	text "We hope you do"
	line "better next time."
	done

ContestResults_ReturnPartyText:
	text "We'll return the"
	line "#MON we kept"

	para "for you."
	line "Here you go!"
	done

ContestResults_PartyFullText:
	text "Your party's full,"
	line "so the #MON was"

	para "sent to your BOX"
	line "in BILL's PC."
	done

GymStatue_CityGymText:
	text_ram wStringBuffer3
	text_start
	line "#MON GYM"
	done

GymStatue_WinningTrainersText:
	text "LEADER: @"
	text_ram wStringBuffer4
	text_start
	para "WINNING TRAINERS:"
	line "<PLAYER>"
	done

CoinVendor_WelcomeText:
	text "Welcome to the"
	line "GAME CORNER."
	done

CoinVendor_NoCoinCaseText:
	text "Do you need game"
	line "coins?"

	para "Oh, you don't have"
	line "a COIN CASE for"
	cont "your coins."
	done

CoinVendor_IntroText:
	text "Do you need some"
	line "game coins?"

	para "It costs ¥1000 for"
	line "50 coins. Do you"
	cont "want some?"
	done

CoinVendor_Buy50CoinsText:
	text "Thank you!"
	line "Here are 50 coins."
	done

CoinVendor_Buy500CoinsText:
	text "Thank you! Here"
	line "are 500 coins."
	done

CoinVendor_NotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	done

CoinVendor_CoinCaseFullText:
	text "Whoops! Your COIN"
	line "CASE is full."
	done

CoinVendor_CancelText:
	text "No coins for you?"
	line "Come again!"
	done

BugContestPrizeNoRoomText:
	text "Oh? Your PACK is"
	line "full."

	para "We'll keep this"
	line "for you today, so"

	para "come back when you"
	line "make room for it."
	done

HappinessText3:
	text "Wow! You and your"
	line "#MON are really"
	cont "close!"
	done

HappinessText2:
	text "#MON get more"
	line "friendly if you"

	para "spend time with"
	line "them."
	done

HappinessText1:
	text "You haven't tamed"
	line "your #MON."

	para "If you aren't"
	line "nice, it'll pout."
	done

RegisteredNumber1Text:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done

RegisteredNumber2Text:
	text "<PLAYER> registered"
	line "@"
	text_ram wStringBuffer3
	text "'s number."
	done
