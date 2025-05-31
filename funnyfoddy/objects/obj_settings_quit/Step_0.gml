/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	audio_stop_all()

	score = 0

	room_goto(rm_title)

	global.extrasenabled = true
	
}

if (os_is_paused()) {
	
	if (image_index == 4) {
		image_index = 1
	}
	
	if (image_index == 3) {
		image_index = 0	
	}
	
	if (image_index == 2) {
		image_index = 1	
	}
	
}