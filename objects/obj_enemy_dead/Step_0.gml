if (!done)
{
	vertical_speed = vertical_speed + grvity;
	
	// Check Horizontal Collision
	if (place_meeting(x + horizontal_speed, y, obj_wall))
	{
		while (!place_meeting(x + sign(horizontal_speed), y, obj_wall))
		{
			x = x + sign(horizontal_speed);
		}
		horizontal_speed = 0;
		show_debug_message("h collision");
		
	}
	x = x + horizontal_speed;
	show_debug_message(string(x));

	// Check Vertical Collision
	if (place_meeting(x, y + vertical_speed, obj_wall))
	{
		if (vertical_speed > 0)
		{
			done = true;
			image_index = 0;
		}
		while (!place_meeting(x, y + sign(vertical_speed), obj_wall))
		{
			y = y + sign(vertical_speed);
		}
		vertical_speed = 0;
	}
	y = y + vertical_speed;
}