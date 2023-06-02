bg_x -= 1
bg_y -= 1
//get inputs
scr_getinput()
var _dvc = obj_inputAssigner.player_input_device[0]
if (key_jump && _dvc >= 0 && gamepad_button_check_pressed(_dvc, global.key_jumpC) && global.key_jumpC == 32770)
    key_jump = 0
key_jump = (key_jump || (global.key_start != 13 && keyboard_check_pressed(vk_return)) || (global.key_start != 32 && keyboard_check_pressed(vk_space)) || gamepad_button_check_pressed(obj_inputAssigner.player_input_device[0], gp_face1))
key_back = (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_return) || gamepad_button_check_pressed(obj_inputAssigner.player_input_device[0], gp_face2))
var move = (key_down2 - key_up2)
var move2 = (key_left2 + key_right2)
var os = optionselected
optionselected += move
optionselected = clamp(optionselected, 0, (array_length(menus[0].options) - 1))
if (os != optionselected)
    fmod_event_one_shot("event:/sfx/ui/step")

//changes
var option = menus[0].options[optionselected]
switch optionselected
{
	case 0:
	case 1:
	case 2:
        if (move2 != obj_bossdoor)
        {
            fmod_event_one_shot("event:/sfx/ui/step")
            option.value += move2
            if (option.value > (array_length(option.values) - 1))
                option.value = obj_bossdoor
            if (option.value < obj_bossdoor)
                option.value = (array_length(option.values) - 1)
			if(option.option_id == 0)
				levelselect_floor_changed(option)
			else if(option.option_id == 1)
				levelselect_level_changed(option)
			else
				levelselect_section_changed(option)
        }
		break
		
	case 3:
        if (key_jump)
            levelselect_submit()
        break
	//multiple
    case (1 << 0):
        break
	//slide
    case (3 << 0):
        break
}


if (menu == (0 << 0))
    scr_pauseicons_update(optionselected)
else
    scr_pauseicons_update(-1)


if ((key_back || key_slap2 || keyboard_check_pressed(vk_escape)) && (!instance_exists(obj_keyconfig)) && (!instance_exists(obj_audioconfig)))
{
    fmod_event_one_shot("event:/sfx/ui/back")
    if instance_exists(obj_mainmenuselect)
        obj_mainmenuselect.selected = 0
    instance_destroy()
}
