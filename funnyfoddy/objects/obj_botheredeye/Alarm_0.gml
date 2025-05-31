/// @desc
if (point_distance(x, y, obj_player.x, obj_player.y) < 350) {
	botherproj = instance_create_depth(x, y, depth - 1, obj_botherproj);
	with (botherproj) {
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		image_angle = direction;
		speed = 5;
	}
}
alarm[0]=60