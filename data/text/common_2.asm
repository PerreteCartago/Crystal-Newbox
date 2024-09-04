_NoPhotoText::
	text "¿No quieres una"
	line "fotografía? Vuelve"
	cont "cuando quieras."
	done

_EggPhotoText::
	text "¿Un huevo? Mi ta-"
	line "lento vale más"
	cont "que eso…"
	done

_NameRaterHelloText::
	text "¡Hola a todos!"
	line "Soy el Inspector"

	para "de los motes."
	line "Evalúo los nombres"
	cont "de los Pokemon."

	para "¿Quieres evaluar"
	line "el nombre de"
	cont "algún Pokemon?"
	done

_NameRaterWhichMonText::
	text "¿Qué nombre de"
	line "Pokemon debería"
	cont "evaluar?"
	prompt

_NameRaterBetterNameText::
	text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "Es un nombre"
	cont "bastante bueno."

	para "Pero, ¿qué te"
	line "parece mejorarlo"
	cont "un poco?"

	para "¿Quieres que le dé"
	line "otro nombre?"
	done

_NameRaterWhatNameText::
	text "Muy bien."
	line "¿Cómo podríamos"
	cont "llamarlo?"
	prompt

_NameRaterFinishedText::
	text "¡Ese nombre es"
	line "mejor que el"
	cont "anterior!"

	para "¡Bien hecho!"
	done

_NameRaterComeAgainText::
	text "Muy bien. Vuelve"
	line "cuando quieras."
	done

_NameRaterPerfectNameText::
	text "¿@"
	text_ram wStringBuffer1
	text "?"
	line "¡Qué buen nombre!"
	cont "Es perfecto."

	para "Trata a"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "con mucho cariño."
	done

_NameRaterEggText::
	text "¡Uauu…! Eso es"
	line "un huevo."
	done

_NameRaterSameNameText::
	text "¡Se parece al"
	line "anterior, pero"

	para "este nombre es"
	line "mucho mejor!"

	para "¡Bien hecho!"
	done

_NameRaterNamedText::
	text "Muy bien. Ahora"
	line "este Pokemon se"
	cont "llama @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text "¡@"
	text_ram wStringBuffer1
	text " ganó@"
	text_end

_BoostedExpPointsText::
	text_start
	line "un total de"
	cont "@"
	text_decimal wStringBuffer2, 2, 5
	text " Puntos EXP.!"
	prompt

_ExpPointsText::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 5
	text " Puntos EXP.!"
	prompt

_GoMonText::
	text "¡Adelante,"
	line "@"
	text_end

_DoItMonText::
	text "¡Hazlo,"
	line "@"
	text_end

_GoForItMonText::
	text "¡Adelante,"
	line "@"
	text_end

_YourFoesWeakGetmMonText::
	text "¡Tu enemigo está"
	line "débil! ¡A por él,"
	cont "@"
	text_end

_BattleMonNicknameText::
	text_ram wBattleMonNickname
	text "!"
	done

_BattleMonNickCommaText::
	text "¡@"
	text_ram wBattleMonNickname
	text ",@"
	text_end

_ThatsEnoughComeBackText::
	text " bien"
	line "hecho! ¡Vuelve!@"
	text_end

_OKComeBackText::
_GoodComeBackText::
	text " bien!"
	line "¡Vuelve!@"
	text_end

_ComeBackText::
	text_start
	line "vuelve!"
	done

_BootedTMText::
	text "Elegida una MT."
	prompt

_BootedHMText::
	text "Elegida una MO."
	prompt

_ContainedMoveText::
	text "Ésta contiene"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "¿Enseñas"
	line "@"
	text_ram wStringBuffer2
	text_start
	cont "a un Pokemon?"
	done

_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text_start
	line "no es compatible"
	cont "con @"
	text_ram wStringBuffer1
	text "."

	para "No puede aprender"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_NoRoomTMHMText::
	text "No tienes sitio"
	line "para más"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

_ReceivedTMHMText::
	text "¡Recibiste"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

_MysteryGiftCanceledText::
	text "La conexión ha"
	line "sido cancelada."
	prompt

_MysteryGiftCommErrorText::
	text "Error de"
	line "comunicación."
	prompt

_RetrieveMysteryGiftText::
	text "Debes recoger el"
	line "regalo en el"
	cont "Centro Pokemon."
	prompt

_YourFriendIsNotReadyText::
	text "Tu amigo/a no está"
	line "preparado/a."
	prompt

_MysteryGiftFiveADayText::
	text "Lo siento. Sólo"
	line "5 regalos al día."
	prompt

_MysteryGiftOneADayText::
	text "Lo siento. Sólo un"
	line "regalo al día por"
	cont "persona."
	prompt

_MysteryGiftSentText::
	text_ram wMysteryGiftPartnerName
	text_start
	line "envió"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MysteryGiftSentHomeText::
	text_ram wMysteryGiftPartnerName
	text_start
	line "envió"

	para "@"
	text_ram wStringBuffer1
	line "a casa de"
	cont "@"
	text_ram wMysteryGiftPlayerName
	text "."
	prompt

_NameCardReceivedCardText::
	text "Received"
	line "@"
	text_ram wMysteryGiftCardHolderName
	text "'s CARD."
	prompt

_NameCardListedCardText::
	text_ram wMysteryGiftCardHolderName
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wTextDecimalByte, 1, 2
	text "."
	prompt

_NameCardNotRegisteredCardText::
	text "The CARD was not"
	line "registered."
	prompt

_NameCardLinkCancelledText::
	text "The link has been"
	line "cancelled."
	prompt

_NameCardLinkCommErrorText::
	text "Communication"
	line "error."
	prompt

_BadgeRequiredText::
	text "Necesitas una"
	line "nueva medalla."
	prompt

_CantUseItemText::
	text "Aquí no puedes"
	line "usar eso."
	prompt

_UseCutText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó corte!"
	prompt

_CutNothingText::
	text "Aquí no hay nada"
	line "que cortar."
	prompt

_BlindingFlashText::
	text "¡Un destello"
	line "ilumina la zona!@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_UsedSurfText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó surf!"
	done

_CantSurfText::
	text "Aquí no puedes"
	line "hacer surf."
	prompt

_AlreadySurfingText::
	text "Ya estás"
	line "haciendo surf."
	prompt

_AskSurfText::
	text "El agua está en"
	line "calma. ¿Quieres"
	cont "hacer surf?"
	done

_UseWaterfallText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó cascada!"
	done

_HugeWaterfallText::
	text "¡Uauu! Es una"
	line "enorme cascada."
	done

_AskWaterfallText::
	text "¿Quieres usar"
	line "cascada?"
	done

_UseDigText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó excavar!"
	done

_UseEscapeRopeText::
	text "<PLAYER>"
	line "usó cuerda huida."
	done

_CantUseDigText::
	text "Aquí no puedes"
	line "usar eso."
	done

_TeleportReturnText::
	text "Vuelta al último"
	line "Centro Pokemon."
	done

_CantUseTeleportText::
	text "Aquí no puedes"
	line "usar eso."
	prompt

_AlreadyUsingStrengthText::
	text "Ya hay un Pokemon"
	line "usando fuerza."
	prompt

_UseStrengthText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó fuerza!"
	done

_MoveBoulderText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "puede mover las"
	cont "piedras."
	prompt

_AskStrengthText::
	text "Un Pokemon podría"
	line "moverla."

	para "¿Quieres usar"
	line "fuerza?"
	done

_BouldersMoveText::
	text "¡Ahora se pueden"
	line "mover las piedras!"
	done

_BouldersMayMoveText::
	text "Un Pokemon podría"
	line "moverla."
	done

_UseWhirlpoolText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó torbellino!"
	prompt

_MayPassWhirlpoolText::
	text "¡Un horrible"
	line "torbellino!"

	para "Un Pokemon"
	line "podría cruzarlo."
	done

_AskWhirlpoolText::
	text "Hay un torbellino"
	line "en el camino."

	para "¿Quieres usar"
	line "torbellino?"
	done

_UseHeadbuttText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó golpe cabeza!"
	prompt

_HeadbuttNothingText::
	text "No. Nada…"
	done

_AskHeadbuttText::
	text "En este árbol"
	line "podría haber un"
	cont "Pokemon."

	para "¿Quieres usar"
	line "golpe cabeza?"
	done

_UseRockSmashText::
	text "¡@"
	text_ram wStringBuffer2
	text_start
	line "usó golpe roca!"
	prompt

_MaySmashText::
	text "Un Pokemon"
	line "podría romperla."
	done

_AskRockSmashText::
	text "Esta roca se puede"
	line "romper."

	para "¿Quieres usar el"
	line "golpe roca?"
	done

_RodBiteText::
	text "¡Oh!"
	line "¡Han picado!"
	prompt

_RodNothingText::
	text "¡No pican!"
	prompt

_UnusedNothingHereText::
	text "Parece que aquí no"
	line "hay nada."
	prompt

_CantGetOffBikeText::
	text "¡Aquí no puedes"
	line "bajarte!"
	done

_GotOnBikeText::
	text "<PLAYER>"
	line "se montó en la"
	cont "@"
	text_ram wStringBuffer2
	text "."
	done

_GotOffBikeText::
	text "<PLAYER>"
	line "se bajó de la"
	cont "@"
	text_ram wStringBuffer2
	text "."
	done

_AskCutText::
	text "¡Este árbol se"
	line "puede cortar!"

	para "¿Utilizas corte?"
	done

_CanCutText::
	text "¡Este árbol se"
	line "puede cortar!"
	done

_FoundItemText::
	text "¡<PLAYER> encontró"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_CantCarryItemText::
	text "¡Pero <PLAYER> no"
	line "puede llevar más"
	cont "objetos!"
	done

_WhitedOutText::
	text "¡A <PLAYER> no le"
	line "quedan Pokemon!"

	para "¡<PLAYER> perdió"
	line "el conocimiento!"
	done

_ItemfinderItemNearbyText::
	text "El buscaobjetos"
	line "indica que hay un"
	cont "objeto cerca."
	prompt

_ItemfinderNopeText::
	text "El buscaobjetos"
	line "no responde."
	prompt

_PoisonFaintText::
	text "¡@"
	text_ram wStringBuffer3
	text_start
	line "debilitado!"
	prompt

_PoisonWhiteoutText::
	text "¡A <PLAYER> no le"
	line "quedan Pokemon!"

	para "¡<PLAYER> perdió"
	line "el conocimiento!"
	prompt

_UseSweetScentText::
	text "¡@"
	text_ram wStringBuffer3
	text_start
	line "usó Dulce Aroma!"
	done

_SweetScentNothingText::
	text "Parece que aquí no"
	line "hay nada…"
	done

_SquirtbottleNothingText::
	text "<PLAYER> lo regó."

	para "Pero no pasó nada…"
	done

_UseSacredAshText::
	text "¡Todos los Pokemon"
	line "de <PLAYER> fueron"
	cont "curados!"
	done

_AnEggCantHoldAnItemText::
	text "Un huevo no puede"
	line "llevar un objeto."
	prompt

_PackNoItemText::
	text "No hay objetos."
	done

_AskThrowAwayText::
	text "¿Cuántos quieres"
	line "tirar?"
	done

_AskQuantityThrowAwayText::
	text "¿Tirar @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "unidad/es de"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_ThrewAwayText::
	text "Tiró"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_OakThisIsntTheTimeText::
	text "Oak: ¡<PLAYER>!"
	line "¡Éste no es el"
	cont "momento de usarlo!"
	prompt

_YouDontHaveAMonText::
	text "¡No tienes"
	line "ningún Pokemon!"
	prompt

_RegisteredItemText::
	text_ram wStringBuffer2
	text_start
	line "asig. a Select."
	prompt

_CantRegisterText::
	text "Ese objeto no se"
	line "puede registrar."
	prompt

_AskItemMoveText::
	text "¿Adónde quieres"
	line "moverlo?"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "No puedes usarlo"
	line "en un combate."
	prompt

_AreYouABoyOrAreYouAGirlText::
	text "¿Eres un chico?"
	line "¿O eres una chica?"
	done

Text_BattleEffectActivate::
	text "¡@"
	text_ram wStringBuffer2
	text " de"
	line "<USER>@"
	text_end

	text_end ; unreferenced

_BattleStatWentWayUpText::
	text_pause
	text "<SCROLL>subió mucho!"
	prompt

_BattleStatWentUpText::
	text_start
	cont "subió!"
	prompt

Text_BattleFoeEffectActivate::
	text "¡@"
	text_ram wStringBuffer2
	text " de"
	line "<TARGET>@"
	text_end

	text_end ; unreferenced

_BattleStatSharplyFellText::
	text_pause
	text "<SCROLL>bajó mucho!"
	prompt

_BattleStatFellText::
	text_start
	cont "bajó!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text_start
	line "hizo un remolino."
	prompt

_BattleTookSunlightText::
	text_start
	line "tomó luz solar."
	prompt

_BattleLoweredHeadText::
	text_start
	line "bajó su cabeza."
	prompt

_BattleGlowingText::
	text_start
	line "está brillando."
	prompt

_BattleFlewText::
	text_start
	line "voló muy alto."
	prompt

_BattleDugText::
	text_start
	line "excavó un agujero."
	prompt

_ActorNameText::
	text "¡<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "usó @"
	text_end

_UsedMove2Text::
	text_start
	line "usó @"
	text_end

_UsedInsteadText::
	text "otro ataque,"
	cont "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

Text_BreedHuh::
	text "¿Qué?"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "salió del"
	cont "huevo!@"
	sound_caught_mon
	text_promptbutton
	text_end

	text_end ; unreferenced

_BreedAskNicknameText::
	text "¿Quieres darle"
	line "un mote a"
	cont "@"
	text_ram wStringBuffer1
	text "?"
	done

_LeftWithDayCareLadyText::
	text "Es el @"
	text_ram wBreedMon2Nickname
	text_start
	line "que dejé con la"

	para "encargada de la"
	line "Guardería."
	done

_LeftWithDayCareManText::
	text "Es el @"
	text_ram wBreedMon1Nickname
	text_start
	line "que dejé con el"

	para "encargado de la"
	line "Guardería."
	done

_BreedBrimmingWithEnergyText::
	text "Está rebosante"
	line "de energía."
	prompt

_BreedNoInterestText::
	text "No está interesado"
	line "en @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedAppearsToCareForText::
	text "Está interesado"
	line "en @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedFriendlyText::
	text "Es agradable con"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedShowsInterestText::
	text "Muestra interés"
	line "por @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "Aquí no hay"
	line "ninguna carta."
	prompt

_MailClearedPutAwayText::
	text "La carta fue"
	line "enviada."
	prompt

_MailPackFullText::
	text "¡Mochila llena!"
	prompt

_MailMessageLostText::
	text "Perderás el"
	line "mensaje de la"
	cont "carta. ¿Vale?"
	done

_MailAlreadyHoldingItemText::
	text "Ya lleva un"
	line "objeto."
	prompt

_MailEggText::
	text "Un huevo no puede"
	line "llevar cartas."
	prompt

_MailMovedFromBoxText::
	text "La carta fue"
	line "sacada del buzón."
	prompt

_YesPromptText:: ; unreferenced
	text "Yes"
	prompt

_NoPromptText:: ; unreferenced
	text "No"
	prompt

_AnimationTypeText:: ; unreferenced
	text_decimal wcf64, 1, 3
	text " @"
	text_ram wStringBuffer1
	text_start
	line "Animation type @"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_MonNumberText::
	text "¿NUM de Pokemon?"
	done

_WasSentToBillsPCText::
	text_ram wStringBuffer1
	text_start
	line "fue enviado al"
	cont "PC de BILL."
	prompt

_PCGottaHavePokemonText::
	text "¡Necesitas Pokemon"
	line "a los que llamar!"
	prompt

_PCWhatText::
	text "¿Qué quieres"
	line "hacer?"
	done

_PCMonHoldingMailText::
	text "Hay un Pokemon que"
	line "lleva una carta."

	para "Por favor, quita"
	line "la carta."
	prompt

_PCNoSingleMonText::
	text "¡No tienes ni un"
	line "solo Pokemon!"
	prompt

_PCCantDepositLastMonText::
	text "¡No puedes dejar"
	line "tu último Pokemon!"
	prompt

_PCCantTakeText::
	text "No puedes recoger"
	line "más Pokemon."
	prompt

_ContestCaughtMonText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "atrapado!"
	prompt

_ContestAskSwitchText::
	text "¿Cambiar Pokemon?"
	done

_ContestAlreadyCaughtText::
	text "Ya tienes un"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_ContestJudging_FirstPlaceText::
	text "El ganador de este"
	line "Concurso de"

	para "Captura de Bichos"
	line "es@"
	text_pause
	text "…"

	para "¡@"
	text_ram wBugContestWinnerName
	text ","
	line "que atrapó un"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "¡La puntuación"
	line "ganadora fue de"
	cont "@"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " puntos!"
	prompt

_ContestJudging_SecondPlaceText::
	text "¡El segundo lugar"
	line "fue para"
	
	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "que atrapó un"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "¡La puntuación"
	line "fue de"
	cont "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " puntos!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "¡El tercer lugar"
	line "fue para"

	para "@"
	text_ram wBugContestWinnerName
	text ","

	line "que atrapó un"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "¡La puntuación"
	line "fue de"
	cont "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " puntos!"
	prompt

_MagikarpGuruMeasureText::
	text "Déjame que mida a"
	line "ese Magikarp."

	para "¡Mmmmm…! Mide"
	line "@"
	text_ram wStringBuffer1
	text " cm."
	prompt

_KarpGuruRecordText::
	text "RÉCORD ACTUAL"

	para "@"
	text_ram wStringBuffer1
	text " cm,"
	line "fue atrapado por"
	cont "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

	text_end ; unreferenced

_LuckyNumberMatchPartyText::
	text "¡Enhorabuena!"

	para "Coincide con el"
	line "número ID de"

	text_decimal wBufferMonID, 2, 5
	text_start
	line "de tu equipo."
	prompt

_LuckyNumberMatchPCText::
	text "¡Enhorabuena!"

	para "Coincide con el"
	line "número ID de"

	para "@"
	text_decimal wBufferMonID, 2, 5
	text " "
	line "de tu CAJA del PC"
	cont "“@"
	text_ram wStringBuffer1
	text "”."
	prompt

_CaughtAskNicknameText::
	text "¿Le das un mote al"
	line "@"
	text_ram wStringBuffer1
	text " que"
	cont "has recibido?"
	done

_PokecenterPCCantUseText::
	text "¡Bzzzz! ¡Para usar"
	line "esto necesitas un"
	cont "Pokemon!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER> encendió"
	line "el PC."
	prompt

_PlayersPCAskWhatDoText::
	text "¿Qué quieres"
	line "hacer?"
	done

_PlayersPCHowManyWithdrawText::
	text "¿Cuántos quieres"
	line "sacar?"
	done

_PlayersPCWithdrewItemsText::
	text "Sacaste @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "unidad/es de"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "No hay sitio para"
	line "más objetos."
	prompt

_PlayersPCNoItemsText::
	text "¡No tienes"
	line "objetos!"
	prompt

_PlayersPCHowManyDepositText::
	text "¿Cuántos quieres"
	line "dejar?"
	done

_PlayersPCDepositItemsText::
	text "Dejaste @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "unidad/es de"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PlayersPCNoRoomDepositText::
	text "No hay sitio donde"
	line "guardar objetos."
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER> encendió"
	line "el PC."
	prompt

_PokecenterPCWhoseText::
	text "¿Acceder a qué PC?"
	done

_PokecenterBillsPCText::
	text "Accedes al PC de"
	line "Bill."

	para "Accedes al Sistema"
	line "de Almacenamiento"
	cont "de los Pokemon."
	prompt

_PokecenterPlayersPCText::
	text "Accedes a tu PC."

	para "Accedes al Sistema"
	line "de Almacenamiento"
	cont "de Objetos."
	prompt

_PokecenterOaksPCText::
	text "Accedes al PC del"
	line "Prof. Oak."

	para "Accedes al Sistema"
	line "de Evaluación de"
	cont "la <POKE>dex."
	prompt

_PokecenterPCOaksClosedText::
	text "Conexión cerrada."
	done

_OakPCText1::
	text "¿Quieres evaluar"
	line "tu <POKE>dex?"
	done

_OakPCText2::
	text "Nivel actual de"
	line "la <POKE>dex:"
	prompt

_OakPCText3::
	text "Viste: @"
	text_ram wStringBuffer3
	text " Pokemon"
	line "Tuyos: @"
	text_ram wStringBuffer4
	text " Pokemon"

	para "Evaluación del"
	line "Prof. Oak:"
	done

_OakRating01::
	text "¡Busca Pokemon en"
	line "zonas de hierba!"
	done

_OakRating02::
	text "Bien. Ya veo que"
	line "sabes cómo usar"
	cont "las <POKE>ball."
	done

_OakRating03::
	text "Lo estás haciendo"
	line "bien, pero tienes"

	para "un largo camino"
	line "por recorrer."
	done

_OakRating04::
	text "Debes completar la"
	line "<POKE>dex. Atrapa"

	para "diferentes tipos"
	line "de Pokemon."
	done

_OakRating05::
	text "Ya veo que te"
	line "estás esforzando."

	para "Tu <POKE>dex empieza"
	line "a llenarse."
	done

_OakRating06::
	text "Para evolucionar,"
	line "algunos Pokemon"

	para "crecen y otros"
	line "usan las piedras."
	done

_OakRating07::
	text "¿Tienes una caña?"
	line "Puedes atrapar"

	para "algunos Pokemon"
	line "pescando."
	done

_OakRating08::
	text "¡Excelente!"
	line "¡Parece que te"

	para "gusta coleccionar"
	line "cosas!"
	done

_OakRating09::
	text "Algunos Pokemon"
	line "sólo aparecen a"

	para "ciertas horas del"
	line "día."
	done

_OakRating10::
	text "Tu <POKE>dex se"
	line "está llenando."
	cont "¡Sigue así!"
	done

_OakRating11::
	text "¡Impresionante!"
	line "No sólo atrapas"

	para "Pokemon, también"
	line "evolucionan."
	done

_OakRating12::
	text "¿Conoces a CÉSAR?"
	line "Sus <POKE>ball"

	para "personalizadas son"
	line "de gran ayuda."
	done

_OakRating13::
	text "¡Uauu! Tienes más"
	line "Pokemon que en"

	para "la <POKE>dex"
	line "anterior."
	done

_OakRating14::
	text "¿Estás cambiando"
	line "tus Pokemon?"

	para "¡Es duro hacerlo"
	line "en solitario!"
	done

_OakRating15::
	text "¡Uau! ¡Tienes 200!"
	line "¡Tu <POKE>dex es"
	cont "estupenda!"
	done

_OakRating16::
	text "¡Tienes tantos"
	line "Pokemon! ¡Me"

	para "has ayudado mucho"
	line "en mis estudios!"
	done

_OakRating17::
	text "¡Genial! ¡Podrías"
	line "convertirte en un"

	para "profesor Pokemon"
	line "ahora mismo!"
	done

_OakRating18::
	text "¡Tu <POKE>dex es"
	line "increíble!"

	para "¡Eres muy"
	line "profesional!"
	done

_OakRating19::
	text "¡Uau! ¡Una <POKE>dex"
	line "perfecta! ¡Mi"

	para "sueño cumplido!"
	line "¡Enhorabuena!"
	done

_OakPCText4::
	text "Cerrado enlace al"
	line "PC del Prof. Oak."
	done

_TrainerRankingExplanationText:: ; unreferenced
	text "Triple-theme"
	line "trainer ranking!"

	para "The SAVE file you"
	line "just sent might"
	cont "make the rankings!"

	para ""
	done

_TrainerRankingNoDataText:: ; unreferenced
	text "There is no"
	line "ranking data."

	para "Link to obtain"
	line "ranking data."

	para ""
	done

_MemoryGameYeahText::
	text " , yeah!"
	done

_MemoryGameDarnText::
	text "Darn…"
	done

_StartMenuContestEndText::
	text "¿Salir del"
	line "Concurso?"
	done

_ItemsTossOutHowManyText::
	text "¿Cuántas unidades"
	line "de @"
	text_ram wStringBuffer2
	cont "quieres tirar?"
	done

_ItemsThrowAwayText::
	text "¿Tirar @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "unidad/es de"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_ItemsDiscardedText::
	text "Tiraste"
	line "@"
	text_ram wStringBuffer1
	text "(S)."
	prompt

_ItemsTooImportantText::
	text "¡Es demasiado"
	line "importante para"
	cont "tirarlo!"
	prompt

_ItemsOakWarningText::
	text "Oak: ¡<PLAYER>!"
	line "¡Éste no es el"
	cont "momento de usarlo!"
	done

_PokemonSwapItemText::
	text "Quitaste"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "de @"
	text_ram wMonOrItemNameBuffer
	text_start

	para "y le diste"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonHoldItemText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "lleva ahora"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonRemoveMailText::
	text "Primero quita"
	line "la carta."
	prompt

_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "no lleva nada."
	prompt

_ItemStorageFullText::
	text "Caja de objetos"
	line "llena."
	prompt

_PokemonTookItemText::
	text "Quitaste"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "a @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text_start 
	line "ya va equipado con"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "¿Cambiar objetos?"
	done

_ItemCantHeldText::
	text "Este objeto no"
	line "puede ser llevado."
	prompt

_CantPlaceMailInStorageText::
	text "No se puede poner"
	line "una carta aquí."
	prompt

_MailLoseMessageText::
	text "¿O prefieres"
	line "borrar el mensaje?"
	done

_MailDetachedText::
	text "Quitada carta de"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MailNoSpaceText::
	text "No hay bastante"
	line "espacio para"
	cont "quitar la carta."
	prompt

_MailAskSendToPCText::
	text "¿Enviar la"
	line "carta a tu PC?"
	done

_MailboxFullText::
	text "El Buzón de tu"
	line "PC está lleno."
	prompt

_MailSentToPCText::
	text "La carta fue"
	line "enviada a tu PC."
	prompt

_PokemonNotEnoughHPText::
	text "¡PS insuficientes!"
	prompt

_MayRegisterItemText::
	text "Puedes asignar un"
	line "objeto de tu"

	para "mochila al botón"
	line "Select."
	done

_OakText1::
	text "¡Hola! ¡Perdona"
	line "por la espera!"

	para "¡Estás en el"
	line "mundo de los"
	cont "Pokemon!"

	para "Me llamo Oak."

	para "Pero me llaman"
	line "profesor Pokemon."
	prompt

_OakText2::
	text "Este mundo está"
	line "habitado por unas"

	para "criaturas llamadas"
	line "Pokemon.@"
	text_end

_OakText3::
	text_waitbutton
	text_end

	text_end ; unused

_OakText4::
	text "La gente y los"
	line "Pokemon conviven"

	para "ayudándose unos"
	line "a otros."

	para "Algunos juegan con"
	line "los Pokemon, otros"
	cont "luchan con ellos."
	prompt

_OakText5::
	text "Pero aún hay"
	line "muchas cosas que"
	cont "no sabemos."

	para "Quedan muchos"
	line "misterios por"
	cont "resolver. Por eso"

	para "estudio a diario"
	line "a los Pokemon."
	prompt
