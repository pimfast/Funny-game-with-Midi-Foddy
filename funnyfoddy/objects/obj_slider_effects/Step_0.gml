/// @desc check for no longer selected

if (mouse_check_button_pressed(mb_left)){
	
	var button_x = x + sprite_width * value
	var button_y = y
	var button_radius = sprite_get_width(_23SliderCircle)/2
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius){
	//you need to make some sort of a change involving the line above in order to have it
	//so that you can click anywhere on the line and have the circle go there
		selected = true
		
	}
}

if (!mouse_check_button(mb_left)){
	
	selected = false
	
}

if (selected = true){
	
	value = clamp((mouse_x - x)/sprite_width, 0, max_value)
	event_user(0)
	
}