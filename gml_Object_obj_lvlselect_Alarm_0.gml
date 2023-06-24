with(obj_pause)
{
	scr_pause_stop_sounds()
	scr_pause_activate_objects()
}
ds_list_clear(global.debris_list)
ds_list_clear(global.collect_list)

if (!instance_exists(obj_player1))
	instance_activate_object(obj_player1)
	
var lv = levelselect_dest_level(ls_selected_floor, ls_selected_level)
var dest_type = levelselect_dest_desttype(ls_selected_floor, ls_selected_level, ls_selected_section)
var rm = levelselect_dest_room(ls_selected_floor, ls_selected_level, ls_selected_section)
var hub_rm = levelselect_hub_room(lv)
var doreset = 1
switch(dest_type)
{
	case "level":
		if(global.leveltosave == -4)
			doreset = 0
		global.level_minutes = 0;
		global.level_seconds = 0;
		global.leveltosave = lv
		global.leveltorestart = levelselect_dest_room(ls_selected_floor, ls_selected_level, 0)
		with(obj_player1)
		{
			mach2 = 0;
			obj_camera.chargecamera = 0;
			state = 95;
			backtohubroom = hub_rm
		}
		break
		
	case "boss":
		if(global.leveltosave == -4)
			doreset = 0
		global.bossintro = 1
		global.level_minutes = 0;
		global.level_seconds = 0;
		global.leveltosave = lv
		global.leveltorestart = rm
		obj_player1.backtohubroom = hub_rm
		break
		
	case "secret-lv":
		if(global.leveltosave == -4)
			doreset = 0
		global.level_minutes = 0;
		global.level_seconds = 0;
		global.leveltosave = lv
		global.leveltorestart = rm
		obj_player1.lastroom = levelselect_lastroom(lv, ls_selected_section)
		obj_player1.secretportalID = levelselect_portalid(lv, ls_selected_section)
		obj_player1.backtohubroom = hub_rm
		break
		
	case "secret-fl":
		global.leveltosave = -4
		global.leveltorestart = -4
		obj_player1.backtohubroom = -4
		break
}


if(doreset)
{
	global.levelreset = 0
	scr_playerreset()
	//Setting levelreset to 1 causes a redundant call to scr_playerreset in obj_player's RoomStart
	//which undoes the changes we need to make for some pillar rooms and floor secrets
	/*if(ls_selected_section == 1 && lv != "war" || dest_type == "secret-fl")
	{
		instance_destroy(obj_comboend)
		instance_destroy(obj_combotitle)
		global.combodropped = false
	}
	else*/
		global.levelreset = 1
}

obj_player1.targetRoom = rm
obj_player1.targetDoor = levelselect_dest_door(lv, ls_selected_section)

with(instance_create_unique(0, 0, obj_fadeout))
{
	group_arr = levelselect_dest_group(other.ls_selected_floor, other.ls_selected_level)
	//offload_arr = 
}

if(!levelselect_showintro() && (room == boss_pizzaface || room == boss_noise || room == boss_pepperman || room == boss_fakepep || room == boss_vigilante))
	global.bossintro = 1
	
//get fmod event ID
var k = levelselect_music_getkey(lv, ls_selected_section)
var m = ds_map_find_value(obj_music.music_map, k)
switch(dest_type)
{
	case "secret-fl":
		fmod_event_instance_play(m.event)
		break
	case "boss":
		//nothing
		break
	case "level":
		if(ls_selected_section > 0)
		{
			fmod_event_instance_play(m.event)
			with(obj_music)
			{
				savedmusicpos = 0
				music = m
			}
		}
		break
	case "secret-lv":
		fmod_event_instance_play(m.event)
		fmod_event_instance_set_paused(m.event, 1)
		fmod_event_instance_play(m.event_secret)
		with(obj_music)
		{
			savedmusicpos = 0
			music = m
		}
		break
}

instance_destroy()