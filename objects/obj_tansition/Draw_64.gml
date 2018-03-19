/// @description Draw backbars

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, gui_width, percent * gui_height_half, false);
	draw_rectangle(0, gui_height, gui_width, gui_height - percent * gui_height_half, false);
}

draw_set_color(c_white);
draw_text(50, 50, string(percent));