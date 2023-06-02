draw_rectangle_color(0, 0, obj_screensizer.actual_width, obj_screensizer.actual_height, c_black, c_black, c_black, c_black, 0)
draw_sprite_tiled_ext(spr_optionsBG, 0, bg_x, bg_y, 1, 1, c_white, 1)
if (room != Mainmenu)
{
    with (obj_keyconfig)
        event_perform(ev_draw, ev_gui)
}

draw_set_font(lang_get_font("bigfont"))
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)
var m = menus[menu]
var options = menus[0].options
var len = array_length(options)
var size = ((string_height("A") * len) + (len * m.ypad))
var xx = (obj_screensizer.actual_width / 2)
var yy = ((obj_screensizer.actual_height / 2) - (size / 4))
draw_set_halign(fa_left)
draw_set_valign(fa_top)
xx = m.xpad
c = c_white
a = 1
for (i = 0; i < len; i++)
{
	draw_set_halign(fa_left)
	o = options[i]
	c = c_gray
	if (i == optionselected)
		c = c_white
	if (o.type == (2 << 0) && (!o.localization))
		var txt = o.name
	else
		txt = lang_get_value(o.name)
	draw_text_color(xx, (yy + (m.ypad * i)), txt, c, c, c, c, a)
	draw_set_halign(fa_right)
	switch o.type
	{
		//press
		case 0:
			draw_text_color((obj_screensizer.actual_width - m.xpad), (yy + (m.ypad * i)), (o.value ? lang_get_value("option_on") : lang_get_value("option_off")), c, c, c, c, a)
			break
		//multiple
		case 1:
			var select = o.values[o.value]
			var n = select.name
			if select.localization
				n = lang_get_value(select.name)
			draw_text_color((obj_screensizer.actual_width - m.xpad), (yy + (m.ypad * i)), n, c, c, c, c, a)
			break
	}

}

if (room != Mainmenu)
{
    with (obj_transfotip)
        event_perform(ev_draw, ev_gui)
}
