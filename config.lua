--------------------------------
------- Created by Hamza -------
-------------------------------- 

Config = {}

-- Cityhall Shop Positions:
Config.CityhallZones = {
	CityhallShops = {
		Pos = {
			{x = 242.44,  y = -1090.51, z = 29.29}
		}
	}
}

-- Cityhall Shop Blip Settings:
Config.EnableCityhallShopBlip = true
Config.BlipSprite = 176
Config.BlipDisplay = 4
Config.BlipScale = 0.8
Config.BlipColour = 5
Config.BlipName = "cityhall"

-- Cityhall Shop Marker Settings:
Config.KeyToOpenShop = 38														-- default 38 is E
Config.ShopMarker = 27 															-- marker type
Config.ShopMarkerColor = { r = 255, g = 255, b = 0, a = 100 } 					-- rgba color of the marker
Config.ShopMarkerScale = { x = 1.0, y = 1.0, z = 1.0 }  						-- the scale for the marker on the x, y and z axis
Config.ShopDraw3DText = "Press ~g~[E]~s~ for ~y~cityhall~s~"					-- set your desired text here

-- Cityhall Shop Item List:
Config.ItemsInCityhallShop = {
	{ itemName = 'id_card', label = 'Citizen  Card', BuyInCityhallShop = true, BuyPrice = 1000, SellInCityhallShop = false, SellPrice = 300 },
}

