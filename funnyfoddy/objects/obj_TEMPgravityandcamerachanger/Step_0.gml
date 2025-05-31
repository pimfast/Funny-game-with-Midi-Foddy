/// @desc

if (place_meeting(x,y,obj_player)) {

	if (camera_get_view_angle(view_camera[0]) != 180) {
	
		camera_set_view_angle(view_camera[0], camera_get_view_angle(view_camera[0]) + 1)
	
	}
	
	if (global.gravitay != -0.34) {
		
		global.gravitay -= 0.01
		
	}
}