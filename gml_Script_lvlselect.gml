function levelselect_dest_level(argument0, argument1)
{
	var lvls = [
		["tutorial", "entrance", "medieval", "ruin", "dungeon", "b_pepperman", "secret1"],
		["badland", "graveyard", "farm", "saloon", "b_vigilante", "secret2"],
		["plage", "forest", "space", "minigolf", "b_noise", "secret3"],
		["street", "industrial", "sewer", "freezer", "b_fakepep", "secret4", "secret5"],
		["chateau", "kidsparty", "war", "b_pizzaface", "exit", "secret6", "secret7"],
	]
	return lvls[argument0][argument1]
}
function levelselect_showintro()
{
	return 0;
}
function levelselect_hub_room(argument0)
{
	switch(argument0)
	{
		case "tutorial":
			return tower_entrancehall
		case "entrance":
			return tower_johngutterhall
		case "medieval":
			return tower_1
		case "ruin":
			return tower_1
		case "dungeon":
			return tower_1
		case "b_pepperman":
			return tower_1
		case "badland":
			return tower_2
		case "graveyard":
			return tower_2
		case "farm":
			return tower_2
		case "saloon":
			return tower_2
		case "b_vigilante":
			return tower_2
			
		case "plage":
			return tower_3
		case "forest":
			return tower_3
		case "space":
			return tower_3
		case "minigolf":
			return tower_3
		case "b_noise":
			return tower_3
			
		case "street":
			return tower_4
		case "industrial":
			return tower_4
		case "sewer":
			return tower_4
		case "freezer":
			return tower_4
		case "b_fakepep":
			return tower_4
			
		case "chateau":
			return tower_5
		case "kidsparty":
			return tower_5
		case "war":
			return tower_5
		case "b_pizzaface":
			return 828
		case "exit":
			return tower_pizzafacehall
			
		default:
			return -4
	}
}
function levelselect_realhubx(argument0)
{
	switch(argument0)
	{
		case "tutorial":
			return 2470
		case "entrance":
			return 930
		case "medieval":
			return 1444
		case "ruin":
			return 3180
		case "dungeon":
			return 2695
		case "b_pepperman":
			return 3570
		case "badland":
			return 2120
		case "graveyard":
			return 2700
		case "farm":
			return 3560
		case "saloon":
			return 5220
		case "b_vigilante":
			return 5080
		case "plage":
			return 450
		case "forest":
			return 3500
		case "space":
			return 1090
		case "minigolf":
			return 930
		case "b_noise":
			return 2050
		case "street":
			return 810
		case "industrial":
			return 2200
		case "sewer":
			return 3330
		case "freezer":
			return 2690
		case "b_fakepep":
			return 3200
		case "chateau":
			return 960
		case "kidsparty":
			return 4390
		case "war":
			return 2950
		case "b_pizzaface":
			return 522
		case "exit":
			return 770
	}
	return -4
}
function levelselect_realhuby(argument0)
{
	switch(argument0)
	{
		case "tutorial":
			return 690
		case "entrance":
			return 626
		case "medieval":
			return 1458
		case "ruin":
			return 1106
		case "dungeon":
			return 338
		case "b_pepperman":
			return 1554
		case "badland":
			return 850
		case "graveyard":
			return 1394
		case "farm":
			return 434
		case "saloon":
			return 1138
		case "b_vigilante":
			return 754
		case "plage":
			return 2898
		case "forest":
			return 2354
		case "space":
			return 722
		case "minigolf":
			return 1810
		case "b_noise":
			return 2546
		case "street":
			return 1938
		case "industrial":
			return 2514
		case "sewer":
			return 3282
		case "freezer":
			return 1426
		case "b_fakepep":
			return 626
		case "chateau":
			return 2482
		case "kidsparty":
			return 2130
		case "war":
			return 562
		case "b_pizzaface":
			return 2328
		case "exit":
			return 3698
	}
	return -4
}
function levelselect_dest_desttype(argument0, argument1, argument2)
{
	var lv = levelselect_dest_level(argument0, argument1)
	switch(lv)
	{
		//normal
		case "entrance":
		case "medieval":
		case "ruin":
		case "dungeon":
		case "badland":
		case "graveyard":
		case "farm":
		case "saloon":
		case "plage":
		case "forest":
		case "space":
		case "minigolf":
		case "street":
		case "industrial":
		case "sewer":
		case "freezer":
		case "chateau":
		case "kidsparty":
			if(argument2 <= 1)
				return "level"
			else
				return "secret-lv"
		
		//war
		case "war":
			if(argument2 == 0)
				return "level"
			else
				return "secret-lv"
		
		//bosses
		case "b_pepperman":
		case "b_vigilante":
		case "b_noise":
		case "b_fakepep":
		case "b_pizzaface":
			return "boss"
		
		//floor secrets
		case "secret1":
		case "secret2":
		case "secret3":
		case "secret4":
		case "secret5":
		case "secret6":
		case "secret7":
			return "secret-fl"
		
		//other
		case "exit":
		case "tutorial":
			return "level"
	}
}
function levelselect_dest_room(argument0, argument1, argument2)
{
	var rooms = [
		[
			//tutorial
			[788, tower_tutorial10],
			//john gutter
			[24, 38, 29, 31, 34],
			//medieval
			[39, 53, 43, 47, 52],
			//ruin
			[54, 69, 67, 63, 70],
			//dungeon
			[71, 88, 76, 73, 78],
			//pepperman room 513
			[boss_pepperman],
			//secret
			[809]
		],
		[
			//badland
			[719, 729, 736, 737, 738],
			//graveyard
			[123, 131, 125, 127, 128],
			//farm
			[138, 152, 139, 144, 146],
			//saloon
			[687, 697, 698, 700, 699],
			//vigilante room 514
			[boss_vigilante],
			//secret
			[810]
		],
		[
			//plage
			[706, 715, 184, 186, 189],
			//forest
			[194, 703, 197, 201, 203],
			//space
			[241, 368, 372, 373, 374],
			//minigolf
			[229, 237, minigolf_secret1, minigolf_secret2, minigolf_secret3],
			//noise room 515
			[boss_noise],
			//secret
			[811]
		],
		[
			//street
			[559, 685, 665, 666, 667],
			//industrial
			[672, 831, 678, 679, 680],
			//sewer
			[830, 384, 389, 681, 682],
			//freezer
			[441, 459, 449, 447, 448],
			//fakepep room 783
			[boss_fakepep],
			//mr car
			[812],
			//noisette cafe
			[808]
		],
		[
			//chateau
			[244, 257, 247, 249, 245],
			//kidsparty
			[596, 609, 500, 501, 502],
			//war
			[526, 825, 826, 827],
			//pizzaface room 659
			[boss_pizzaface],
			//exit [crumbling tower]
			[819],
			//wash n clean
			[807],
			//mansion
			[813]
		]
	]
	var level_rooms = rooms[argument0][argument1]
	return level_rooms[argument2];
}
function levelselect_lastroom(argument0, argument1)
{
	switch(argument0)
	{
		case "entrance":
			if(argument1 == 2)
				return entrance_6 //30
			else if(argument1 == 3)
				return entrance_9 //36
			else if(argument1 == 4)
				return entrance_6c //32
		
		case "medieval":
			if(argument1 == 2)
				return medieval_4 //42
			else if(argument1 == 3)
				return medieval_6 //46
			else if(argument1 == 4)
				return medieval_3b //546
		
		//3rd secret is john pillar room
		case "ruin":
			if(argument1 == 2)
				return ruin_2 //55
			else if(argument1 == 3)
				return ruin_7 //62
			else if(argument1 == 4)
				return ruin_11 //69
		
		case "dungeon":
			if(argument1 == 2)
				return dungeon_3 //74
			else if(argument1 == 3)
				return dungeon_5 //77
			else if(argument1 == 4)
				return dungeon_9 //86
		
		case "badland":
			if(argument1 == 2)
				return badland_4
			else if(argument1 == 3)
				return badland_8
			else if(argument1 == 4)
				return badland_mart3
		
		case "graveyard":
			if(argument1 == 2)
				return graveyard_3
			else if(argument1 == 3)
				return graveyard_5c
			else if(argument1 == 4)
				return graveyard_4
		
		case "farm":
			if(argument1 == 2)
				return farm_4b
			else if(argument1 == 3)
				return farm_9b
			else if(argument1 == 4)
				return farm_13
		
		case "saloon":
			if(argument1 == 2)
				return saloon_5b
			else if(argument1 == 3)
				return saloon_5
			else if(argument1 == 4)
				return saloon_2b
		
		case "plage":
			if(argument1 == 2)
				return plage_ship2
			else if(argument1 == 3)
				return plage_beach2
			else if(argument1 == 4)
				return plage_cavern2
		
		case "forest":
			if(argument1 == 2)
				return forest_G2
			else if(argument1 == 3)
				return forest_12
			else if(argument1 == 4)
				return forest_1
		
		case "space":
			if(argument1 == 2)
				return space_3
			else if(argument1 == 3)
				return space_7
			else if(argument1 == 4)
				return space_11b
		
		case "minigolf":
			if(argument1 == 2)
				return minigolf_5
			else if(argument1 == 3)
				return minigolf_6
			else if(argument1 == 4)
				return minigolf_7
		
		case "street":
			if(argument1 == 2)
				return street_house2
			else if(argument1 == 3)
				return street_house4
			else if(argument1 == 4)
				return street_house5
		
		case "industrial":
			if(argument1 == 2)
				return industrial_2
			else if(argument1 == 3)
				return industrial_4
			else if(argument1 == 4)
				return industrial_3
		
		case "sewer":
			if(argument1 == 2)
				return sewer_3
			else if(argument1 == 3)
				return sewer_8
			else if(argument1 == 4)
				return sewer_11
		
		case "freezer":
			if(argument1 == 2)
				return freezer_6
			else if(argument1 == 3)
				return freezer_15
			else if(argument1 == 4)
				return freezer_5
		
		case "chateau":
			if(argument1 == 2)
				return chateau_8
			else if(argument1 == 3)
				return chateau_5
			else if(argument1 == 4)
				return chateau_1
		
		case "kidsparty":
			if(argument1 == 2)
				return kidsparty_basementsecret
			else if(argument1 == 3)
				return kidsparty_floor2_3
			else if(argument1 == 4)
				return kidsparty_floor3_3
		
		case "war":
			if(argument1 == 1)
				return war_7
			else if(argument1 == 2)
				return war_9
			else if(argument1 == 3)
				return war_12
		
		//case "exit":
			//return 
	}
	return -4
}
function levelselect_portalid(argument0, argument1)
{
	switch(argument0)
	{
		case "entrance":
			if(argument1 == 2)
				return 100828
			else if(argument1 == 3)
				return 101211
			else if(argument1 == 4)
				return 100910
		
		case "medieval":
			if(argument1 == 2)
				return 101592
			else if(argument1 == 3)
				return 101774
			else if(argument1 == 4)
				return 143571
		
		case "ruin":
			if(argument1 == 2)
				return 102249
			else if(argument1 == 3)
				return 102890
			else if(argument1 == 4)
				return 103422
		
		case "dungeon":
			if(argument1 == 2)
				return 104256
			else if(argument1 == 3)
				return 104584
			else if(argument1 == 4)
				return 105263
		
		case "badland":
			if(argument1 == 2)
				return 158111
			else if(argument1 == 3)
				return 158897
			else if(argument1 == 4)
				return 159288
		
		case "graveyard":
			if(argument1 == 2)
				return 108712
			else if(argument1 == 3)
				return 143887
			else if(argument1 == 4)
				return 108884
		
		case "farm":
			if(argument1 == 2)
				return 109747
			else if(argument1 == 3)
				return 110342
			else if(argument1 == 4)
				return 110851
		
		case "saloon":
			if(argument1 == 2)
				return 155146
			else if(argument1 == 3)
				return 155272
			else if(argument1 == 4)
				return 154537
		
		case "plage":
			if(argument1 == 2)
				return 156901
			else if(argument1 == 3)
				return 157196
			else if(argument1 == 4)
				return 157500
		
		case "forest":
			if(argument1 == 2)
				return 144424
			else if(argument1 == 3)
				return 114073
			else if(argument1 == 4)
				return 113277
		
		case "space":
			if(argument1 == 2)
				return 126665
			else if(argument1 == 3)
				return 127140
			else if(argument1 == 4)
				return 127668
		
		case "minigolf":
			if(argument1 == 2)
				return 116184
			else if(argument1 == 3)
				return 116301
			else if(argument1 == 4)
				return 116404
		
		case "street":
			if(argument1 == 2)
				return 145278
			else if(argument1 == 3)
				return 153920
			else if(argument1 == 4)
				return 154133
		
		case "industrial":
			if(argument1 == 2)
				return 152624
			else if(argument1 == 3)
				return 153170
			else if(argument1 == 4)
				return 152903
		
		case "sewer":
			if(argument1 == 2)
				return 128075
			else if(argument1 == 3)
				return 128814
			else if(argument1 == 4)
				return 129355
		
		case "freezer":
			if(argument1 == 2)
				return 135639
			else if(argument1 == 3)
				return 136629
			else if(argument1 == 4)
				return 135520
		
		case "chateau":
			if(argument1 == 2)
				return 118281
			else if(argument1 == 3)
				return 117783
			else if(argument1 == 4)
				return 117067
		
		case "kidsparty":
			if(argument1 == 2)
				return 152049
			else if(argument1 == 3)
				return 148131
			else if(argument1 == 4)
				return 148595
		
		case "war":
			if(argument1 == 1)
				return 142615
			else if(argument1 == 2)
				return 142863
			else if(argument1 == 3)
				return 143158
	}
}
function levelselect_dest_door(argument0, argument1)
{
	var vals = []
	switch(argument0)
	{
		case "tutorial":
			vals = ["A", "C"]
			break
		case "entrance":
			vals = ["A", "B", -4, -4, -4]
			break
		case "medieval":
			vals = ["A", "D", -4, -4, -4]
			break
		case "ruin":
			vals = ["A", "B", -4, -4, -4]
			break
		case "dungeon":
			vals = ["A", "B", -4, -4, -4]
			break
		case "b_pepperman":
			vals = ["A"]
			break
		case "secret1":
			vals = ["F"]
			break
		
		case "badland":
			vals = ["A", "D", -4, -4, -4]
			break
		case "graveyard":
			vals = ["A", "B", -4, -4, -4]
			break
		case "farm":
			vals = ["A", "B", -4, -4, -4]
			break
		case "saloon":
			vals = ["A", "C", -4, -4, -4]
			break
		case "b_vigilante":
			vals = ["A"]
			break
		case "secret2":
			vals = ["F"]
			break
		
		case "plage":
			vals = ["A", "B", -4, -4, -4]
			break
		case "forest":
			vals = ["A", "B", -4, -4, -4]
			break
		case "space":
			vals = ["A", "ROCKET", -4, -4, -4]
			break
		case "minigolf":
			vals = ["A", "E", -4, -4, -4]
			break
		case "b_noise":
			vals = ["A"]
			break
		case "secret3":
			vals = ["F"]
			break
		
		case "street":
			vals = ["A", "B", -4, -4, -4]
			break
		case "industrial":
			vals = ["A", "A", -4, -4, -4]
			break
		case "sewer":
			vals = ["A", "B", -4, -4, -4]
			break
		case "freezer":
			vals = ["A", "C", -4, -4, -4]
			break
		case "b_fakepep":
			vals = ["A"]
			break
		case "secret4":
			vals = ["F"]
			break
		case "secret5":
			vals = ["F"]
			break
		
		case "chateau":
			vals = ["A", "A", -4, -4, -4]
			break
		case "kidsparty":
			vals = ["A", "A", -4, -4, -4]
			break
		case "war":
			vals = ["A", -4, -4, -4]
			break
		case "b_pizzaface":
			vals = ["B"]
			break
		case "exit":
			vals = ["C"]
			break
		case "secret6":
			vals = ["F"]
			break
		case "secret7":
			vals = ["F"]
			break
	}
	return vals[argument1];
}
function levelselect_dest_group(argument0, argument1)
{
	var groups = [
		[ ["hubgroup"], ["entrancegroup"], ["medievalgroup"], ["ruingroup"], ["dungeongroup"], ["bossgroup"], ["hubgroup"] ],
		[ ["desertgroup"], ["graveyardgroup"], ["farmgroup"], ["saloongroup"], ["bossgroup"], ["vigilantegroup"], ["hubgroup"] ],
		[ ["beachgroup"], ["forestgroup"], ["spacegroup"], ["minigolfgroup"], ["bossgroup"], ["hubgroup"] ],
		[ ["citygroup"], ["factorygroup"], ["sewergroup"], ["freezergroup"], ["bossgroup"], ["hubgroup"], ["hubgroup"] ],
		[ ["chateaugroup"], ["kidspartygroup"], ["wargroup"], ["bossgroup"], ["hubgroup"], ["hubgroup"], ["hubgroup"] ]
	]
	return groups[argument0][argument1];
}

function levelselect_prep_john(argument0)
{
	switch(argument0)
	{
		case "entrance":
			obj_player.hallway = 1
			obj_player.hallwaydirection = 2
			break
		case "medieval":
			//101498 - room 3 rat
			//101777 - room 6 rat
			//101957 - room 9 rat
			//143569 - room 3b metal block
			ds_list_add(global.saveroom, 101498)
			ds_list_add(global.saveroom, 143569)
			ds_list_add(global.saveroom, 101957)
			break
		case "ruin":
			//102250 - room 2 secret block
			//102732 - room 6 rat
			//102755 - room 6 rat 2
			//102880 - room 7 rat
			//102886 - room 7 secret rat
			//103361 - room 11 john pillar
			ds_list_add(global.saveroom, 102732)
			ds_list_add(global.saveroom, 102755)
			ds_list_add(global.saveroom, 102880)
			break
		case "dungeon":
			//104740 - room 6 metal block
			obj_player.hallway = 1
			obj_player.hallwaydirection = 2
			ds_list_add(global.saveroom, 104740)
			break
		case "badland":
			obj_player.hallway = 1
			obj_player.hallwaydirection = 2
			//157972 - room 3 metal block
			ds_list_add(global.saveroom, 157972)
			break
		case "saloon":
			//155322 - room 5 top rat
			//155321 - room 5 bottom rat
			ds_list_add(global.saveroom, 155322)
			ds_list_add(global.saveroom, 155321)
			break
		case "plage":
			//156316 - beach 1 block covering vertical hall
			//156317 - beach 1 block covering vertical hall
			ds_list_add(global.saveroom, 156316)
			ds_list_add(global.saveroom, 156317)
			break
		case "minigolf":
			//115607 - room 1 golf block
			//115688 - room 2 golf block
			//115738 - room 3 golf block
			//116060 - room 4 rat block
			ds_list_add(global.saveroom, 115607)
			ds_list_add(global.saveroom, 115688)
			ds_list_add(global.saveroom, 115738)
			ds_list_add(global.saveroom, 116060)
			break
		case "sewer":
			obj_player.hallway = 1
			obj_player.hallwaydirection = -2
			break
		case "kidsparty":
			ds_list_add(global.saveroom, 149157)
			ds_list_add(global.saveroom, 149031)
			ds_list_add(global.saveroom, 149032)
			ds_list_add(global.saveroom, 149033)
			ds_list_add(global.saveroom, 149161)
			ds_list_add(global.saveroom, 149041)
			ds_list_add(global.saveroom, 149042)
			ds_list_add(global.saveroom, 149034)
			ds_list_add(global.saveroom, 149160)
			ds_list_add(global.saveroom, 149040)
			ds_list_add(global.saveroom, 149043)
			ds_list_add(global.saveroom, 149035)
			ds_list_add(global.saveroom, 149159)
			ds_list_add(global.saveroom, 149039)
			ds_list_add(global.saveroom, 149044)
			ds_list_add(global.saveroom, 149036)
			ds_list_add(global.saveroom, 149158)
			ds_list_add(global.saveroom, 149038)
			ds_list_add(global.saveroom, 149045)
			ds_list_add(global.saveroom, 149037)
			
			
			ds_list_add(global.saveroom, 149162)
			ds_list_add(global.saveroom, 149015)
			ds_list_add(global.saveroom, 149016)
			ds_list_add(global.saveroom, 149017)
			ds_list_add(global.saveroom, 149166)
			ds_list_add(global.saveroom, 149025)
			ds_list_add(global.saveroom, 149026)
			ds_list_add(global.saveroom, 149018)
			ds_list_add(global.saveroom, 149165)
			ds_list_add(global.saveroom, 149024)
			ds_list_add(global.saveroom, 149027)
			ds_list_add(global.saveroom, 149019)
			ds_list_add(global.saveroom, 149164)
			ds_list_add(global.saveroom, 149023)
			ds_list_add(global.saveroom, 149028)
			ds_list_add(global.saveroom, 149020)
			ds_list_add(global.saveroom, 149163)
			ds_list_add(global.saveroom, 149022)
			ds_list_add(global.saveroom, 149029)
			ds_list_add(global.saveroom, 149021)
			obj_player.verticalhallway = 1
			obj_player.vhallwaydirection = -2
			obj_player.state = 97
			obj_player.sprite_index = spr_player_superjump
			obj_player.verticalstate = 0
			obj_player.verticalhall_vsp = -12
			break
	}
}
function levelselect_prep_floorsecret(argument0)
{
	switch(argument0)
	{
		case "secret1":
			obj_player.hallway = 1
			obj_player.hallwaydirection = 2
			break
		case "secret2":
			obj_player.verticalhallway = 1
			obj_player.vhallwaydirection = 2
			obj_player.state = 108
			obj_player.sprite_index = spr_player_bodyslamfall
			obj_player.verticalstate = 0
			obj_player.verticalhall_vsp = 12
			break
		case "secret3":
			obj_player.verticalhallway = 1
			obj_player.vhallwaydirection = -2
			obj_player.state = 97
			obj_player.sprite_index = spr_player_superjump
			obj_player.verticalstate = 0
			obj_player.verticalhall_vsp = -12
			break
		case "secret4":
			obj_player.hallway = 1
			obj_player.hallwaydirection = -2
			obj_player.x = 1140
			obj_player.y = 498
			break
		case "secret5":
			obj_player.hallway = 1
			obj_player.hallwaydirection = 2
			break
		case "secret6":
			obj_player.hallway = 1
			obj_player.hallwaydirection = -2
			obj_player.x = 1140
			obj_player.y = 498
			break
		case "secret7":
			obj_player.verticalhallway = 1
			obj_player.vhallwaydirection = -2
			obj_player.state = 97
			obj_player.sprite_index = spr_player_superjump
			obj_player.verticalstate = 0
			obj_player.verticalhall_vsp = -12
			break
	}
}
function levelselect_prep_levelsecret(argument0, argument1)
{
	//fill values
	//playerreset = 500 = 40s
	//320 = 20s
	//16 = 1s
	//1860 = 2:33
	//1260 = 1:43
	//1100 = 1:30
	switch(argument0)
	{
		case "entrance":
			if(argument1 == 4)
			{
				global.fill = 1420
				global.panic = 1
				global.minutes = 1
				global.seconds = 50
			}
			break
		case "medieval":
			//101498 - room 3 rat
			//101777 - room 6 rat
			//101957 - room 9 rat
			//143569 - room 3b metal block
			if(argument1 == 2)
			{
				with(obj_player1)
				{
					/*global.SAGEknighttaken = true;
					state = 47
					sprite_index = spr_knightpep_idle*/
					sprite_index = spr_knightpepfall
					state = 47
					other.hsp = 0
					other.vsp = 0
				}
				ds_list_add(global.saveroom, 101498)
				ds_list_add(global.saveroom, 143569)
			}
			else if(argument1 == 3)
			{
				ds_list_add(global.saveroom, 101498)
				ds_list_add(global.saveroom, 143569)
				ds_list_add(global.saveroom, 101777)
			}
			else if(argument1 == 4)
			{
				ds_list_add(global.saveroom, 101498)
				ds_list_add(global.saveroom, 143569)
				global.panic = 1
			}
			break
		case "ruin":
			//102250 - room 2 secret block
			//102732 - room 6 rat
			//102755 - room 6 rat 2
			//102880 - room 7 rat
			//102886 - room 7 secret rat
			//103361 - room 11 john pillar
			if(argument1 == 2)
			{
				ds_list_add(global.saveroom, 102250)
			}
			else if(argument1 == 3)
			{
				ds_list_add(global.saveroom, 102732)
				ds_list_add(global.saveroom, 102755)
				ds_list_add(global.saveroom, 102886)
			}
			else if(argument1 == 4)
			{
				global.fill = 2040
				global.panic = 1
				global.minutes = 2
				global.seconds = 55
				ds_list_add(global.saveroom, 103361)
				ds_list_add(global.saveroom, 102732)
				ds_list_add(global.saveroom, 102755)
				ds_list_add(global.saveroom, 102880)
			}
			break
		case "dungeon":
			//104255 - room 3 secret block
			//104740 - room 6 metal block
			if(argument1 == 2)
			{
				ds_list_add(global.saveroom, 104255)
			}
			else if(argument1 == 4)
			{
				ds_list_add(global.saveroom, 104740)
			}
			break
		case "badland":
			//157972 - room 3 metal block
			ds_list_add(global.saveroom, 157972)
			if(argument1 == 4)
				global.panic = 1
			break
		case "graveyard":
			if(argument1 == 4)
			{
				global.fill = 2500
				global.panic = 1
				global.minutes = 3
				global.seconds = 10
			}
			break
		case "farm":
			//110364 - potato under priest
			if(argument1 == 3)
			{
				ds_list_add(global.saveroom, 110364)
			}
			else if(argument1 == 4)
				global.panic = 1
			break
		case "saloon":
			//155322 - room 5 top rat
			//155321 - room 5 bottom rat
			if(argument1 == 3)
			{
				ds_list_add(global.saveroom, 155322)
				ds_list_add(global.saveroom, 155321)
			}
			else if(argument1 == 4)
				global.panic = 1
			break
		case "plage":
			//156316 - beach 1 block covering vertical hall
			//156317 - beach 1 block covering vertical hall
			ds_list_add(global.saveroom, 156316)
			ds_list_add(global.saveroom, 156317)
			if(argument1 == 4)
				ds_list_add(global.saveroom, 157532)
			break
		case "forest":
			if(argument1 == 4)
				global.panic = 1
			break
		case "space":
			//127665 - secret cheese block
			if(argument1 == 4)
			{
				ds_list_add(global.saveroom, 127665)
				global.panic = 1
			}
			break
		case "minigolf":
			//115607 - room 1 golf block
			//115688 - room 2 golf block
			//115738 - room 3 golf block
			//116060 - room 4 rat block
			//116386 - room 7 rat block
			ds_list_add(global.saveroom, 115607)
			ds_list_add(global.saveroom, 115688)
			ds_list_add(global.saveroom, 115738)
			ds_list_add(global.saveroom, 116060)
			if(argument1 == 4)
				ds_list_add(global.saveroom, 116386)
			break
		case "industrial":
			if(argument1 == 4)
				global.panic = 1
			break
		case "sewer":
			if(argument1 == 4)
				global.panic = 1
			break
		case "freezer":
			if(argument1 == 3)
				ds_list_add(global.saveroom, 136628)
			else if(argument1 == 4)
				global.panic = 1
			break
		case "chateau":
			if(argument1 == 3 || argument1 == 4)
				global.panic = 1
			break
		case "war":
			if(argument1 == 1)
			{
				with (instance_create_unique(0, 0, 422))
				{
					minutes = 0
					seconds = 35
				}
			}
			else if(argument1 == 2)
			{
				with (instance_create_unique(0, 0, 422))
				{
					minutes = 0
					seconds = 52
				}
			}
			else if(argument1 == 3)
			{
				with (instance_create_unique(0, 0, 422))
				{
					minutes = 1
					seconds = 20
				}
			}
			break
	}
}
//values for obj_player.backtohubstartx to stop softlock teleporting to pillar room
function levelselect_johnhubx(argument0)
{
	if(argument0 == -4)
		return -4
	switch(argument0)
	{
		case "entrance":
			return 136
		case "dungeon":
			return 72
		case "badland":
			return 72
		case "plage":
			return 6128
		case "forest":
			return 80
		case "space":
			return 2646
		case "minigolf":
			return 224
		case "street":
			return 240
		case "sewer":
			return 7128
		case "freezer":
			return 550
		case "kidsparty":
			return 641
	}
	return -4
}
function levelselect_johnhuby(argument0)
{
	if(argument0 == -4)
		return -4
	switch(argument0)
	{
		case "entrance":
			return 434
		case "dungeon":
			return 446
		case "badland":
			return 594
		case "plage":
			return 1010
		case "forest":
			return 818
		case "space":
			return 786
		case "minigolf":
			return 690
		case "street":
			return 562
		case "sewer":
			return 1714
		case "freezer":
			return 1000
		case "kidsparty":
			return 562
	}
	return -4
}

function levelselect_music_getkey(argument0)
{
	switch(argument0)
	{
		case "tutorial":
			return tower_tutorial1
		case "entrance":
			return entrance_1
		case "medieval":
			return medieval_1
		case "ruin":
			return ruin_1
		case "dungeon":
			return dungeon_1
		case "b_pepperman":
			return boss_pepperman
		case "badland":
			return badland_1
		case "graveyard":
			return graveyard_1
		case "farm":
			return farm_2
		case "saloon":
			return saloon_1
		case "b_vigilante":
			return boss_vigilante
		case "plage":
			return plage_entrance
		case "forest":
			return forest_1
		case "space":
			return space_1
		case "minigolf":
			return minigolf_1
		case "b_noise":
			return boss_noise
		case "street":
			return street_1
		case "industrial":
			return industrial_1
		case "sewer":
			return sewer_1
		case "freezer":
			return freezer_1
		case "b_fakepep":
			return boss_fakepep
		case "chateau":
			return chateau_1
		case "kidsparty":
			return kidsparty_1
		case "war":
			return war_1
		//case "b_pizzaface":
			//return 
		case "exit":
			return tower_finalhallway
		case "secret1":
		case "secret2":
		case "secret3":
		case "secret4":
		case "secret5":
		case "secret6":
		case "secret7":
			return tower_entrancehall
	}
}

function levelselect_submit()
{
	if (room == Endingroom || room == tower_soundtest || room == Creditsroom || room == Johnresurrectionroom)
	{
		key_back = 1
		return;
	}
	
	//globals
	global.panic = 0
	global.roomchange = 0
	global.ls_last_floor = ls_selected_floor
	global.ls_last_level = ls_selected_level
	global.ls_last_section = ls_selected_section
	global.levelattempts = 0
	global.levelselect = 1
	var dest_type = levelselect_dest_desttype(ls_selected_floor, ls_selected_level, ls_selected_section)
	if(dest_type == "secret-fl")
		global.startgate = 0
	else
		global.startgate = 1
	
	//pre-unload
	with(obj_pause)
	{
		pause_unpause_music()
		stop_music()
		scr_pause_activate_objects()
		scr_pause_stop_sounds()
	}
	with(obj_camera)
	{
		lock = 0
		chargecamera = 0
	}
	audio_stop_all()
	obj_music.music = -4
	//the above calls should make these unnecessary, but i'll leave these here just in case
		//fmod_event_instance_stop(global.snd_bossbeaten, 1)
		//fmod_event_instance_stop(pausemusicID, 1)
	instance_destroy(obj_option)
	instance_destroy(obj_keyconfig)
	with(obj_pause)
	{
		if(dest_type == "secret-fl")
			hub = 1
		else
			hub = 0
		pause = 0
	}
	
	alarm[0] = 1
}

//level title screen stuff
/*
function levelselect_title(dest)
{
	with(obj_player)
	{
		if(dest.level == "tutorial")
		{
			with (instance_create_unique(0, 0, 979))
				restarttimer = 1
		}
		if(dest.type == "boss")
		{
			with (instance_create_unique(0, 0, 979))
			{
				group_arr = dest.group
				restarttimer = 1
			}
		}
		else if(dest.type == "level")
		{
			if (!instance_exists(obj_titlecard))
			{
				with (instance_create(x, y, obj_titlecard))
				{
					group_arr = gate.group_arr
					titlecard_sprite = gate.titlecard_sprite
					titlecard_index = gate.titlecard_index
					title_sprite = gate.title_sprite
					title_index = gate.title_index
					title_music = gate.title_music
				}
			}
		}
	}
}*/

function levelselect_floor_changed(argument0)
{
    ls_selected_floor = argument0.value
	ls_selected_level = 0
	ls_selected_section = 0
	var ls_opt_section = ls_menu.options[2]
	var ls_opt_level = ls_menu.options[1]
	//level option
	ls_opt_level.value = 0
	switch(ls_selected_floor)
	{
		case 0:
			ls_opt_level.values = ls_floor1
		break
		case 1:
			ls_opt_level.values = ls_floor2
		break;
		case 2:
			ls_opt_level.values = ls_floor3
		break;
		case 3:
			ls_opt_level.values = ls_floor4
		break;
		case 4:
			ls_opt_level.values = ls_floor5
		break;
	}
	//section option
	ls_opt_section.value = 0
	if(ls_selected_floor == 0)
		ls_opt_section.values = ls_section_nosecrets
	else
		ls_opt_section.values = ls_section_normal
}

function levelselect_level_changed(argument0)
{
	ls_selected_level = argument0.value
	var ls_opt_section = ls_menu.options[2]
	ls_selected_section = 0
	ls_opt_section.value = 0
	switch(ls_selected_floor)
	{
		case 0:
			if(ls_selected_level == 0)
				ls_opt_section.values = ls_section_nosecrets
			else if(ls_selected_level == 5 || ls_selected_level == 6)
				ls_opt_section.values = ls_section_single
			else
				ls_opt_section.values = ls_section_normal
		break
		
		case 1:
		case 2:
		case 3:
			if(ls_selected_level >= 4)
				ls_opt_section.values = ls_section_single
			else
				ls_opt_section.values = ls_section_normal
		break
		
		case 4:
			if(ls_selected_level == 0 || ls_selected_level == 1)
				ls_opt_section.values = ls_section_normal
			else if(ls_selected_level == 2)
				ls_opt_section.values = ls_section_nojohns
			else
				ls_opt_section.values = ls_section_single
		break
	}
}

function levelselect_section_changed(argument0)
{
	ls_selected_section = argument0.value
}
