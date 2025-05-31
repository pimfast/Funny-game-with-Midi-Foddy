/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	global.language = 1

	if (image_index == 2){
	
		image_index = 0
	
	}

	with (obj_USAflag){
	
		if (image_index == 0){
	
			image_index = 2
	
		}
	}
}