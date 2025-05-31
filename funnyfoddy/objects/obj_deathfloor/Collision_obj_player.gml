/// @desc die
if(! has_triggered) {
	has_triggered = true;
	target = other;
	
	
	alarm_set(0, room_speed * 0.1);
	
}

if (room == rm_FNAFreference){
	
	game_end()
	
}
