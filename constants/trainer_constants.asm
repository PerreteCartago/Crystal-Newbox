DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass FALKNER ; 1
	const FALKNER1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_CHIKORITA
	const RIVAL1_1_CYNDAQUIL
	const RIVAL1_1_TOTODILE
	const RIVAL1_2_CHIKORITA
	const RIVAL1_2_CYNDAQUIL
	const RIVAL1_2_TOTODILE
	const RIVAL1_3_CHIKORITA
	const RIVAL1_3_CYNDAQUIL
	const RIVAL1_3_TOTODILE
	const RIVAL1_4_CHIKORITA
	const RIVAL1_4_CYNDAQUIL
	const RIVAL1_4_TOTODILE
	const RIVAL1_5_CHIKORITA
	const RIVAL1_5_CYNDAQUIL
	const RIVAL1_5_TOTODILE

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1 ; 1 unused
	const CAL2 ; 2 
	const CAL3 ; 3

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14
	const ROSS ; 1
	const MITCH ; 2
	const JED ; 3
	const MARC ; 4
	const RICH ; 5
	const MIGUEL ; 6
	const ALBERT2 ; 7

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const JOEY1 ; 1 
	const MIKEY ; 2
	const ALBERT ; 3
	const GORDON ; 4
	const SAMUEL ; 5
	const IAN ; 6
	const JOEY2 ; 7
	const JOEY3 ; 8
	const WARREN ; 9
	const JIMMY ; 10
	const OWEN ; 11
	const JASON ; 12
	const JOEY4 ; 13
	const JOEY5 ; 14
	const CIRO ; 15
	const DANE ; 16
	const PEPE ; 17
	const DAVI ; 18
	const JOSE ; 19

	trainerclass SCHOOLBOY ; 17
	const JACK1 ; 1
	const KIPP ; 2
	const ALAN1 ; 3
	const JOHNNY ; 4
	const DANNY ; 5
	const TOMMY ; 6
	const DUDLEY ; 7
	const JOE ; 8
	const BILLY ; 9
	const CHAD1 ; 10
	const NATE ; 11
	const RICKY ; 12
	const JACK2 ; 13
	const JACK3 ; 14
	const ALAN2 ; 15
	const ALAN3 ; 16
	const CHAD2 ; 17
	const CHAD3 ; 18
	const JACK4 ; 19
	const JACK5 ; 20
	const ALAN4 ; 21
	const ALAN5 ; 22
	const CHAD4 ; 23
	const CHAD5 ; 24

	trainerclass BIRD_KEEPER ; 18
	const ROD ; 1
	const ABE ; 2
	const BRYAN ; 3
	const THEO ; 4
	const TOBY ; 5
	const DENIS ; 6
	const VANCE1 ; 7
	const HANK ; 8
	const ROY ; 9
	const BORIS ; 10
	const BOB ; 11
	const JOSE1 ; 12
	const PETER ; 13
	const JOSE2 ; 14
	const PERRY ; 15
	const BRET ; 16
	const JOSE3 ; 17
	const VANCE2 ; 18
	const VANCE3 ; 19
	const ROGE ; 20
	const SEBASTIAN ; 21
	const PASTOR ; 22
	const ROBERTO ; 23
	const MAURO ; 24
	const BENI ; 25
	const CELSO ; 26
	const EDGARDO ; 27

	trainerclass LASS ; 19
	const CARRIE ;1
	const BRIDGET ;2
	const ALICE ;3
	const KRISE ; 4
	const CONNIE1 ; 5
	const LINDA ; 6
	const LAURA ; 7
	const SHANNON ; 8
	const MICHELLE ; 9
	const DANA1 ; 10
	const ELLEN ; 11
	const CONNIE3 ; 12
	const DANA2 ; 13
	const DANA3 ; 14
	const DANA4 ; 15
	const DANA5 ; 16
	const GENO ; 17
	const LULU ; 18
	const ANDREA ; 19
	const VEVA ; 20
	const MIRNA ; 21
	const IRIS ; 22

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b
	const NICK ; 1
	const AARON ; 2
	const PAUL ; 3
	const CODY ; 4
	const MIKE ; 5
	const GAVEN1 ; 6
	const GAVEN2 ; 7
	const RYAN ; 8
	const JAKE ; 9
	const GAVEN3 ; 10
	const BLAKE ; 11
	const BRIAN ; 12
	const ERICK ; 13
	const ANDY ; 14
	const ELIAS ; 15
	const SEAN ; 16
	const KEVIN ; 17
	const STEVE ; 18
	const ALLEN ; 19
	const DARIN ; 20

	trainerclass COOLTRAINERF ; 1c
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3
	const CARA
	const ELIA

	trainerclass BEAUTY ; 1d
	const VICTORIA ; 1
	const SAMANTHA ; 2
	const LUCRECIA ; 3
	const SUSANA ; 4
	const ROBERTA ; 5
	const CASSIE ; 6
	const MANOLA ; 7
	const SOL ; 8
	const JESSICA ; unused
	const RACHAEL ; unused
	const ANGELICA ; unused
	const KENDRA ; unused
	const VERONICA ; unused
	const JULIA
	const THERESA ; unused
	const VALERIE
	const OLIVIA

	trainerclass POKEMANIAC ; 1e
	const LARRY ; 1
	const ANDREW ; 2
	const CALVIN ; 3
	const SHANE ; 4
	const BEN ; 5
	const BRENT1 ; 6
	const RON ; 7
	const ETHAN ; 8
	const BRENT2 ; 9
	const BRENT3 ; 10
	const ISSAC ; 11
	const DONALD ; 12
	const ZACH ; 13
	const BRENT4 ; 14
	const MILLER ; 15
	const HERNANDO ; 16
	const MARCO ; 17
	const JOHN2 ; 18
	const BASILIO ; 19
	const DANI ; 20
	const ESTEBAN ; 21
	const JULIAN ; 22

	trainerclass GRUNTM ; 1f
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12 ; unused
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22 ; unused
	const GRUNTM_23 ; unused
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26 ; unused
	const GRUNTM_27 ; unused
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30 ; unused
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20
	const PRESTON ; 1
	const EDWARD ; 2
	const GREGORY ; 3
	const VIRGIL ; 4
	const ALFRED ; 5

	trainerclass SKIER ; 21
	const ROXANNE
	const CLARISSA

	trainerclass TEACHER ; 22
	const COLETTE
	const HILLARY
	const SHIRLEY
	const GRACIA

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const DON ; 1
	const ROB ; 2
	const ED ; 3
	const WADE1 ; 4
	const BUG_CATCHER_BENNY ; 5
	const AL ; 6
	const JOSH ; 7
	const ARNIE1 ; 8
	const KEN ; 9
	const WADE2 ; 10
	const WADE3 ; 11
	const DOUG ; 12
	const ARNIE2 ; 13
	const ARNIE3 ; 14
	const WADE4 ; 15
	const WADE5 ; 16
	const ARNIE4 ; 17
	const ARNIE5 ; 18
	const WAYNE ; 19
	const CIRILO ; 20
	const LINO ; 21
	const AMADEO ; 22
	const ASIER ; 23
	const MANLIO ; 24
	const KEIGO ; 25
	const ELIJAH ; 26
	const CORNELIO ; 27
	const GREGORIO ; 28
	const BUG_CATCHER_JAIME ; 29
	const BERNABE ; 30
	const ARIEL ; 31
	const ROBI ; 32
	const CASIMIRO ; 33

	trainerclass FISHER ; 25
	const JUSTIN
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGAR
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const WILTON2
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4
	const NARCISO
	const CLAUDIO
	const GUIDO
	const RONALDO
	const CHICHO
	const NESTOR

	trainerclass SWIMMERM ; 26
	const HAROLD
	const SIMON
	const RANDALL
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const ROMAN
	const JEROMO
	const OMAR
	const SERGIO
	const SWIMMER_BORIS
	const JEROME
	const TUCKER
	const DINO
	const CAMERON
	const SETH
	const DARIO
	const RICARDO
	const PARKER
	const MARCELO
	const TONI
	const MATEO
	const ALEJO

	trainerclass SWIMMERF ; 27
	const ELAINE
	const PAULA
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const TANIA
	const TIZIANA
	const NORA
	const MELISA
	const DAWN
	const ALICIA
	const NICOLE
	const LORI
	const CORO
	const NIKKI
	const DIANA
	const BRIANA
	const ANIA

	trainerclass SAILOR ; 28
	const EUGENE ; 1
	const HUEY1 ; 2
	const TERRELL ; 3
	const KENT ; 4
	const ERNEST ; 5
	const JEFF ; 6
	const GARRETT ; 7
	const KENNETH ; 8
	const STANLY ; 9
	const HARRY ; 10
	const HUEY2 ; 11
	const HUEY3 ; 12
	const HUEY4 ; 13

	trainerclass SUPER_NERD ; 29
	const STAN ; 1
	const ERIC ; 2
	const ENRIQUE ; 3
	const AVERO ; 4
	const DANTE ; 5
	const SAM ; 6
	const TOM ; 7
	const PAT ; 8
	const SHAWN ; 9
	const TERU ; 10
	const ZAC ; 11
	const LADIS ; 12
	const HUGH ; 13
	const MARKUS ; 14
	const ADRIAN ; 15
	const GUSTAVO ; 16

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_CHIKORITA
	const RIVAL2_1_CYNDAQUIL
	const RIVAL2_1_TOTODILE
	const RIVAL2_2_CHIKORITA
	const RIVAL2_2_CYNDAQUIL
	const RIVAL2_2_TOTODILE

	trainerclass GUITARIST ; 2b
	const CLYDE ; 1
	const VINCENT ; 2
	const MONE ; 3

	trainerclass HIKER ; 2c
	const ANTHONY1 ; 1
	const RUSSELL ; 2
	const PHILLIP ; 3
	const LEONARD ; 4
	const ANTHONY2 ; 5
	const BENJAMIN ; 6
	const ERIK ; 7
	const MICHAEL ; 8
	const PARRY1 ; 9
	const TIMOTHY ; 10
	const BAILEY ; 11
	const ANTHONY3 ; 12
	const TIM ; 13
	const NOLAND ; 14
	const SIDNEY ; 15
	const KENNY ; 16
	const JIM ; 17
	const DANIEL ; 18
	const PARRY2 ; 19
	const PARRY3 ; 20
	const ANTHONY4 ; 21
	const ANTHONY5 ; 22
	const FRANCIS ; 23
	const UBALDO ; 24
	const NOBORU ; 25
	const ADOLFO ; 26
	const ALFONSO ; 27
	const BALTASAR ; 28
	const MARCOS ; 29
	const LUCIANO ; 30
	const OSCAR ; 31
	const LUCAS ; 32
	const ALFREDO ; 33
	const EVARISTO ; 34
	const DINIO ; 35

	trainerclass BIKER ; 2d
	const BIKER_BENNY ; 1
	const KAZU ; 2
	const DWAYNE ; 3
	const HARRIS ; 4
	const ZEKE ; 5
	const CHARLES ; 6
	const RILEY ; 7
	const JOEL ; 8
	const GLENN ; 9
	const HIDEO ; 10
	const BIKER_LAO ; 11
	const GERARDO ; 12
	const ISAAC ; 13
	const MALEN ; 14
	const LUCIO ; 15
	const ERNESTO ; 16
	const SANDRO ; 17

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const DUNCAN ; 1
	const EDDIE ; 2
	const COREY ; 3
	const OCTAVIO ; 4
	const RAMON ; 5
	const DACIO ; 6

	trainerclass FIREBREATHER ; 30
	const OTIS ; 1
	const DARIO2 ; 2
	const NERON ; 3
	const BURT ; 4
	const BILL ; 5
	const WALT ; 6
	const RAY ; 7
	const LYLE ; 8

	trainerclass JUGGLER ; 31
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2 ; unused
	const IRWIN3 ; unused
	const IRWIN4 ; unused

	trainerclass BLACKBELT_T ; 32
	const KENJI1 ; unused
	const YOSHI
	const KENJI2 ; unused
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass PSYCHIC_T ; 34
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREG
	const NORMAN
	const MARK
	const PHIL
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY

	trainerclass PICNICKER ; 35
	const LIZ1 ; 1
	const GINA1 ; 2
	const BROOKE ; 3
	const KIM ; 4
	const CINDY ; 5
	const HOPE ; 6
	const SHARON ; 7
	const DEBRA ; 8
	const GINA2 ; 9
	const ERIN1 ; 10
	const LIZ2 ; 11
	const LIZ3 ; 12
	const HEIDI ; 13
	const EDNA ; 14
	const GINA3 ; 15
	const TIFFANY1 ; 16
	const TIFFANY2 ; 17
	const ERIN2 ; 18
	const TANYA ; 19
	const TIFFANY3 ; 20
	const ERIN3 ; 21
	const LIZ4 ; 22
	const LIZ5 ; 23
	const GINA4 ; 24
	const GINA5 ; 25
	const TIFFANY4 ; 26
	const PICNICKER_IRENE ; 27
	const MERCE ; 28
	const NEREA ; 29
	const CHIO ; 30
	const NELI ; 31
	const NOE ; 32
	const HILARIA ; 33
	const ALMA ; 34
	const SUSI ; 35
	const VALERIA ; 36
	const GEMA ; 37
	const LEA ; 38
	const ARIANA ; 39
	const DORA ; 40
	const MARTA ; 41
	const SOFIA ; 42

	trainerclass CAMPER ; 36
	const ROLAND ; 1
	const TODD1 ; 2
	const IVAN ; 3
	const ELLIOT ; 4
	const BARRY ; 5
	const LLOYD ; 6
	const DEAN ; 7
	const SID ; 8
	const RICHI ; 9
	const GENARO ; 10
	const TED ; 11
	const TODD2 ; 12
	const TODD3 ; 13
	const CRIS ; 14
	const DOROTEO ; 15
	const JUSTI ; 16
	const JOHN ; unused
	const JERRY
	const SPENCER
	const TODD4
	const TODD5
	const QUENTIN

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI
	const GAKU
	const MASA
	const KOJI

	trainerclass MEDIUM ; 39
	const MARTHA
	const GRACE
	const BETHANY ; unused
	const MARGRET ; unused
	const ETHEL ; unused
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 3a
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b
	const WILLIAM
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2 ; unused
	const DEREK3 ; unused
	const ALEX
	const REX
	const ALLAN

	trainerclass KIMONO_GIRL ; 3c
	const NAOKO_UNUSED ; unused
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 3d
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2 ; unused

	trainerclass POKEFANF ; 3e
	const BEVERLY1
	const RUTH
	const BEVERLY2 ; unused
	const BEVERLY3 ; unused
	const GEORGIA
	const JAIME

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41
	const KEITH
	const DIRK

	trainerclass GRUNTF ; 42
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5

	trainerclass MYSTICALMAN ; 43
	const EUSINE

	trainerclass CHANNELER ; 44
	const CARI ; 1
	const PATRICIA ; 2
	const ESPE ; 3
	const LORENA ; 4
	const JIMENA ; 5
	const PAULA_CHANNELER ; 6
	const RENATA ; 7
	const LINA ; 8
	const JANA ; 9
	const TAMARA ; 10
	const ANGELICA_CHANNELER ; 11
	const JULIANA ; 12
	const EMILIA ; 13

	trainerclass BALD ; 45
	const ISAIAS ; 1
	const RALE ; 2
	const DERO ; 3
	const JAVI ; 4
	const CEFE ; 5
	const CADEL ; 6
	const LEO ; 7
	const BALD_KOJI ; 8
	const EMILIO ; 9
	const JAVIER ; 10

	trainerclass PI ; 46
	const HUGUE ; 1
	const JAREN ; 2
	const DARIAN ; 3
	const GASPAR ; 4
	const NORBER ; 5
	const EUSEBIO ; 6

	trainerclass ENGINEER ; 47
	const BERNARDO ; 1
	const PERICO ; 2

	trainerclass SCHOOLGIRL ; 48
	const BETINA ; 1
	const CLEO ; 2
	const CELIA ; 3
	
DEF KRIS EQU __trainer_class__

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
