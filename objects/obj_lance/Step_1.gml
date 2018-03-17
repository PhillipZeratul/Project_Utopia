x = obj_player.x;
y = obj_player.y + 3;

if (obj_player.controller == false)
{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
else
{
	var controller_rh = gamepad_axis_value(0, gp_axisrh);
	var controller_rv = gamepad_axis_value(0, gp_axisrv);
	if (abs(controller_rh) > 0.2) || (abs(controller_rh) > 0.2)
	{
		image_angle = point_direction(0, 0, controller_rh, controller_rv);
	}
}

fire_delay -= 1;
recoil = max(0, recoil - 1);

if ((mouse_check_button(mb_left)) || gamepad_button_check(0, gp_shoulderrb)) && (fire_delay < 0)
{
	recoil = 10;
	fire_delay = 8;
	with(instance_create_layer(x, y, "Lance", obj_lance_throw))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = obj_player.x + lengthdir_x(recoil, image_angle);
y = obj_player.y + 3 + lengthdir_y(recoil, image_angle);

if (image_angle > 90) && (image_angle < 270) image_yscale = -1;
else image_yscale = 1;