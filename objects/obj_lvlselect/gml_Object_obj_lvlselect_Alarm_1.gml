//level restart/teleport alarm
if (!instance_exists(obj_player1))
	instance_activate_object(obj_player1)
scr_pause_stop_sounds() //duplicate function call even in decomp
ds_list_clear(global.saveroom)
ds_list_clear(global.baddieroom)
ds_list_clear(global.debris_list)
ds_list_clear(global.collect_list)
obj_music.music = -4
var dest_type = levelselect_dest_desttype(ls_selected_floor, ls_selected_level, ls_selected_section)
var lv = levelselect_dest_level(ls_selected_floor, ls_selected_level)
if(lv == "tutorial")
{
	global.leveltosave = "tutorial"
	global.leveltorestart = 788
	obj_player.backtohubstartx = levelselect_realhubx(lv)
	obj_player.backtohubstarty = levelselect_realhuby(lv)
	obj_player.backtohubroom = levelselect_hub_room(lv)
}
else if(ls_selected_section == 1 && lv != "war")
{
	//temporary backtohub values to prevent soft locking
	obj_player.backtohubstartx = levelselect_johnhubx(lv)
	obj_player.backtohubstarty = levelselect_johnhuby(lv)
	global.temp_coord = 2
}
else if(ls_selected_section == 0)
{
	obj_player.backtohubstartx = levelselect_startx(lv)
	obj_player.backtohubstarty = levelselect_starty(lv)
	global.temp_coord = 1
}
else
{
	obj_player.backtohubstartx = levelselect_realhubx(lv)
	obj_player.backtohubstarty = levelselect_realhuby(lv)
}

if(dest_type == "secret-lv")
{
	obj_player.lastroom = levelselect_lastroom(lv, ls_selected_section)
	obj_player.secretportalID = levelselect_portalid(lv, ls_selected_section)
}
/*if(levelselect_dest_desttype(ls_selected_floor, ls_selected_level, ls_selected_section) == "secret-lv")
{
	obj_player.lastroom = levelselect_lastroom(lv, ls_selected_section)
	obj_player.lastTargetDoor = 
	
	//I don't know that there's a way to do this before runtime
	//obj_player.secretportalID = 
	
	obj_player.roomstartx
	obj_player.roomstarty
}*/
global.levelreset = 0
scr_playerreset()
//Setting levelreset to 1 causes a redundant call to scr_playerreset in obj_player's RoomStart
//which undoes the changes we need to make for some pillar rooms and floor secrets
if(ls_selected_section == 1 && lv != "war" || levelselect_dest_desttype(ls_selected_floor, ls_selected_level, ls_selected_section) == "secret-fl")
{
	instance_destroy(obj_comboend)
	instance_destroy(obj_combotitle)
	global.combodropped = false
	levelselect_johnfloorprep(lv)
}
else
	global.levelreset = 1
obj_player1.targetRoom = levelselect_dest_room(ls_selected_floor, ls_selected_level, ls_selected_section)
obj_player1.targetDoor = levelselect_dest_door(ls_selected_floor, ls_selected_level, ls_selected_section)
scr_room_goto(obj_player1.targetRoom)
obj_player1.restartbuffer = 15
if(!levelselect_showintro() && (room == boss_pizzaface || room == boss_noise || room == boss_pepperman || room == boss_fakepep || room == boss_vigilante))
	global.bossintro = 1
instance_destroy()