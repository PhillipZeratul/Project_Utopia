if (hp <= 0)
{
	with(instance_create_layer(x, y, layer, obj_enemy_dead))
	{
		direction = other.hit_from;
		horizontal_speed = lengthdir_x(5, direction);
		vertical_speed = lengthdir_y(5, direction) - 4;
		if (sign(horizontal_speed) != 0) image_xscale = sign(horizontal_speed) * other.size;
		image_yscale = other.size;
	}
	scp_ScreenShake(4, 8);
	instance_destroy();
}
