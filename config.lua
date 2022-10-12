-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
Config = {}

Config.checkForUpdates = true -- Check for updates?

Config.CandyBasket = 'jackolantern' -- Item must be existing in server. You use this item to toggle on/off the basket in hand

Config.TrickOrTreat = true -- Enable trick or treat? Put this to false to just enable the usable candy baskets

Config.Houses = {
	[1] = vec3(1060.564, -378.1245, 68.23115),
	[2] = vec3(1028.926, -408.2442, 66.34283),
	[3] = vec3(1010.667, -423.3175, 65.35079),
	[4] = vec3(987.7176, -433.1628, 63.90089),
	[5] = vec3(967.3543, -451.9626, 62.80101),
	[6] = vec3(944.3076, -463.3188, 61.55346),
	[7] = vec3(921.5845, -478.0067, 61.08369),
	[8] = vec3(906.2473, -489.5316, 59.43633),
	[9] = vec3(878.222, -498.1099, 58.09797),
	[10] = vec3(861.4584, -509.0945, 57.71992),
	[11] = vec3(850.2569, -532.9086, 57.9255),
	[12] = vec3(844.3987, -562.9863, 57.83922),
	[13] = vec3(861.6569, -583.5684, 58.15666),
	[14] = vec3(886.9095, -608.1932, 58.44528),
	[15] = vec3(902.8575, -615.6975, 58.45317),
	[16] = vec3(928.8278, -639.7562, 58.24282),
	[17] = vec3(943.0835, -653.4312, 58.422),
	[18] = vec3(960.1107, -670.1132, 58.44941),
	[19] = vec3(970.7303, -701.4003, 58.48195),
	[20] = vec3(979.5905, -716.746, 58.22103),
	[21] = vec3(996.8702, -729.5521, 57.81573),
	[22] = vec3(980.1323, -627.7974, 59.23569),
	[23] = vec3(893.0568, -540.4225, 58.50663),
	[24] = vec3(924.6608, -525.9139, 59.79037),
	[25] = vec3(945.8715, -518.895, 60.62584),
	[26] = vec3(970.4075, -502.5023, 62.1409),
	[27] = vec3(1014.96, -469.078, 64.50347),
	[28] = vec3(1044.421, -449.0049, 66.2574),
	[29] = vec3(1114.418, -391.3172, 68.94825),
	[30] = vec3(1101.058, -411.351, 67.55525),
	[31] = vec3(1099.617, -438.6805, 67.79068),
	[32] = vec3(1099.496, -450.6031, 67.58914),
	[33] = vec3(1098.34, -464.4987, 67.31938),
	[34] = vec3(1090.43, -484.3626, 65.65996),
	[35] = vec3(1056.131, -448.8992, 66.25746),
	[36] = vec3(1051.013, -470.7392, 64.29706),
	[37] = vec3(1045.425, -497.9291, 64.08516),
	[38] = vec3(1006.271, -510.8867, 60.99263),
	[39] = vec3(988.0084, -525.6755, 60.69219),
	[40] = vec3(965.1131, -542.0155, 59.72735),
	[41] = vec3(919.6778, -569.6522, 58.36633),
	[42] = vec3(964.3013, -596.1765, 59.9027),
	[43] = vec3(976.5615, -580.5632, 59.85629),
	[44] = vec3(1009.629, -572.7745, 60.59443),
	[45] = vec3(999.4769, -594.5496, 59.63894),

}

Config.Treats = { -- Put items here you want as rewards(Must be existing items in server)
	{ item = 'money', min = 350, max = 650 },
	{ item = 'doritos', min = 2, max = 5 },
	{ item = 'black_money', min = 495, max = 1200 },
	{ item = 'donut', min = 1, max = 4 },
	{ item = 'sandwich', min = 3, max = 6 },
}

--[[
---qb-core config
Config.Treats = { -- Put items here you want as rewards(Must be existing items in server)
	{ item = 'tosti', min = 1, max = 2 },
	{ item = 'twerks_candy', min = 1, max = 3 },
	{ item = 'snikkel_candy', min = 1, max = 5 },
	{ item = 'sandwich', min = 1, max = 4 },
	{ item = 'beer', min = 1, max = 6 },
}
--]]

Config.Peds = { -- Random peds that my spawn answering door
    'u_m_y_zombie_01',
    'ig_trafficwarden',
    'ig_prolsec_02',
    'u_m_y_juggernaut_',
    'u_m_y_mani',
    'u_m_y_dancerave_01',
    'ig_chrisformage',
    'ig_bride',
    'u_m_o_filmnoir',
    'a_f_m_fatcult_01',
    'a_m_m_afriamer_01',
    'u_m_y_rsranger_01',
    'a_m_y_smartcaspat_01',
    'ig_rashcosvki',
    'u_f_o_eileen',
    'ig_clay',
    'u_f_y_dancerave_01',
    'u_m_m_streetart_01',

}

Strings = {
    basket_equipped = 'Basket Equipped',
    basket_equipped_desc = 'You are ready to trick-or-treat!',
    basket_removed = 'Basket Removed',
    basket_removed_desc = 'Have a happy Halloween!',
    trick_or_treat = '[E] - Trick Or Treat',
    busy = 'Busy',
    busy_desc = 'You are already busy doing something',
    out_of_treats = 'Out of Treats',
    out_of_treats_desc = 'This house has already been visited',
    blip_string = 'Trick Or Treat',
}