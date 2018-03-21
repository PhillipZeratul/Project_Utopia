/// @description Draw Menu

draw_set_font(fnt_menu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	var color;
	if (menu_curser == i)
	{
		txt = string_insert("> ", txt, 0);
		color = c_white;
	}
	else
	{
		color = c_gray;
	}
	var xx = menu_x - 10;
	var yy = menu_y - (menu_item_height * i * 1.5);
	draw_set_color(c_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy - offset, txt);
	draw_text(xx, yy + offset, txt);
	draw_set_color(color);
	draw_text(xx, yy, txt);
}
