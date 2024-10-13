	object_const_def
	const CERLULEAN_BIKE_SHOP_CLERK
	const CERLULEAN_BIKE_SHOP_BALDING_GUY
	const CERLULEAN_BIKE_SHOP_FIREBREATHER
	const CERLULEAN_BIKE_SHOP_TWIN

CeruleanBikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBikeShopClerkScript:
	end

CeruleanBikeShopJustReleasedCompactBike:
	jumptextfaceplayer CeruleanBikeShopJustReleasedCompactBikeText

CeruleanBikeShopNotNow:
	jumptext CeruleanBikeShopNotNowText

KantoBicycle:
	jumptext BicycleText

CeruleanBikeShopNena:
	jumptextfaceplayer CeruleanBikeShopNenaText

CeruleanBikeShopNotNowText:
	text "Parece estar"
	line "ocupado."
	done

CeruleanBikeShopJustReleasedCompactBikeText:
	text "Esta tienda es"
	line "lo más."
	
	para "¡Lo último! ¡bicis"
	line "compactas de"
	cont "máxima calidad!"
	done

CeruleanBikeShopNenaText:
	text "Me gusta esta."
	
	para "Voy a intentar"
	line "portarme bien para"
	cont "que mi papi me la"
	cont "compre."

BicycleText:
	text "¡Es una bici"
	line "novísima!"
	done

CeruleanBikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 9
	warp_event  3,  7, CERULEAN_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, KantoBicycle
	bg_event  0,  3, BGEVENT_READ, KantoBicycle
	bg_event  1,  3, BGEVENT_READ, KantoBicycle
	bg_event  0,  5, BGEVENT_READ, KantoBicycle
	bg_event  1,  5, BGEVENT_READ, KantoBicycle
	bg_event  0,  6, BGEVENT_READ, KantoBicycle
	bg_event  1,  6, BGEVENT_READ, KantoBicycle
	bg_event  6,  6, BGEVENT_READ, KantoBicycle
	bg_event  7,  6, BGEVENT_READ, KantoBicycle

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopClerkScript, -1
	object_event  5,  2, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopNotNow, -1
	object_event  1,  4, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopJustReleasedCompactBike, -1
	object_event  0,  7, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanBikeShopNena, -1
