_OakText6::
	text "¿Cómo has dicho"
	line "que te llamas?"
	prompt

_OakText7::
	text "<PLAYER>,"
	line "prepárate."

	para "Tu propia historia"
	line "Pokémon está a"
	cont "punto de empezar."

	para "Te divertirás y"
	line "te enfrentarás a"
	cont "duros desafíos."

	para "¡Te espera un"
	line "mundo de sueños y"

	para "aventuras con"
	line "Pokémon! ¡Vamos!"

	para "¡Nos vemos!"
	done

_ClockTimeMayBeWrongText::
	text "La hora del reloj"
	line "podría estar mal."

	para "Por favor, vuelve"
	line "a ponerlo en hora."
	prompt

_ClockSetWithControlPadText::
	text "Cambia la hora con"
	line "el Panel Control."

	para "Confirmar: Botón A"
	line "Cancelar:  Botón B"
	done

_ClockIsThisOKText::
	text "¿Estás de acuerdo?"
	done

_ClockHasResetText::
	text "Reloj puesto en"
	line "hora otra vez."
	done

_LinkTimeoutText::
	text "Ha pasado mucho"
	line "tiempo. Por favor,"
	cont "vuelve a probar."
	prompt

_LinkTradeCantBattleText::
	text "Si cambias ese"
	line "Pokémon, no"
	cont "podrás luchar."
	prompt

_LinkAbnormalMonText::
	text "¡El @"
	text_ram wStringBuffer1
	text_start
	line "de tu amigo/a no"
	cont "parece estar bien!"
	prompt

_LinkAskTradeForText::
	text "¿Cambiar"
	line "@"
	text_ram wBufferTrademonNickname
	text_start
	line "por @"
	text_ram wStringBuffer1
	text "?"
	done

_MobileBattleMustPickThreeMonText::
	text "To enter a mobile"
	line "battle, you must"

	para "pick a team of"
	line "three Pokémon."

	para "Is that OK?"
	done

_MobileBattleMoreInfoText::
	text "Need more info on"
	line "mobile battles?"
	done

_MobileBattleRulesText::
	text "For a mobile"
	line "battle, choose"
	cont "three Pokémon."

	para "The maximum daily"
	line "play time is ten"

	para "minutes for each"
	line "linked player."

	para "If a battle isn't"
	line "finished within"

	para "the time limit,"
	line "the player with"

	para "the fewest fainted"
	line "Pokémon wins."

	para "If tied, the team"
	line "that lost the"

	para "least amount of HP"
	line "wins."
	done

_WouldYouLikeToMobileBattleText::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."

	para "Would you like to"
	line "battle?"
	done

_WantAQuickMobileBattleText::
	text "There are only @"
	text_decimal wStringBuffer2, 1, 2
	text_start
	line "min. left today."

	para "Want a quick"
	line "battle?"
	done

_WantToRushThroughAMobileBattleText::
	text "There is only"
	line "1 min. left today!"

	para "Want to rush"
	line "through a battle?"
	done

_PleaseTryAgainTomorrowText::
	text "There is less than"
	line "1 min. left today!"

	para "Please try again"
	line "tomorrow."
	done

_TryAgainUsingSameSettingsText::
	text "Try again using"
	line "the same settings?"
	done

_MobileBattleLessThanOneMinuteLeftText::
	text "¡Apenas dispones"
	line "de un minuto!"
	done

_MobileBattleNoTimeLeftForLinkingText::
	text "Hoy no queda tiem-"
	line "po de conexión."
	done

_PickThreeMonForMobileBattleText::
	text "Pick three Pokémon"
	line "for battle."
	done

_MobileBattleRemainingTimeText::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."
	done

_WouldYouLikeToSaveTheGameText::
	text "¿Quieres guardar"
	line "el juego?"
	done

_SavingDontTurnOffThePowerText::
	text "GUARDANDO… NO"
	line "APAGAR LA CONSOLA."
	done

_SavedTheGameText::
	text "<PLAYER> guardó"
	line "el juego."
	done

_AnotherSaveFileText::
	text "Ya existe un"
	line "archivo guardado."
	cont "¿Sobrescribirlo?"
	done

_SaveFileCorruptedText::
	text "¡El archivo"
	line "guardado está"
	cont "corrupto!"
	prompt

_WindowAreaExceededErrorText:: ; unreferenced
	text "Se excedió el área"
	line "de guardar de la"
	cont "ventana."
	done

_WindowPoppingErrorText::
	text "No hay ventanas"
	line "emergentes."
	done

_CorruptedEventText:: ; unreferenced
	text "Corrupted event!"
	prompt

_ObjectEventText::
	text "Object event"
	done

_BGEventText::
	text "BG event"
	done

_CoordinatesEventText::
	text "Coordinates event"
	done

_ReceivedItemText::
	text "<PLAYER> recibió"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

_PutItemInPocketText::
	text "<PLAYER> puso"
	line "@"
	text_ram wStringBuffer1
	text " en"
	cont "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PocketIsFullText::
	text "La @"
	text_ram wStringBuffer3
	text_start
	line "está llena…"
	prompt

_SeerSeeAllText::
	text "He visto todo."
	line "Lo sé todo…"

	para "¡Ciertamente,"
	line "conozco tus"
	cont "Pokémon!"
	done

_SeerCantTellAThingText::
	text "¿Cómoooo? ¡No"
	line "puedo decir nada!"

	para "¿Cómo es posible"
	line "que no sepa esto?"
	done

_SeerNameLocationText::
	text "Mmm… Veo que"
	line "conociste a"

	para "@"
	text_ram wSeerNickname
	text " aquí:"
	line "¡@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

_SeerTimeLevelText::
	text "¡Fue de"
	line "@"
	text_ram wSeerTimeOfDay
	text "!"

	para "¡Su nivel era @"
	text_ram wSeerCaughtLevelString
	text "!"

	para "¿Soy buena o no?"
	prompt

_SeerTradeText::
	text "Mmm… ¿@"
	text_ram wSeerNickname
	text_start
	line "te lo intercambió"
	cont "@"
	text_ram wSeerOT
	text "?"

	para "¡@"
	text_ram wSeerCaughtLocation
	text " conoció"
	line "a @"
	text_ram wSeerOT
	text " en"
	cont "@"
	text_ram wSeerNickname
	text "!"
	prompt

_SeerNoLocationText::
	text "¿Qué? ¡Increíble!"

	para "¡No entiendo el"
	line "porqué, pero eres"

	para "increíble!"
	line "Eres especial."

	para "No puedo decirte"
	line "dónde lo conocis-"
	cont "te, pero tenía"
	cont "el nivel @"
	text_ram wSeerCaughtLevelString
	text "."

	para "¿Soy buena o no?"
	prompt

_SeerEggText::
	text "¡Eh!"

	para "¡Eso es un huevo!"

	para "Todavía no puedes"
	line "decir que le"
	cont "conoces…"
	done

_SeerDoNothingText::
	text "¡Fufufu! ¡Veo que"
	line "no has hecho nada!"
	done

_SeerMoreCareText::
	text "A propósito…"

	para "Estaría bien que"
	line "trataras a tus"

	para "Pokémon con un"
	line "poco más de"
	cont "cuidado."
	done

_SeerMoreConfidentText::
	text "A propósito…"

	para "Parece que ha"
	line "crecido un poco."

	para "¡A @"
	text_ram wSeerNickname
	text_start
	line "se le ve más"
	cont "seguro!"
	done

_SeerMuchStrengthText::
	text "A propósito…"

	para "@"
	text_ram wSeerNickname
	text " ha"
	line "crecido. Ha ganado"
	cont "mucha fuerza."
	done

_SeerMightyText::
	text "A propósito…"

	para "¡Ciertamente"
	line "es enorme!"

	para "Este @"
	text_ram wSeerNickname
	text_start
	line "debe de haber lu-"
	cont "chado en numerosos"
	cont "combates Pokémon."

	para "Se le ve muy"
	line "seguro."
	done

_SeerImpressedText::
	text "A propósito…"

	para "Estoy impresionada"
	line "con tu dedicación."

	para "Hacía mucho desde"
	line "la última vez que"

	para "vi a un Pokémon"
	line "tan poderoso como"
	cont "este @"
	text_ram wSeerNickname
	text "."

	para "Estoy segura de"
	line "que ver luchar a"

	para "@"
	text_ram wSeerNickname
	text " debe de"
	line "ser emocionante."
	done

_CongratulationsYourPokemonText::
	text "¡Enhorabuena!"
	line "¡Tu @"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EvolvedIntoText::
	text_start

	para "evolucionó en"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_StoppedEvolvingText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "no evolucionó!"
	prompt

_EvolvingText::
	text "¡@"
	text_ram wStringBuffer2
	text " está"
	line "evolucionando!"
	done

_MartHowManyText::
	text "¿Cuántas unidades?"
	done

_MartFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

_HerbShopLadyIntroText::
	text "Hola, joven."

	para "Vendo hierbas"
	line "medicinales."

	para "Son buenas, pero"
	line "un poco amargas."

	para "Quizá tus Pokémon"
	line "no las quieran."

	para "¡Je, je, je…!"
	done

_HerbalLadyHowManyText::
	text "¿Cuántas unidades?"
	done

_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

_HerbalLadyThanksText::
	text "Gracias, joven."
	line "¡Je, je, je…!"
	done

_HerbalLadyPackFullText::
	text "¡Oh! Tu mochila"
	line "está llena, joven."
	done

_HerbalLadyNoMoneyText::
	text "¡Je, je…! No"
	line "tienes ese dinero."
	done

_HerbalLadyComeAgainText::
	text "Vuelve otra vez."
	line "¡Je, je, je…!"
	done

_BargainShopIntroText::
	text "¡Oye! ¿Quieres ver"
	line "unas gangas?"

	para "Vendo objetos que"
	line "nadie posee, pero"

	para "sólo un objeto de"
	line "cada tipo."
	done

_BargainShopFinalPriceText::
	text_ram wStringBuffer2
	text_start
	line "cuesta @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	cont "¿Lo quieres?"
	done

_BargainShopThanksText::
	text "Gracias."
	done

_BargainShopPackFullText::
	text "¡Oh! Tu mochila"
	line "está a tope."
	done

_BargainShopSoldOutText::
	text "Eso ya lo has"
	line "comprado. No me"
	cont "quedan más."
	done

_BargainShopNoFundsText::
	text "¡Oh! No tienes"
	line "suficiente dinero."
	done

_BargainShopComeAgainText::
	text "Vuelve en otra"
	line "ocasión."
	done

_PharmacyIntroText::
	text "¿Qué quieres?"
	line "¿Alguna medicina?"
	done

_PharmacyHowManyText::
	text "¿Cuántas unidades?"
	done

_PharmacyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " unidad/es"
	line "de @"
	text_ram wStringBuffer2
	text_start
	cont "serán @"
	text_decimal hMoneyTemp, 3, 6
	text "¥."
	done

_PharmacyThanksText::
	text "¡Muchas gracias!"
	done

_PharmacyPackFullText::
	text "No te queda sitio."
	done

_PharmacyNoMoneyText::
	text "¿Eh? No tienes"
	line "bastante dinero."
	done

_PharmacyComeAgainText::
	text "De acuerdo."
	line "Hasta luego."
	done

_NothingToSellText::
	text "You don't have"
	line "anything to sell."
	prompt

_MartSellHowManyText::
	text "¿Cuántas unidades?"
	done

_MartSellPriceText::
	text "Puedo pagarte"
	line "@"
	text_decimal hMoneyTemp, 3, 6
	text "¥."

	para "¿Te parece bien?"
	done

_MartWelcomeText::
	text "¡Hola!"
	line "¿Qué deseas?"
	done

_MartThanksText::
	text "Aquí tienes."
	line "¡Gracias!"
	done

_MartNoMoneyText::
	text "No tienes"
	line "suficiente dinero."
	done

_MartPackFullText::
	text "No puedes llevar"
	line "más objetos."
	done

_MartCantBuyText::
	text "Lo siento, no"
	line "puedo comprártelo."
	prompt

_MartComeAgainText::
	text "¡Vuelve cuando"
	line "quieras!"
	done

_MartAskMoreText::
	text "¿Puedo ayudarte"
	line "en algo más?"
	done

_MartBoughtText::
	text "Recibiste @"
	text_decimal hMoneyTemp, 3, 6
	text " ¥"
	line "por @"
	text_ram wStringBuffer2
	text "."
	done

_SlotsBetHowManyCoinsText::
	text "¿Cuántas"
	line "fichas?"
	done

_SlotsStartText::
	text "¡Adelante!"
	done

_SlotsNotEnoughCoinsText::
	text "No tienes"
	line "bastantes fichas."
	prompt

_SlotsRanOutOfCoinsText::
	text "¡Vaya…! No me"
	line "quedan fichas…"
	done

_SlotsPlayAgainText::
	text "¿Vuelves a"
	line "jugar?"
	done

_SlotsLinedUpText::
	text "¡Línea! ¡Has"
	line "ganado @"
	text_ram wStringBuffer2
	text " fichas!"
	done

_SlotsDarnText::
	text "¡Fallaste!"
	done

_MobileStadiumEntryText::
	text "Los datos para"
	line "utilizar en el"

	para "Pokémon STADIUM 2"
	line "de Nintendo 64"

	para "pueden leerse"
	line "aquí."

	para "¿Lees los datos?"
	done

_MobileStadiumSuccessText::
	text "Datos"
	line "transferidos."

	para "Esperamos que"
	line "disfrutes con los"

	para "combates en"
	line "Pokémon STADIUM 2"
	cont "de N64."

	para ""
	done

_MainMenuTimeUnknownText::
	text "Hora desconocida"
	done

_DeleteSavedLoginPasswordText::
	text "Delete the saved"
	line "LOG-IN PASSWORD?"
	done

_DeletedTheLoginPasswordText::
	text "Deleted the LOG-IN"
	line "PASSWORD."
	done

_MobilePickThreeMonForBattleText::
	text "Pick three Pokémon"
	line "for battle."
	prompt

_MobileUseTheseThreeMonText::
	text_ram wMobileParticipant1Nickname
	text ","
	line "@"
	text_ram wMobileParticipant2Nickname
	text " and"
	cont "@"
	text_ram wMobileParticipant3Nickname
	text "."

	para "Use these three?"
	done

_MobileOnlyThreeMonMayEnterText::
	text "Only three Pokémon"
	line "may enter."
	prompt

_MobileCardFolderIntro1Text::
	text "The CARD FOLDER"
	line "stores your and"

	para "your friends'"
	line "CARDS."

	para "A CARD contains"
	line "information like"

	para "the person's name,"
	line "phone number and"
	cont "profile."

	para ""
	done

_MobileCardFolderIntro2Text::
	text "This is your CARD."

	para "Once you've"
	line "entered your phone"

	para "number, you can"
	line "trade CARDS with"
	cont "your friends."

	para ""
	done

_MobileCardFolderIntro3Text::
	text "If you have your"
	line "friend's CARD, you"

	para "can use it to make"
	line "a call from a"

	para "mobile phone on"
	line "the 2nd floor of a"
	cont "Pokémon CENTER."

	para ""
	done

_MobileCardFolderIntro4Text::
	text "To safely store"
	line "your collection of"

	para "CARDS, you must"
	line "set a PASSCODE for"
	cont "your CARD FOLDER."

	para ""
	done

_MobileCardFolderAskDeleteText::
	text "If the CARD FOLDER"
	line "is deleted, all"

	para "its CARDS and the"
	line "PASSCODE will also"
	cont "be deleted."

	para "Beware--a deleted"
	line "CARD FOLDER can't"
	cont "be restored."

	para "Want to delete"
	line "your CARD FOLDER?"
	done

_MobileCardFolderDeleteAreYouSureText::
	text "Are you sure you"
	line "want to delete it?"
	done

_MobileCardFolderDeletedText::
	text "The CARD FOLDER"
	line "has been deleted."

	para ""
	done

_MobileCardFolderAskOpenOldText::
	text "There is an older"
	line "CARD FOLDER from a"
	cont "previous journey."

	para "Do you want to"
	line "open it?"
	done

_MobileCardFolderAskDeleteOldText::
	text "Delete the old"
	line "CARD FOLDER?"
	done

_MobileCardFolderFinishRegisteringCardsText::
	text "Finish registering"
	line "CARDS?"
	done

_PhoneWrongNumberText::
	text "¿Eh? Perdona,"
	line "NUM equivocado."
	done

_PhoneClickText::
	text "¡Clic!"
	done

_PhoneEllipseText::
	text "<……>"
	done

_PhoneOutOfAreaText::
	text "Ese número no es"
	line "de esta zona."
	done

_PhoneJustTalkToThemText::
	text "¡No es necesario"
	line "llamar, está muy"
	cont "cerca!"
	done

_PhoneThankYouText::
	text "¡Gracias!"
	done

_SpaceSpaceColonText:: ; unreferenced
	text "  :"
	done

_PasswordAskResetText::
	text "Contraseña válida."
	line "Elige continuar"

	para "y cambia las"
	line "opciones."
	prompt

_PasswordWrongText::
	text "¡Contraseña"
	line "no válida!"
	prompt

_PasswordAskResetClockText::
	text "¿Cambias la hora?"
	done

_PasswordAskEnterText::
	text "Introduce la"
	line "contraseña."
	done

_ClearAllSaveDataText::
	text "¿Borras todos los"
	line "datos guardados?"
	done

_LearnedMoveText::
	text "¡@"
	text_ram wMonOrItemNameBuffer
	text_start
	line "ha aprendido"
	cont "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_waitbutton
	text_end

	text_end ; unreferenced

_MoveAskForgetText::
	text "¿Qué movimiento"
	next "debería olvidar?"
	done

_StopLearningMoveText::
	text "¿Deja de aprender"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "no aprendió"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "intenta aprender"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Pero"
	line "@"
	text_ram wMonOrItemNameBuffer
	text_start

	para "no puede aprender"
	line "más de cuatro"
	cont "movimientos."

	para "¿Borras movimiento"
	line "anterior para"

	para "dejar sitio a"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

Text_MoveForgetCount::
	text "1, 2 Y…@"
	text_pause
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text " ¡Puf!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " olvidó"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Y…"
	prompt

_MoveCantForgetHMText::
	text "Los movimientos MO"
	line "no se pueden"
	cont "olvidar ahora."
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "¿Quieres apostar"
	line "tres?"
	done

_CardFlipNotEnoughCoinsText::
	text "Faltan fichas."
	prompt

_CardFlipChooseACardText::
	text "Elige una carta."
	done

_CardFlipPlaceYourBetText::
	text "Haz tu apuesta."
	done

_CardFlipPlayAgainText::
	text "¿Vuelves a"
	line "jugar?"
	done

_CardFlipShuffledText::
	text "Has barajado el"
	line "mazo."
	prompt

_CardFlipYeahText::
	text "¡Sí!"
	done

_CardFlipDarnText::
	text "¡Fallaste…!"
	done

_GearTodayText::
	text_today
	text_end

	text_end ; unreferenced

_GearEllipseText::
	text "<……>"
	done

_GearOutOfServiceText::
	text "Estás fuera de"
	line "cobertura."
	prompt

_PokegearAskWhoCallText::
	text "¿A quién quieres"
	line "llamar?"
	done

_PokegearPressButtonText::
	text "Pulsa un botón"
	line "para salir."
	done

_PokegearAskDeleteText::
	text "¿Borras este"
	line "NUM de teléfono?"
	done

_BuenaAskWhichPrizeText::
	text "¿Qué premio"
	line "quieres?"
	done

_BuenaIsThatRightText::
	text "¿@"
	text_ram wStringBuffer1
	text "?"
	line "¿Vale?"
	done

_BuenaHereYouGoText::
	text "¡Vale!"

	para ""
	done

_BuenaNotEnoughPointsText::
	text "No tienes puntos"
	line "suficiente."

	para ""
	done

_BuenaNoRoomText::
	text "No tienes sitio"
	line "para esto."

	para ""
	done

_BuenaComeAgainText::
	text "Oh. ¡Por favor,"
	line "vuelve en otra"
	cont "ocasión!"
	done

_BTExcuseMeText::
	text "¡Disculpa!"

	para ""
	done

_ExcuseMeYoureNotReadyText::
	text "Discúlpame."
	line "No estás a punto."

	para ""
	done

_BattleTowerReturnWhenReadyText::
	text "Por favor, vuelve"
	line "cuando estés a"
	cont "punto."
	done

_NeedAtLeastThreeMonText::
	text "Necesitas al menos"
	line "tres Pokémon."

	para ""
	done

_EggDoesNotQualifyText::
	text "Lo siento."
	line "Un huevo no vale."

	para ""
	done

_OnlyThreeMonMayBeEnteredText::
	text "Sólo puedes usar"
	line "tres Pokémon."

	para ""
	done

_TheMonMustAllBeDifferentKindsText::
	text "Los @"
	text_ram wStringBuffer2
	text " Pokémon"
	line "deben ser diferen-"
	cont "tes."

	para ""
	done

_TheMonMustNotHoldTheSameItemsText::
	text "Los @"
	text_ram wStringBuffer2
	text " Pokémon no"
	line "pueden llevar los"
	cont "mismos objetos."

	para ""
	done

_YouCantTakeAnEggText::
	text "¡No puedes llevar"
	line "un huevo!"
	prompt

_BallDodgedText::
	text "¡Esquivó la ball!"

	para "¡Imposible atrapar"
	line "a este Pokémon!"
	prompt

_BallMissedText::
	text "¡Has perdido al"
	line "Pokémon!"
	prompt

_BallBrokeFreeText::
	text "¡No! ¡El Pokémon"
	line "se ha escapado!"
	prompt

_BallAppearedCaughtText::
	text "¡Parecía que lo"
	line "habías atrapado!"
	prompt

_BallAlmostHadItText::
	text "¡Vaya!"
	line "¡Te faltó poco!"
	prompt

_BallSoCloseText::
	text "¡Caray! ¡Casi"
	line "lo consigues!"
	prompt

Text_BallCaught::
	text "¡Ya está!"
	line "¡@"
	text_ram wEnemyMonNickname
	text_start
	cont "atrapado!@"
	sound_caught_mon
	text_end

	text_end ; unreferenced

_WaitButtonText::
	text_promptbutton
	text_end

	text_end ; unreferenced

_BallSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " fue"
	line "enviado a @"
	text_ram wStringBuffer1
	text "."
	prompt

_NewDexDataText::
	text "Registrados en la"
	line "<POKE>dex los datos"

	para "de @"
	text_ram wEnemyMonNickname
	text "."
	line "@"
	sound_slot_machine_start
	text_promptbutton
	text_end

	text_end ; unreferenced

_AskGiveNicknameText::
	text "¿Quieres darle"
	line "un mote a"
	cont "@"
	text_ram wStringBuffer1
	text "?"
	done

_ItemStatRoseText::
	text_ram wStringBuffer2
	text " de"
	line "@"
	text_ram wStringBuffer1
	text " creció."
	prompt

_ItemCantUseOnMonText::
	text "Eso no se puede"
	line "usar con este"
	cont "Pokémon."
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "Todavía funciona"
	line "el repelente que"
	cont "usaste antes."
	prompt

_PlayedFluteText::
	text "Escuchaste la"
	line "<POKE>flauta."

	para "¡Es una canción"
	line "muy pegadiza!"
	prompt

_FluteWakeUpText::
	text "Se han despertado"
	line "todos los Pokémon."
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER> sintonizó"
	line "el canal flauta"
	cont "Pokémon.@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_BlueCardBalanceText::
	text "Ahora tienes"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " puntos."
	done

_CoinCaseCountText::
	text "Fichas:"
	line "@"
	text_decimal wCoins, 2, 4
	text_end

	text_end ; unreferenced

_RaiseThePPOfWhichMoveText::
	text "¿A qué movimiento"
	line "quieres añadir PP?"
	done

_RestoreThePPOfWhichMoveText::
	text "¿Restaurar los PP"
	line "de qué movimiento?"
	done

_PPIsMaxedOutText::
	text "Los PP de"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "están al máximo."
	prompt

_PPsIncreasedText::
	text "Los PP de"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "han aumentado."
	prompt

_PPRestoredText::
	text "PP restaurados."
	prompt

_SentTrophyHomeText::
	text "¡Había un trofeo"
	line "dentro!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " envió"
	line "el trofeo a casa."
	prompt

_ItemLooksBitterText::
	text "Parece amarga…"
	prompt

_ItemCantUseOnEggText::
	text "Eso no se puede"
	line "usar con un huevo."
	prompt

_ItemOakWarningText::
	text "OAK: ¡<PLAYER>!"
	line "¡Éste no es el"
	cont "momento de usarlo!"
	prompt

_ItemBelongsToSomeoneElseText::
	text "¡Eso pertenece"
	line "a alguien!"
	prompt

_ItemWontHaveEffectText::
	text "No tendrá"
	line "ningún efecto."
	prompt

_BallBlockedText::
	text "¡El entrenador"
	line "bloqueó la ball!"
	prompt

_BallDontBeAThiefText::
	text "¡No robes Pokémon!"
	prompt

_NoCyclingText::
	text "Aquí no se permite"
	line "ir en bici."
	prompt

_ItemCantGetOnText::
	text "No puedes subir a"
	line "tu @"
	text_ram wStringBuffer1
	text "."
	prompt

_CurBoxFullText::
	text "@"
	text_ram wStringBuffer1
	text " está lleno."
	prompt

_StorageFullText::
	text "El sistema de al-"
	line "macenamiento Pokémon"
	cont "está lleno. Ahora"
	cont "no puedes usarla."
	prompt

_DatabaseFullText::
	; too technical? needs improvement
	text "The STORAGE SYSTEM"
	line "is overtaxed."

	para "You need to save"
	line "the game."
	prompt

_ItemUsedText::
	text "<PLAYER> usó"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> se montó@"
	text_low
	text "en la @"
	text_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> se bajó de@"
	text_low
	text "la @"
	text_ram wStringBuffer2
	text "."
	prompt

_KnowsMoveText::
	text_ram wStringBuffer1
	line "ya conoce"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_MoveKnowsOneText::
	text "Ese Pokémon"
	line "sólo conoce un"
	cont "movimiento."
	done

_AskDeleteMoveText::
	text "¿Le haces olvidar"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_DeleterForgotMoveText::
	text "¡Hecho! Tu Pokémon"
	line "olvidó el movi-"
	cont "miento."
	done

_DeleterEggText::
	text "¡Los huevos no"
	line "saben movimientos!"
	done

_DeleterNoComeAgainText::
	text "¿No? Vuelve"
	line "cuando quieras."
	done

_DeleterAskWhichMoveText::
	text "¿Qué movimiento"
	line "debería olvidar?"
	prompt

_DeleterIntroText::
	text "Soy el quita-"
	line "movimientos. Hago"

	para "olvidar movimien-"
	line "tos a los Pokémon."

	para "¿Quieres que"
	line "olviden algún"
	cont "movimiento?"
	done

_DeleterAskWhichMonText::
	text "¿Qué Pokémon?"
	prompt

_DSTIsThatOKText::
	text "."
	line "¿Correcto?"
	done

_TimeAskOkayText::
	text "."
	line "¿Correcto?"
	done

_TimesetAskDSTText::
	text "¿Quieres cambiar"
	line "el reloj al"
	cont "horario de verano?"
	done

_TimesetDSTText::
	text "He adelantado el"
	line "reloj una hora."
	prompt

_TimesetAskNotDSTText::
	text "¿Terminó el"
	line "horario de verano?"
	done

_TimesetNotDSTText::
	text "He atrasado el"
	line "reloj una hora."
	prompt

_TimesetAskAdjustDSTText::
	text "¿Quieres cambiar"
	line "el reloj al"
	cont "horario de verano?"
	done

_MomLostGearBookletText::
	text "He perdido las"
	line "instrucciones del"

	para "<POKE>gear."
	line "Vuelve dentro de"
	cont "un rato."
	prompt
