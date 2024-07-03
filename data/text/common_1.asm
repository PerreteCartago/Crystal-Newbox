_FruitBearingTreeText::
	text "Es un árbol"
	line "frutal."
	done

_HeyItsFruitText::
	text "¡Mira, una"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "¡Obtienes"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "Pero la MOCHILA"
	line "está llena…"
	done

_NothingHereText::
	text "Aquí no hay"
	line "nada…"
	done

_WhichApricornText::
	text "¿Qué Bonguri debo"
	line "utilizar?"
	done

_HowManyShouldIMakeText::
	text "¿Cuántas debo"
	line "hacer?"
	done

_RecoveredSomeHPText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "recuperó @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text " PS!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text_start
	line "curado del veneno."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text_start
	line "curado de"
	cont "parálisis."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text_start
	line "curado de"
	cont "quemaduras."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "fue descongelado."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "se despertó."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text_start
	line "recuperó la salud."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "es revitalizado."
	done

_GrewToLevelText::
	text "¡@"
	text_ram wStringBuffer1
	text_start
	line "subió al nivel"
	cont "@"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_promptbutton
	text_end

	text_end ; unreferenced

_CameToItsSensesText::
	text_ram wStringBuffer1
	text_start
	line "recuperó el"
	cont "conocimiento."
	done

_EnterNewPasscodeText::
	text "Por favor, mete"
	line "cualquier número"
	cont "de 4 cifras."
	done

_ConfirmPasscodeText::
	text "Introduce el mismo"
	line "número para"
	cont "confirmar."
	done

_PasscodesNotSameText::
	text "Ése no es el"
	line "mismo número."
	done

_PasscodeSetText::
	text "PASSWORD"
	line "fijado."

	para "Introduce este"
	line "número la próxima"

	para "vez para abrir el"
	line "TARJETERO."
	prompt

_FourZerosInvalidText::
	text "¡0000 no es"
	line "válido!"
	prompt

_EnterPasscodeText::
	text "Introduce el"
	next "CÓDIGO del"
	cont "TARJETERO."
	done

_IncorrectPasscodeText::
	text "¡CÓDIGO"
	line "incorrecto!"
	prompt

_CardFolderOpenText::
	text "TARJETERO"
	line "abierto.@"
	text_end

_OakTimeWokeUpText::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "¡Zzz…! ¿Qué…?"
	line "¡Me despertaste!"

	para "¿Te importaría"
	line "decirme la hora?"
	prompt

_OakTimeWhatTimeIsItText::
	text "¿Qué hora es?"
	done

_OakTimeWhatHoursText::
	text "¿Qué?@"
	text_end

_OakTimeHoursQuestionMarkText::
	text "?"
	done

_OakTimeHowManyMinutesText::
	text "¿Cuántos minutos?"
	done

_OakTimeWhoaMinutesText::
	text "¡Uauu!@"
	text_end

_OakTimeMinutesQuestionMarkText::
	text "?"
	done

_OakTimeOversleptText::
	text "!"
	line "¡Me he"
	cont "quedado dormido!"
	done

_OakTimeYikesText::
	text "!"
	line "¡Caray! ¡Me he"
	cont "quedado dormido!"
	done

_OakTimeSoDarkText::
	text "!"
	line "¡No me extraña que"
	cont "esté tan oscuro!"
	done

_OakTimeWhatDayIsItText::
	text "¿Qué día es hoy?"
	done

_OakTimeIsItText::
	text ", ¿vale?"
	done

; Mobile Adapter

_ThereIsNothingConnectedText:: ; unreferenced
	text "There is nothing"
	line "connected."
	done

_CheckCellPhoneAdapterText:: ; unreferenced
	text "Check cell phone"
	line "adapter."
	done

_CheckCDMAAdapterText:: ; unreferenced
	text "Check CDMA"
	line "adapter."
	done

_CheckDOCOMOPHSAdapterText:: ; unreferenced
	text "Check DOCOMO PHS"
	line "adapter."
	done

_CheckDDIPHSAdapterText:: ; unreferenced
	text "Check DDI PHS"
	line "adapter."
	done

_CheckMobileAdapterText:: ; unreferenced
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done

; Mobile Adapter End

_ThePasswordIsText:: ; unreferenced
	text "The password is:"
	line ""
	done

_IsThisOKText:: ; unreferenced
	text "Is this OK?"
	done

_EnterTheIDNoText:: ; unreferenced
	text "Enter the"
	line "ID no."
	done

_EnterTheAmountText:: ; unreferenced
	text "Introduce la"
	line "cantidad."
	done

_NothingToChooseText::
	text "No hay nada que"
	line "puedas elegir."
	prompt

_WhichSidePutOnText::
	text "¿A qué lado lo"
	line "quieres poner?"
	done

_WhichSidePutAwayText::
	text "¿De qué lado lo"
	line "quieres quitar?"
	done

_PutAwayTheDecoText::
	text "Se guardó"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "No hay nada que"
	line "puedas guardar."
	prompt

_SetUpTheDecoText::
	text "Se colocó"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Se guardó"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "y se colocó"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "Ya está ahí."
	prompt

_LookTownMapText::
	text "MAPA del PUEBLO."
	done

_LookPikachuPosterText::
	text "Un póster de un"
	line "simpático PIKACHU."
	done

_LookClefairyPosterText::
	text "Un póster de un"
	line "gracioso CLEFAIRY."
	done

_LookJigglypuffPosterText::
	text "Un póster de un"
	line "bonito JIGGLYPUFF."
	done

_LookAdorableDecoText::
	text "¡Qué guay es este"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_LookGiantDecoText::
	text "¡Un muñeco de"
	line "peluche muy mono!"
	done

_MomHiHowAreYouText::
	text "¡Hola, <PLAYER>!"
	line "¿Qué tal?"
	prompt

_MomFoundAnItemText::
	text "Vi algo muy útil"
	line "en la tienda y"
	prompt

_MomBoughtWithYourMoneyText::
	text "lo compré con tu"
	line "dinero. ¡Perdona!"
	prompt

_MomItsInPCText::
	text "Está en tu PC."
	line "¡Te gustará!"
	done

_MomFoundADollText::
	text "Cuando salí de"
	line "compras, vi este"
	cont "adorable muñeco y"
	prompt

_MomItsInYourRoomText::
	text "ahora está en tu"
	line "cuarto. ¡Ya verás!"
	done

_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " fue"
	line "enviado a @"
	text_ram wOTTrademonSenderName
	text "."
	done

_MonNameSentToText::
	text_start
	done

_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " dice"
	line "adiós a"
	done

_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TakeGoodCareOfMonText::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_ForYourMonSendsText::
	text "For @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

_OTSendsText::
	text_ram wOTTrademonSenderName
	text " sends"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_WillTradeText::
	text_ram wOTTrademonSenderName
	text " cambiará a"
	line "@"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unreferenced

_ForYourMonWillTradeText::
	text "por @"
	text_ram wPlayerTrademonSenderName
	text_start
	line "de @"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

_MobilePlayerWillTradeMonText::
	text_ram wPlayerTrademonSenderName
	text " cambiará a"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text_end

	text_end ; unreferenced

_MobileForPartnersMonText::
	text "por @"
	text_ram wOTTrademonSenderName
	text_start
	line "de @"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobilePlayersMonTradeText::
	text_ram wPlayerTrademonSenderName
	text_start
	line "de @"
	text_ram wPlayerTrademonSpeciesName
	cont " cambiado…"
	done

_MobileTakeGoodCareOfMonText::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobilePlayersMonTrade2Text::
	text_ram wPlayerTrademonSenderName
	text_start
	line "de @"
	text_ram wPlayerTrademonSpeciesName
	text_start
	text "cambiado…"
	done

_MobileTakeGoodCareOfText::
	text "Cuida bien de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobileTradeCameBackText::
	text "¡@"
	text_ram wOTTrademonSpeciesName
	text_start
	line "volvió!"
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "ROSA: ¡LA HORA"
	done

_OPT_IntroText2::
	text_start
	line "del PROF. OAK!"
	done

_OPT_IntroText3::
	text_start
	line "¡Conmigo, ROSA!"
	done

_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unused

_OPT_OakText2::
	text_start
	line "puede aparecer en"
	done

_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "ROSA: @"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_OPT_SweetAdorablyText::
	text_start
	line "dulce y adorable…"
	done

_OPT_WigglySlicklyText::
	text_start
	line "hábil y ágil…"
	done

_OPT_AptlyNamedText::
	text_start
	line "ejemplar y"
	done

_OPT_UndeniablyKindOfText::
	text_start
	line "muy especial…"
	done

_OPT_UnbearablyText::
	text_start
	line "alucinante…"
	done

_OPT_WowImpressivelyText::
	text_start
	line "impresionante…"
	done

_OPT_AlmostPoisonouslyText::
	text_start
	line "es demasiado…"
	done

_OPT_SensuallyText::
	text_start
	line "irresistible…"
	done

_OPT_MischievouslyText::
	text_start
	line "travieso…"
	done

_OPT_TopicallyText::
	text_start
	line "siempre de moda…"
	done

_OPT_AddictivelyText::
	text_start
	line "carismático…"
	done

_OPT_LooksInWaterText::
	text_start
	line "de lo más acuático"
	done

_OPT_EvolutionMustBeText::
	text_start
	line "evoluciona rápido…"
	done

_OPT_ProvocativelyText::
	text_start
	line "sorprendente…"
	done

_OPT_FlippedOutText::
	text_start
	line "un pelín chiflado"
	done

_OPT_HeartMeltinglyText::
	text_start
	line "enternecedor…"
	done

_OPT_CuteText::
	text_start
	line "precioso…"
	done

_OPT_WeirdText::
	text_start
	line "fuera de lo común"
	done

_OPT_PleasantText::
	text_start
	line "agradable…"
	done

_OPT_BoldSortOfText::
	text_start
	line "valiente…"
	done

_OPT_FrighteningText::
	text_start
	line "asusta un poco…"
	done

_OPT_SuaveDebonairText::
	text_start
	line "gallardo y cortés"
	done

_OPT_PowerfulText::
	text_start
	line "fuerte…"
	done

_OPT_ExcitingText::
	text_start
	line "apasionante…"
	done

_OPT_GroovyText::
	text_start
	line "¡mola!"
	done

_OPT_InspiringText::
	text_start
	line "todo un ejemplo…"
	done

_OPT_FriendlyText::
	text_start
	line "amigable…"
	done

_OPT_HotHotHotText::
	text_start
	line "es lo más…"
	done

_OPT_StimulatingText::
	text_start
	line "estimulante…"
	done

_OPT_GuardedText::
	text_start
	line "prudente…"
	done

_OPT_LovelyText::
	text_start
	line "fascinante…"
	done

_OPT_SpeedyText::
	text_start
	line "veloz…"
	done

_OPT_PokemonChannelText::
	text "#MON"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "NARDO: ¡CANAL DE"
	done

_BenIntroText2::
	text_start
	line "MÚSICA #MON!"
	done

_BenIntroText3::
	text_start
	line "¡Soy yo, DJ NARDO!"
	done

_FernIntroText1::
	text_start
	line "FLORO: #MÚSICA"
	done

_FernIntroText2::
	text_start
	line "¡Con el DJ FLORO!"
	done

_BenFernText1::
	text_start
	line "Hoy es @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "disfrutemos con"
	done

_BenFernText2B::
	text_start
	line "relajémonos con"
	done

_BenFernText3A::
	text_start
	line "la Marcha #MON."
	done

_BenFernText3B::
	text_start
	line "la Nana #MON."
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "SALVA: ¡Hola!"
	done

_LC_Text2::
	text_start
	line "¿Qué tal va eso?"
	done

_LC_Text3::
	text_start
	line "Ya estéis animados"
	done

_LC_Text4::
	text_start
	line "o desanimados,"
	done

_LC_Text5::
	text_start
	line "¡no os perdáis el"
	done

_LC_Text6::
	text_start
	line "NUM DE LA SUERTE!"
	done

_LC_Text7::
	text_start
	line "¡El número de esta"
	done

_LC_Text8::
	text_start
	line "semana es @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "¡Lo repetiré!"
	done

_LC_Text10::
	text_start
	line "¡Si coincide, ve"
	done

_LC_Text11::
	text_start
	line "a la TORRE RADIO!"
	done

_LC_DragText1::
	text_start
	line "Si me repito,"
	done

_LC_DragText2::
	text_start
	line "se hace pesado…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "¡LUGARES Y GENTE!"
	done

_PnP_Text2::
	text_start
	line "¡Presentado por"
	done

_PnP_Text3::
	text_start
	line "mí, DJ LILA!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_PnP_CuteText::
	text_start
	line "me encanta."
	done

_PnP_LazyText::
	text_start
	line "no mola."
	done

_PnP_HappyText::
	text_start
	line "es alegre."
	done

_PnP_NoisyText::
	text_start
	line "transmite energía."
	done

_PnP_PrecociousText::
	text_start
	line "es inigualable."
	done

_PnP_BoldText::
	text_start
	line "es inimitable."
	done

_PnP_PickyText::
	text_start
	line "es muy especial."
	done

_PnP_SortOfOKText::
	text_start
	line "es interesante."
	done

_PnP_SoSoText::
	text_start
	line "debería molar."
	done

_PnP_GreatText::
	text_start
	line "es una maravilla."
	done

_PnP_MyTypeText::
	text_start
	line "me gusta."
	done

_PnP_CoolText::
	text_start
	line "es genial, ¿no?"
	done

_PnP_InspiringText::
	text_start
	line "te guía."
	done

_PnP_WeirdText::
	text_start
	line "es poco común."
	done

_PnP_RightForMeText::
	text_start
	line "encaja conmigo."
	done

_PnP_OddText::
	text_start
	line "es excepcional."
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

_RocketRadioText1::
	text_start
	line "¡Ejem…, somos"
	done

_RocketRadioText2::
	text_start
	line "el TEAM ROCKET!"
	done

_RocketRadioText3::
	text_start
	line "¡Tras tres años"
	done

_RocketRadioText4::
	text_start
	line "de preparativos,"
	done

_RocketRadioText5::
	text_start
	line "hemos resurgido"
	done

_RocketRadioText6::
	text_start
	line "de las cenizas!"
	done

_RocketRadioText7::
	text_start
	line "¡GIOVANNI! @"
	text_pause
	text_end

	text_end ; unused

_RocketRadioText8::
	text_start
	line "¿Oíste? Lo hicimos@"
	text_pause
	text_end

	text_end ; unused

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "¿Y nuestro jefe?"
	line ""
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "¿Nos escucha?"
	done

_BuenaRadioText1::
	text_start
	line "BUENA: Aquí BUENA…"
	done

_BuenaRadioText2::
	text_start
	line "¡El código de hoy!"
	done

_BuenaRadioText3::
	text_start
	line "A ver… ¡Es"
	done

_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_BuenaRadioText5::
	text_start
	line "¡No lo olvidéis!"
	done

_BuenaRadioText6::
	text_start
	line "¡Estoy en TRIGAL,"
	done

_BuenaRadioText7::
	text_start
	line "en la TORRE RADIO!"
	done

_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oh…"
	done

_BuenaRadioMidnightText2::
	text_start
	line "¡Es medianoche!"
	done

_BuenaRadioMidnightText3::
	text_start
	line "¡Debo acabar!"
	done

_BuenaRadioMidnightText4::
	text_start
	line "¡Gracias por"
	done

_BuenaRadioMidnightText5::
	text_start
	line "sintonizarnos! ¡No"
	done

_BuenaRadioMidnightText6::
	text_start
	line "os acostéis muy"
	done

_BuenaRadioMidnightText7::
	text_start
	line "tarde! ¡Con voso-"
	done

_BuenaRadioMidnightText8::
	text_start
	line "tros, DJ BUENA!"
	done

_BuenaRadioMidnightText9::
	text "¡Me voy!"
	done

_BuenaRadioMidnightText10::
	text "…"
	done

_BuenaOffTheAirText::
	text_start
	line ""
	done

_EnemyWithdrewText::
	text "<ENEMY>"
	line "retiró a"
	cont "@"
	text_ram wEnemyMonNickname
	text "."
	prompt

_EnemyUsedOnText::
	text "<ENEMY>"
	line "utilizó"

	para "@"
	text_ram wMonOrItemNameBuffer
	text_start
	line "con"
	cont "@"
	text_ram wEnemyMonNickname
	text "!"
	prompt

_ThatCantBeUsedRightNowText:: ; unreferenced
	text "That can't be used"
	line "right now."
	prompt

_ThatItemCantBePutInThePackText:: ; unreferenced
	text "That item can't be"
	line "put in the PACK."
	done

_TheItemWasPutInThePackText:: ; unreferenced
	text "The @"
	text_ram wStringBuffer1
	text_start
	line "was put in the"
	cont "PACK."
	done

_RemainingTimeText:: ; unreferenced
	text "Remaining Time"
	done

_YourMonsHPWasHealedText:: ; unreferenced
	text "Your #MON's HP"
	line "was healed."
	prompt

_WarpingText:: ; unreferenced
	text "Warping…"
	done

_ChangeWhichNumberText:: ; unreferenced
	text "Which number"
	line "should be changed?"
	done

_WillYouPlayWithMonText:: ; unreferenced
	text "Will you play with"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_YouNeedTwoMonForBreedingText:: ; unreferenced
	text "You need two #-"
	line "MON for breeding."
	prompt

_BreedingIsNotPossibleText:: ; unreferenced
	text "Breeding is not"
	line "possible."
	prompt

_CompatibilityShouldTheyBreedText:: ; unreferenced
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

_ThereIsNoEggText:: ; unreferenced
	text "There is no EGG."
	line ""
	prompt

_ItsGoingToHatchText:: ; unreferenced
	text "It's going to"
	line "hatch!"
	prompt

_TestEventText:: ; unreferenced
	text "Test event"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

_StartText:: ; unreferenced
	text "Start!"
	done

_EndText:: ; unreferenced
	text "End!"
	done

_ForABoyText:: ; unreferenced
	text "For a boy!"
	done

_ForAGirlText:: ; unreferenced
	text "For a girl!"
	done

_DoesntConcernABoyText:: ; unreferenced
	text "This doesn't"
	line "concern a boy!"
	done

_TheBoxIsFullText:: ; unreferenced
	text "The BOX is full!"
	done

; Mobile Adapter

_NewCardArrivedText::
	text "A new CARD arrived"
	line "from @"
	text_ram wStringBuffer2
	text "."
	done

_PutCardInCardFolderText::
	text "Put this CARD in"
	line "the CARD FOLDER?"
	done

_CardWasListedText::
	text_ram wStringBuffer2
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

_StartingLinkText::
	text "Starting link."
	done

_LinkTerminatedText::
	text "Link terminated."
	done

_ClosingLinkText::
	text "Closing link."
	done

_ClearTimeLimitText:: ; unreferenced
	text "Clear the time"
	line "limit?"
	done

_TimeLimitWasClearedText:: ; unreferenced
	text "The time limit was"
	line "cleared."
	done

_PickErrorPacketText:: ; unreferenced
	text "Pick which packet"
	line "as an error?"
	done

_TradingMonForOTMonText::
	text "Cambia @"
	text_ram wStringBuffer2
	text_start
	line "por @"
	text_ram wStringBuffer1
	text "…"
	done

; Mobile Adapter End

UnknownText_0x1bd2a0::
	text "¡Conseguida la"
	line "MEDALLA VOLTORB!"
	done

_AskFloorElevatorText::
	text "¿Qué piso?"
	done

_BugCatchingContestTimeUpText::
	text "PRESENTADOR:¡BIIP!"

	para "¡Fin del concurso!"
	done

_BugCatchingContestIsOverText::
	text "PRESENTADOR: ¡Se"
	line "acabó el concurso!"
	done

_RepelWoreOffText::
	text "Agotado el efecto"
	line "del REPELENTE."
	done

_PlayerFoundItemText::
	text "<PLAYER>"
	line "encontró"
	cont "@"
	text_ram wStringBuffer3
	text "."
	done

_ButNoSpaceText::
	text "Pero a <PLAYER>"
	line "no le queda sitio."
	done

_JustSawSomeRareMonText::
	text "Acabo de ver un"
	line "@"
	text_ram wStringBuffer1
	text " raro en"
	cont "@"
	text_ram wStringBuffer2
	text "."


	para "Te llamaré si veo"
	line "más #MON raros,"
	cont "¿vale?"
	prompt

_SavingRecordText::
	text "GUARDANDO… NO"
	line "APAGAR LA CONSOLA."
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_promptbutton
	text_end

	text_end ; unreferenced

_NoCoinsText::
	text "No tienes fichas."
	prompt

_NoCoinCaseText::
	text "No tienes ningún"
	line "MONEDERO."

_NPCTradeCableText::
	text "OK, connect the"
	line "Game Link Cable."
	prompt

Text_NPCTraded::
	text "<PLAYER>"
	line "cambió a"
	text_ram wMonOrItemNameBuffer
	text " por"
	cont "@"
	text_ram wStringBuffer2
	text ".@"
	text_end

_NPCTradeFanfareText::
	sound_dex_fanfare_80_109
	text_pause
	text_end

	text_end ; unreferenced

_NPCTradeIntroText1::
	text "Colecciono"
	line "#MON."

	para "¿Tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "¿Quieres cambiarlo"
	line "por mi"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText1::
	text "¿No quieres"
	line "cambiarlo? ¡Bah!"
	done

_NPCTradeWrongText1::
	text "¿Qué? Ése no es"
	line "@"
	text_ram wStringBuffer1
	text ". "
	cont "¡Qué chasco…!"
	done

_NPCTradeCompleteText1::
	text "¡Sí! ¡Conseguí un"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "¡Gracias!"
	done

_NPCTradeAfterText1::
	text "Hola, ¿cómo está"
	line "mi @"
	text_ram wStringBuffer2
	text " doing?"
	done

_NPCTradeIntroText2::
	text "Estoy buscando a"
	line "este #MON."

	para "Si tuvieras un"
	line "@"
	text_ram wStringBuffer1
	text ","

	para "¿lo cambiarías por"
	line "mi @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText2::
	text "¿Tú tampoco"
	line "tienes uno?"

	para "¡Pues vaya! ¡Qué"
	line "decepción…!"
	done

_NPCTradeWrongText2::
	text "¿No tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"
	cont "¡Qué lástima!"
	done

_NPCTradeCompleteText2::
	text "¡Genial! ¡Gracias!"

	para "Por fin conseguí"
	line "un @"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "¡El @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "que me cambiaste"
	cont "está fenomenal!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text " es"
	line "genial, pero no lo"

	para "tengo. ¿Tienes un"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "¿Quieres cambiarlo"
	line "por mi"
	cont "@"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText3::
	text "¿No quieres"
	line "cambiarlo? ¡Vaya!"
	done

_NPCTradeWrongText3::
	text "Ése no es un"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Cámbiamelo si"
	line "consigues uno."
	done

_NPCTradeCompleteText3::
	text "¡Uau! ¡Gracias!"
	line "¡Siempre quise un"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "¿Cómo está el"
	line "@"
	text_ram wStringBuffer2
	text " I"
	cont "que te cambié?"

	para "¡Tu @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "es tan mono!"
	done

_NPCTradeCompleteText4::
	text "¿Eh? ¿Qué pasó?"
	done

_NPCTradeAfterText4::
	text "Intercambiar es"
	line "tan raro…"

	para "Todavía tengo mu-"
	line "cho que aprender."
	done

_MomLeavingText1::
	text "¡Uau! Ese #MON"
	line "es estupendo."

	para "¿De dónde lo has"
	line "sacado?"

	para "…"

	para "Así que te marchas"
	line "de aventura…"

	para "Pues cuenta con"
	line "mi ayuda."

	para "Pero, ¿cómo podría"
	line "ayudarte?"

	para "¡Ya lo sé! Cuidaré"
	line "de tu dinero."

	para "En un viaje largo"
	line "necesitas dinero."

	para "¿Te guardo algo"
	line "de dinero?"
	done

_MomLeavingText2::
	text "Vale, yo cuidaré"
	line "de tu dinero."

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Ten cuidado."

	para "Los #MON son"
	line "tus amigos. Debéis"
	cont "ser un equipo."

	para "¡Adelante!"
	done

_MomIsThisAboutYourMoneyText::
	text "¡Hola, hola!"
	line "Lo estás haciendo"
	cont "muy bien."

	para "He ordenado tu"
	line "habitación."

	para "¿Quieres saber"
	line "de tu dinero?"
	done

_MomBankWhatDoYouWantToDoText::
	text "¿Qué quieres"
	line "hacer?"
	done

_MomStoreMoneyText::
	text "¿Cuánto dinero"
	line "quieres ahorrar?"
	done

_MomTakeMoneyText::
	text "¿Cuánto dinero"
	line "quieres coger?"
	done

_MomSaveMoneyText::
	text "¿Quieres ahorrar"
	line "algo de dinero?"
	done

_MomHaventSavedThatMuchText::
	text "No has ahorrado"
	line "tanto dinero."
	prompt

_MomNotEnoughRoomInWalletText::
	text "No puedes coger"
	line "tanto dinero."
	prompt

_MomInsufficientFundsInWalletText::
	text "No tienes tanto"
	line "dinero."
	prompt

_MomNotEnoughRoomInBankText::
	text "No puedes guardar"
	line "tanto dinero."
	prompt

_MomStartSavingMoneyText::
	text "Yo te lo guardaré."
	line "¡Confía en mí!"

	para "¡<PLAYER>,"
	line "sigue así!"
	done

_MomStoredMoneyText::
	text "¡Tu dinero está"
	line "seguro! ¡Adelante!"
	done

_MomTakenMoneyText::
	text "¡<PLAYER>,"
	line "no te rindas!"
	done

_MomJustDoWhatYouCanText::
	text "Hazlo lo mejor"
	line "posible."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "¿Quieres que"
	line "cuide un #MON?"
	done

_DayCareManIntroEggText::
	text "Soy el ENCARGADO"
	line "de la GUARDERÍA."

	para "¿Sabes algo sobre"
	line "los HUEVOS?"

	para "Mi mujer y yo"
	line "estábamos cuidando"
	cont "unos #MON."

	para "¡Y de pronto"
	line "vimos un HUEVO!"

	para "¿No te parece"
	line "increíble?"

	para "¿Quieres que te"
	line "cuide un #MON?"
	done

_DayCareLadyIntroText::
	text "Soy la ENCARGADA"
	line "de la GUARDERÍA."

	para "¿Quieres que te"
	line "cuide un #MON?"
	done

_DayCareLadyIntroEggText::
	text "Soy la ENCARGADA"
	line "de la GUARDERÍA."

	para "¿Sabes algo sobre"
	line "los HUEVOS?"

	para "Mi marido y yo"
	line "estábamos cuidando"
	cont "unos #MON."

	para "¡Y de pronto"
	line "vimos un HUEVO!"

	para "¿No te parece"
	line "increíble?"

	para "¿Quieres que te"
	line "cuide un #MON?"

_WhatShouldIRaiseText::
	text "¿Cuál quieres"
	line "que cuide?"
	prompt

_OnlyOneMonText::
	text "¿Oh? Pero sólo"
	line "tienes un #MON."
	prompt

_CantAcceptEggText::
	text "Perdona, pero no"
	line "acepto HUEVOS."
	prompt

_RemoveMailText::
	text "Quita la CARTA y"
	line "vuelve a verme."
	prompt

_LastHealthyMonText::
	text "Si me lo das,"
	line "¿con quién vas a"
	cont "combatir?"
	prompt

_IllRaiseYourMonText::
	text "Vale. Cuidaré de"
	line "tu @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Vuelve a por él"
	line "más tarde."
	done

_AreWeGeniusesText::
	text "¿Somos geniales o"
	line "no? ¿Quieres ver a"
	cont "tu @"
	text_ram wStringBuffer1
	text "?"
	done

_YourMonHasGrownText::
	text "Tu @"
	text_ram wStringBuffer1
	text_start
	line "ha crecido mucho."

	para "En cuanto a su ni-"
	line "vel, ha subido @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "Recuperar a tu"
	line "#MON te"
	cont "costará @"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "¥."
	done

_PerfectHeresYourMonText::
	text "¡Perfecto! ¡Aquí"
	line "está tu #MON!"
	prompt

_GotBackMonText::
	text "<PLAYER> recogió"
	line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "¿Ya de vuelta?"
	line "Tu @"
	text_ram wStringBuffer1
	text_start
	para "debería pasar más"
	line "tiempo aquí. Pero"

	para "recoger ahora a"
	line "tu #MON, te"
	cont "costará 100¥."
	done

_HaveNoRoomText::
	text "¡No tienes sitio"
	line "para él!"
	prompt

_NotEnoughMoneyText::
	text "No tienes bastante"
	line "dinero."
	prompt

_OhFineThenText::
	text "No hay problema."
	prompt

_ComeAgainText::
	text "Vuelve cuando"
	line "quieras."
	done

_NotYetText::
	text "Aún no…"
	done

_FoundAnEggText::
	text "¡Ah, eres tú!"

	para "Estábamos cuidando"
	line "de tus #MON y…"

	para "¡Menuda sorpresa"
	line "nos hemos llevado!"

	para "¡Tus #MON han"
	line "tenido un HUEVO!"

	para "No sabemos cómo ha"
	line "llegado ahí, pero"

	para "es de tus #MON."
	line "¿Lo quieres?"
	done

_ReceivedEggText::
	text "¡<PLAYER> recibió"
	line "el HUEVO!"
	done

_TakeGoodCareOfEggText::
	text "Cuídalo bien."
	done

_IllKeepItThanksText::
	text "Cuidaré de él."
	line "¡Gracias!"
	done

_NoRoomForEggText::
	text "No tienes sitio en"
	line "tu equipo. Vuelve"
	cont "en otro momento."
	done

_WhichMonPhotoText::
	text "¿Qué #MON"
	line "te gustaría"
	cont "fotografiar?"
	prompt

_HoldStillText::
	text "Muy bien. Espera"
	line "un poco."
	prompt

_PrestoAllDoneText::
	text "¡Presto! Ya está."
	line "Aquí estaré."
	done