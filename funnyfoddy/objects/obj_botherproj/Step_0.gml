/// @desc

if (place_meeting(x,y,obj_inviswall)){
	instance_destroy()
}

if (place_meeting(x,y,obj_player)){
	obj_player.image_alpha = .50
	instance_destroy()
}