/// @desc go blue and save spot

if(is_enabled) {
	is_enabled = false;
	
	global.checkpoint_x = x;
	global.checkpoint_y = y;
	
	sprite_index = spr_checkpoint2;
}