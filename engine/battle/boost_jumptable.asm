BoostJumptable:
	dbw AVALANCHE,  DoAvalanche
	dbw HEX,        DoHex

DoAvalanche:
	call CheckOpponentWentFirst
	jr DoubleDamageIfNZ

DoHex:
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	and a
	jr DoubleDamageIfNZ

BattleCommand_conditionalboost:
	ld hl, BoostJumptable
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	jp BattleJumptable