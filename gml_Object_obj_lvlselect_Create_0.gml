depth = -99
scr_init_input()
menus = []
menu = 0
optionselected = 0
bg_x = 0
bg_y = 0
pause_icons = array_create(0)
ls_selected_floor = 0
if(variable_global_exists("ls_last_floor"))
	ls_selected_floor = global.ls_last_floor
ls_selected_level = 0
if(variable_global_exists("ls_last_level"))
	ls_selected_level = global.ls_last_level
ls_selected_section = 0
if(variable_global_exists("ls_last_section"))
	ls_selected_section = global.ls_last_section
ls_floors = [
	create_option_value("option_floor_1", 0),
	create_option_value("option_floor_2", 1),
	create_option_value("option_floor_3", 2),
	create_option_value("option_floor_4", 3),
	create_option_value("option_floor_5", 4)
]
ls_floor1 = [
	create_option_value("option_floor1_tutorial", 0),
	create_option_value("option_floor1_level1", 1),
	create_option_value("option_floor1_level2", 2),
	create_option_value("option_floor1_level3", 3),
	create_option_value("option_floor1_level4", 4),
	create_option_value("option_floor1_boss", 5),
	create_option_value("option_floor1_secret", 6)
]
ls_floor2 = [
	create_option_value("option_floor2_level1", 0),
	create_option_value("option_floor2_level2", 1),
	create_option_value("option_floor2_level3", 2),
	create_option_value("option_floor2_level4", 3),
	create_option_value("option_floor2_boss", 4),
	create_option_value("option_floor2_secret", 5)
]
ls_floor3 = [
	create_option_value("option_floor3_level1", 0),
	create_option_value("option_floor3_level2", 1),
	create_option_value("option_floor3_level3", 2),
	create_option_value("option_floor3_level4", 3),
	create_option_value("option_floor3_boss", 4),
	create_option_value("option_floor3_secret", 5)
]
ls_floor4 = [
	create_option_value("option_floor4_level1", 0),
	create_option_value("option_floor4_level2", 1),
	create_option_value("option_floor4_level3", 2),
	create_option_value("option_floor4_level4", 3),
	create_option_value("option_floor4_boss", 4),
	create_option_value("option_floor4_secret1", 5),
	create_option_value("option_floor4_secret2", 6)
]
ls_floor5 = [
	create_option_value("option_floor5_level1", 0),
	create_option_value("option_floor5_level2", 1),
	create_option_value("option_floor5_level3", 2),
	create_option_value("option_floor5_boss", 3),
	create_option_value("option_floor5_level4", 4),
	create_option_value("option_floor5_secret1", 5),
	create_option_value("option_floor5_secret2", 6)
]
ls_section_single = [create_option_value("option_section_na", 0)]
ls_section_normal = [
	create_option_value("option_section_start", 0),
	create_option_value("option_section_john", 1),
	create_option_value("option_section_secret1", 2),
	create_option_value("option_section_secret2", 3),
	create_option_value("option_section_secret3", 4)
]
ls_section_nosecrets = [
	create_option_value("option_section_start", 0),
	create_option_value("option_section_john", 1)
]
ls_section_nojohns = [
	create_option_value("option_section_start", 0),
	create_option_value("option_section_secret1", 1),
	create_option_value("option_section_secret2", 2),
	create_option_value("option_section_secret3", 3)
]
ls_menu = create_menu_fixed(0, 1, 150, 40, -4)
add_option_multiple(ls_menu, 0, "option_ls_floor", ls_floors)
add_option_multiple(ls_menu, 1, "option_ls_level", ls_floor1)
add_option_multiple(ls_menu, 2, "option_ls_section", ls_section_single)
add_option_press(ls_menu, 3, "option_ls_submit", -4)

var dest_type = levelselect_dest_desttype(other.ls_selected_floor, other.ls_selected_level, other.ls_selected_section)
with(ls_menu)
{
	options[0].value = other.ls_selected_floor
	
	if(other.ls_selected_floor > 0)
	{
		switch(other.ls_selected_floor)
		{
			case 1:
				options[1].values = other.ls_floor2
			break;
			case 2:
				options[1].values = other.ls_floor3
			break;
			case 3:
				options[1].values = other.ls_floor4
			break;
			case 4:
				options[1].values = other.ls_floor5
			break;
		}
	}
	options[1].value = other.ls_selected_level
	
	if(other.ls_selected_section > 0)
	{
		if(levelselect_dest_level(other.ls_selected_floor, other.ls_selected_level) == "war")
			options[2].values = other.ls_section_nojohns
		else
			options[2].values = other.ls_section_normal
	}
	else
	{
		if(dest_type == "boss" || dest_type == "secret-fl")
			options[2].values = other.ls_section_single
		else if(other.ls_selected_floor == 0 && other.ls_selected_level == 0 || dest_type == "secret-fl" || dest_type == "boss")
			options[2].values = other.ls_section_nosecrets
		else
			options[2].values = other.ls_section_normal
	}
	options[2].value = other.ls_selected_section
}
array_push(menus, ls_menu)
roomtorestart = -4
