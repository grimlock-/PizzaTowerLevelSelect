/* Tooltip
	with (create_transformation_tip(lang_get_value("option_controls_saved")))
	{
		depth = -700
		alarm[1] = 100
	}
	
	Message box
	show_message_async("string")
*/
global.id_offset = 8
function draw_thing(argument0)
{
	draw_text(5, (obj_screensizer.actual_height - global.id_offset), string_upper(argument0))
	global.id_offset += 32
}
if ((!global.option_timer) || room == Realtitlescreen || room == Longintro || room == Finalintro || room == Mainmenu || room == hub_loadingscreen || room == Creditsroom || room == Johnresurrectionroom || room == rank_room || instance_exists(obj_titlecard) || (!global.option_hud))
    return;
if ((!global.option_hud) || (instance_exists(obj_debugcontroller) && (!obj_debugcontroller.showhud)))
    return;
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
draw_set_font(global.smallfont)
draw_set_alpha(1)
draw_set_color(c_white)
var s = string(obj_player1.state) + ": "
switch obj_player1.state
{
	case 0:
		s += "NORMAL"
		break
	case 1:
		s += "REVOLVER"
		break
	case 2:
		s += "DYNAMITE"
		break
	case 5:
		s += "SLIDE"
		break
	case 18:
		s += "TITLESCREEN"
		break
	case 37:
		s += "CLIMBWALL"
		break
	case 38:
		s += "KNIGHTPEPSLOPES"
		break
	case 39:
		s += "PORTAL"
		break
	case 42:
		s += "HANDSTANDJUMP"
		break
	case 47:
		s += "KNIGHTPEP"
		break
	case 79:
		s += "GRAB"
		break
	case 80:
		s += "PUNCH"
		break
	case 92:
		s += "JUMP"
		break
	case 95:
		s += "COMING OUT DOOR"
		break
    case 97:
        s += "SUPERJUMP"
        break
	case 98:
		s += "VICTORY"
		break
	case 99:
		s += "SJUMP PREP"
		break
    case 100:
        s += "CROUCH"
        break
	case 103:
		s += "MACH 1"
		break
	case 104:
		s += "MACH 2"
		break
	case 105:
		s += "MACH SLIDE"
		break
	case 106:
		s += "BUMP"
		break
	case 107:
		s += "HURT"
		break
    case 108:
        s += "FREEFALL"
        break
	case 111:
		s += "FALL LAND"
		break
	case 112:
		s += "DOOR"
		break
    case 121:
		s += "MACH 3"
		break
	case 123:
		s += "SJUMP LAND"
		break
	case 146:
		s += "ACTOR"
		break
	case 186:
		s += "GOTOPLAYER"
		break
	case 191:
		s += "RATMOUNT"
		break
	case 290:
		s += "BACK TO HUB"
		break
	case 296:
		s += "SECRETENTER"
		break
}

draw_thing(concat("Y: ", string(obj_player1.y)))
draw_thing(concat("X: ", string(obj_player1.x)))
draw_thing(concat("STATE ", s))
draw_thing(concat("LAST ROOM: ", string(obj_player.lastroom), " ", string_upper(room_get_name(obj_player.lastroom))))
draw_thing(concat("HUBROOM: ", string(obj_player.backtohubroom), " ", string_upper(room_get_name(obj_player.backtohubroom))))
draw_thing(concat("ROOM: ", string(room), " ", string_upper(room_get_name(room))))


//draw_thing(concat("LAST ROOM: ", string(obj_player.lastroom), " ", string_upper(room_get_name(obj_player.lastroom))))
//draw_thing(concat("HUBROOM: ", string(obj_player.backtohubroom), " ", string_upper(room_get_name(obj_player.backtohubroom))))
//draw_thing(concat("HUB_X ", string(obj_player.backtohubstartx)))
//draw_thing(concat("HUB_Y ", string(obj_player.backtohubstarty)))
//draw_thing(concat("SPRITE ", string(obj_player1.sprite_index)))
//draw_thing(concat("SPEED ", string(obj_player1.hsp)))
//draw_thing(concat("VSP ", string(obj_player1.vsp)))
/*if(global.offload_tex != -4)
{
	draw_thing(concat("global.offload_tex ", string(array_length(global.offload_tex))))
	var comb = ""
	for (var i = 0; i < array_length(global.offload_tex); i++)
		comb += concat(", ", global.offload_tex[i])
	draw_thing(string_copy(comb, 3, string_length(comb)))
}
else
{
	draw_thing("global.offload_tex empty")
}*/
//draw_thing(concat("GLOBAL.STARTGATE ", string(global.startgate)))
//if(!instance_exists(obj_camera))
	//draw_thing(concat("OBJ.CAMERA STATE: INACTIVE"))
//else
	//draw_thing(concat("OBJ.CAMERA STATE: ACTIVE"))
	
/*if(ds_list_size(global.saveroom) == 0)
	draw_thing("LAST KILL: NONE")
else
{
	var pos = ds_list_size(global.saveroom) - 1
	var _id = ds_list_find_value(global.saveroom, pos)
	draw_thing(concat("LAST KILL: ", _id))
}*/