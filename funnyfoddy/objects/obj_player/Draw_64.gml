//cheat mode
if (cheatmode == true)
{
	draw_text_transformed_color(1,1,obj_player.x,2,2,0,c_black,c_black,c_red,c_red,0.3);
	draw_text_transformed_color(1,30,obj_player.y,2,2,0,c_black,c_black,c_red,c_red,0.3);
	draw_text_transformed_color(1,59,room_speed,2,2,0,c_black,c_black,c_red,c_red,0.3);
}

if (debug_mode)
{
	draw_text_transformed_color(1,420,global.vsp,2,2,0,c_white,c_white,c_aqua,c_aqua,0.3);
	draw_text_transformed_color(1,450,global.gravitay,2,2,0,c_white,c_white,c_aqua,c_aqua,0.3);
	draw_text_transformed_color(1,480,camera_get_view_angle(view_camera[0]),2,2,0,c_white,c_white,c_aqua,c_aqua,0.3);
}