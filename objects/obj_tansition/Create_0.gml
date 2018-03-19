/// @description Size variables and mode setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_height_half = gui_height / 2;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;