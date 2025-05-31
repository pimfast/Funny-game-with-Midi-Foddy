/// @desc

if (pressed_on == true) && (instance_position(mouse_x, mouse_y, self)) && (mouse_check_button_released(mb_left)){
	
	pressed_on = false
	
	switch (global.blood) {
	    case 1:
	        //it's on. make it off
			global.blood = 0
			with(obj_settings_togglefiller){
				if (place_meeting(x,y,obj_settings_bloodtoggle)){
					instance_destroy()
				}
			}
			//sprite_index = _15circlebuttonEmpty
	        break;
	    default:
	        //it's off. make it on
			global.blood = 1
			instance_create_depth(x,y,-22,obj_settings_togglefiller)
			//sprite_index = _16circlebuttonFilled
	        break;
	}
}