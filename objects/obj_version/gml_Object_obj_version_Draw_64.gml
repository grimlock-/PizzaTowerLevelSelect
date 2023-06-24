draw_set_font(global.smallfont)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
var a = 0
with (obj_mainmenu)
    a = extrauialpha
var str = concat(lang_get_value("game_version"), " LVL0.2")
draw_text_color((obj_screensizer.actual_width - 8), (obj_screensizer.actual_height - 8), str, c_white, c_white, c_white, c_white, a)
