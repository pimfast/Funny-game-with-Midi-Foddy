//keyboard inputs
key_jump = keyboard_check_pressed(ord("J"));

//playstation & xbox jump inputs
if (gamepad_button_check_pressed(0,gp_face1)) || (gamepad_button_check_pressed(4,gp_face3)){
	
	key_jump = 1;
	
}

////toggle cheat mode
//if (keyboard_check_pressed(vk_tab)) || (gamepad_button_check_pressed(0,gp_padd)) || (gamepad_button_check_pressed(4,gp_padd))
//{
//	if (global.prefdoublejumpnum = 1){
	
//	global.prefjumpnum = 999;
//	global.prefdoublejumpnum = 999;
	
//	jumpnum = 999;
//	doublejumpnum = 999;
	
//	cheatmode = true
	
//	}
//	else
//	{
	
//	global.prefjumpnum = 1;
//	global.prefdoublejumpnum = 1;
	
//	jumpnum = 1;
//	doublejumpnum = 1;
	
//	cheatmode = false
	
//	}
//}

//restore jumps
if (place_meeting(x,y+sign(minigravitay),obj_inviswall)) || (place_meeting(x,y+sign(minigravitay),obj_movingplatform)) || ((place_meeting(x,y+sign(minigravitay),obj_sneakblock)) && (key_sneak))
{
	jumpnum = 1
	doublejumpnum = 1
}

//double jump
if (key_jump) && (jumpnum <= 0) && (doublejumpnum >= 1)
{
	if (alarm[0] = -1) alarm[0] = room_speed*0.8;
}

//jump
if (key_jump) && (jumpnum >= 1)
{
	if (alarm[1] = -1) alarm[1] = room_speed*0.8;
	
}


//moving and skidding and farding i mean falling
minivsp = (minivsp + minigravitay);

//vertical collision
if (place_meeting(x,y+minivsp,obj_inviswall))
{	
	while (!place_meeting(x,y+sign(minivsp),obj_inviswall))
	{
		y = y + sign(minivsp);
	}
	minivsp = 0;
}
y = y + minivsp;

//mouse_x = 0