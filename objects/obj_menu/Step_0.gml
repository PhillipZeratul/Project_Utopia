/// @description Control Menu

// Item Ease In
menu_x += (menu_x_target - menu_x) / menu_speed;

// Keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_curser++;
		if (menu_curser >= menu_items) menu_curser = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_curser--;
		if (menu_curser < 0) menu_curser = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 300;
		menu_committed = menu_curser;
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: scp_SlideTransistion(TRANS_MODE.NEXT); break;
		case 1:
		{
			if (!file_exists(SAVEFILE))
			{
				scp_SlideTransistion(TRANS_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				scp_SlideTransistion(TRANS_MODE.GOTO, target);
			}
			break;
		}
		case 0: game_end();
	}
}
