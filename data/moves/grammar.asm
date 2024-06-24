; Used by GetMoveGrammar (see engine/battle/used_move_text.asm)
; Each move is given an identifier for what usedmovetext to use (0-4).
; Made redundant in English localization, where all are just "[mon]<LINE>used [move]!"

MoveGrammar:
; 0: originally "[mon]の<LINE>[move]を　つかった!" ("[mon]<LINE>used [move]!")
	db SWORDS_DANCE
	db GROWTH
	db STRENGTH
	db SILVER_WIND
	db MINIMIZE
	db SMOKESCREEN
	db DEFENSE_CURL
	db EGG_BOMB
	db SMOG
	db BONE_CLUB
	db FLASH
	db SPLASH
	db ACID_ARMOR
	db BONEMERANG
	db REST
	db SUBSTITUTE
	db MIND_READER
	db SNORE
	db PROTECT
	db SPIKES
	db ENDURE
	db ROLLOUT
	db SWAGGER
	db SLEEP_TALK
	db HIDDEN_POWER
	db PSYCH_UP
	db EXTREMESPEED
	db 0 ; end set

; 1: originally "[mon]の<LINE>[move]した!" ("[mon]<LINE>did [move]!")
	db RECOVER
	db TELEPORT
	db SELFDESTRUCT
	db AMNESIA
	db FLAIL
	db 0 ; end set

; 2: originally "[mon]の<LINE>[move]を　した!" ("[mon]<LINE>did [move]!")
	db MEDITATE
	db AGILITY
	db MIMIC
	db DOUBLE_TEAM
	db BARRAGE
	db TRANSFORM
	db STRUGGLE
	db SCARY_FACE
	db 0 ; end set

; 3: originally "[mon]の<LINE>[move]　こうげき!" ("[mon]'s<LINE>[move] attack!")
	db POUND
	db SCRATCH
	db VICEGRIP
	db WING_ATTACK
	db FLY
	db BIND
	db SLAM
	db HORN_ATTACK
	db WRAP
	db THRASH
	db TAIL_WHIP
	db LEER
	db BITE
	db GROWL
	db ROAR
	db SING
	db PECK
	db ABSORB
	db STRING_SHOT
	db EARTHQUAKE
	db FISSURE
	db DIG
	db TOXIC
	db SCREECH
	db METRONOME
	db LICK
	db CLAMP
	db POISON_GAS
	db BUBBLE
	db SLASH
	db SPIDER_WEB
	db NIGHTMARE
	db CURSE
	db FORESIGHT
	db CHARM
	db ATTRACT
	db ROCK_SMASH
	db 0 ; end set

; 4: originally "[mon]の<LINE>[move]!" ("[mon]'s<LINE>[move]!")
; Any move not listed above uses this grammar.
	db -1 ; end
