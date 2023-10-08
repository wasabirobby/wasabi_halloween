-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
Config = {}

Config.checkForUpdates = true -- Check for updates?

Config.CandyBasket = 'jackolantern' -- Item must be existing in server. You use this item to toggle on/off the basket in hand

Config.TrickOrTreat = true -- Enable trick or treat? Put this to false to just enable the usable candy baskets

Config.RequireCandyBasket = false -- Require candy basket to be equipped to trick-or-treat?

Config.onePlayerPerHouse = true -- Set to false if you want everyone a chance to trick-or-treat every house

Config.onlyAtNight = true -- Set to false if you want to be able to trick or treat during daytime

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
	[46] = vec3(-824.6912, 422.1172, 92.12418),
	[47] = vec3(-762.098, 430.988, 100.1969),
	[48] = vec3(-784.3112, 459.0379, 100.1791),
	[49] = vec3(-717.9176, 449.0835, 106.9091),
	[50] = vec3(-721.6775, 490.0913, 109.3855),
	[51] = vec3(-678.9091, 511.6914, 113.526),
	[52] = vec3(-667.1612, 471.8701, 114.1365),
	[53] = vec3(-640.8442, 519.7015, 109.6878),
	[54] = vec3(-622.8088, 489.1974, 108.8573),
	[55] = vec3(-595.4384, 530.1559, 107.7552),
	[56] = vec3(-580.4532, 491.8499, 108.9029),
	[57] = vec3(-526.9787, 517.4584, 112.9416),
	[58] = vec3(-554.582, 540.9244, 110.7071),
	[59] = vec3(-537.0079, 477.4941, 103.1936),
	[60] = vec3(-560.9957, 402.8458, 101.8053),
	[61] = vec3(-595.6108, 393.3641, 101.8825),
	[62] = vec3(-615.3188, 398.5717, 101.6268),
	[63] = vec3(-516.9315, 433.2578, 97.80772),
	[64] = vec3(-476.5466, 412.8358, 103.1219),
	[65] = vec3(-469.4184, 329.2477, 104.7472),
	[66] = vec3(-444.2829, 343.6735, 105.4383),
	[67] = vec3(-409.4959, 341.3977, 108.9074),
	[68] = vec3(-371.8014, 343.744, 109.9427),
	[69] = vec3(-328.2601, 370.1221, 110.0171),
	[70] = vec3(-297.7348, 379.9143, 112.0954),
	[71] = vec3(-305.0964, 379.0832, 109.9168),
	[72] = vec3(-239.5455, 381.6348, 112.4278),
	[73] = vec3(-214.2698, 400.5247, 111.1085),
	[74] = vec3(-305.2688, 431.8569, 110.3089),
	[75] = vec3(-400.6251, 427.3238, 112.3414),
	[76] = vec3(-519.8761, 594.4243, 120.8367),
	[77] = vec3(-474.7575, 585.9112, 128.6834),
	[78] = vec3(-500.6234, 552.4281, 120.5914),
	[79] = vec3(-459.1504, 537.3895, 121.4578),
	[80] = vec3(-418.2967, 568.7051, 125.06),
	[81] = vec3(-386.7951, 504.3611, 120.4127),
	[82] = vec3(-378.0353, 548.3048, 123.8508),
	[83] = vec3(-230.3321, 488.2676, 128.7681),
	[84] = vec3(-174.6284, 502.7007, 137.4206),
	[85] = vec3(-109.8777, 502.0844, 143.4788),
	[86] = vec3(-66.46829, 490.5186, 144.6903),
	[87] = vec3(-74.34037, 494.8591, 144.0917),
	[88] = vec3(-7.803519, 468.208, 145.8632),
	[89] = vec3(43.06358, 468.7275, 148.0959),
	[90] = vec3(57.83124, 450.0096, 147.0314),
	[91] = vec3(79.86884, 486.19, 148.2017),
	[92] = vec3(-126.4057, 588.9896, 204.5169),
	[93] = vec3(-188.9572, 591.556, 197.8231),
	[94] = vec3(-189.4451, 618.1754, 199.6612),
	[95] = vec3(-199.5043, 612.2956, 195.6473),
	[96] = vec3(-232.5994, 588.4175, 190.5363),
	[97] = vec3(-293.4847, 600.9558, 181.5756),
	[98] = vec3(-307.8946, 643.337, 176.1312),
	[99] = vec3(-339.8918, 668.7012, 172.7842),
	[100] = vec3(-400.0835, 665.0366, 163.8303),

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
    'u_m_y_juggernaut_01',
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
    only_at_night = 'Only at night',
    only_at_night_desc = 'You can only trick or treat at night!',
    blip_string = 'Trick Or Treat',
	need_candy_basket = 'No Basket',
	need_candy_basket_desc = 'You need a candy basket to trick-or-treat!'
}
