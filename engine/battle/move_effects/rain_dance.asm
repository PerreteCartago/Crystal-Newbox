BattleCommand_StartRain:
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	farcall _CGB_BattleColors
	call AnimateCurrentMove
	ld hl, DownpourText
	jp StdBattleTextbox
