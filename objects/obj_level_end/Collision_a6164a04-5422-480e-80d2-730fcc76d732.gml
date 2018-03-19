/// @description Move to next room

with(obj_player)
{
	if (has_control)
	{
		has_control = false;
		scp_SlideTransistion(TRANS_MODE.GOTO, other.target);
	}
}
