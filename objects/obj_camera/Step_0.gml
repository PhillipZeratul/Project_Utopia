/// @description Update camera
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Keep camera inside the room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

// Screen shake
if (shake_remain > 0)
{
	x += random_range(-shake_magnitude, shake_magnitude);
	y += random_range(-shake_magnitude, shake_magnitude);
	shake_remain = max(0, shake_remain - ((1/shake_length)*shake_magnitude));
}

camera_set_view_pos(camera, x - view_w_half, y - view_h_half);