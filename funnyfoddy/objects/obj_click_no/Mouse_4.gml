/// @desc 

with (obj_click_haveyouplayed) {
	
	if (sprite_index = spr_haveyouplayed2) || (sprite_index = spr_haveyouplayed2B) || (sprite_index = spr_haveyouplayed2C) {
		
		room_goto(rm_title)
		
	}
	
	if (sprite_index = spr_haveyouplayedA) || (sprite_index = spr_haveyouplayedB) || (sprite_index = spr_haveyouplayedC) {
		sprite_index = spr_haveyouplayed2C
	}
	
}