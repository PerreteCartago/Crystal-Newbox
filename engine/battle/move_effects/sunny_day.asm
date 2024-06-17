BattleCommand_StartSun:
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	farcall _CGB_BattleColors
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jp StdBattleTextbox
