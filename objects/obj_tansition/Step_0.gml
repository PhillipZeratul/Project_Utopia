/// @description Progress the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent - max((percent / 10), 0.005));
	}
	else
	{
	}
}
