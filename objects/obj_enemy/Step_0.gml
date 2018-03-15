var on_floor = place_meeting(x, y + 1, obj_wall);

vertical_speed = vertical_speed + grvity;

// Check Horizontal Collision
if (place_meeting(x + horizontal_speed, y, obj_wall))
{
	while (!place_meeting(x + sign(horizontal_speed), y, obj_wall))
	{
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = -horizontal_speed;
}
x = x + horizontal_speed;

// Check Vertical Collision
if (place_meeting(x, y + vertical_speed, obj_wall))
{
	while (!place_meeting(x, y + sign(vertical_speed), obj_wall))
	{
		y = y + sign(vertical_speed);
	}
	vertical_speed = 0;
}
y = y + vertical_speed;

// Animation
if (!on_floor)
{
	sprite_index = spr_enemy_air;
	image_speed = 0;
	if (sign(vertical_speed) > 0) image_index = 0;
	else image_index = 1;
}
else
{
	image_speed = 1;
	if (horizontal_speed == 0)
	{
		sprite_index = spr_enemy;
	}
	else
	{
		sprite_index = spr_enemy_running;
	}
}

if (horizontal_speed != 0) image_xscale = sign(horizontal_speed);
