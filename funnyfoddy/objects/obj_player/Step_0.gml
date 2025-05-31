/// @desc Core Player Logic	
if (debug_mode && room_speed = 60 && keyboard_check(ord("O"))) {room_speed = 1}
if (debug_mode && room_speed = 1 && keyboard_check(ord("I"))) {room_speed = 60}
//keyboard inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("J"));
key_sneak = keyboard_check(ord("S"));

//xbox joystick inputs
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2){
	
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	
}

//playstation joystick inputs
if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2){
	
	key_left = abs(min(gamepad_axis_value(4,gp_axislh),0));
	key_right = max(gamepad_axis_value(4,gp_axislh),0);
	
}

//playstation & xbox jump inputs
if (gamepad_button_check_pressed(0,gp_face1)) || (gamepad_button_check_pressed(4,gp_face3)){
	
	key_jump = 1;
	
}


//change key_left into a negative number so you can go left
if (key_left > 0) {key_left *= -1}

//directions!!! are we going to be able to do bumpers?!?! yay!!!
///11/03/2022 wait does this actually do anything?
//11/04/2022 ok i fixed it now the dir is actually doing something but it still doesnt do antyhing
if (key_left < 0) {dir = -1} 
if (key_right > 0) {dir = 1}

//for when youre upside down the controls still go good
if (global.gravitay < 0) {
	
	if (key_left != 0) {key_left = 1}
	
	if (key_right != 0) {key_right = -1}
	
}

//toggle cheat mode
if (keyboard_check_pressed(vk_tab)) || (gamepad_button_check_pressed(0,gp_padd)) || (gamepad_button_check_pressed(4,gp_padd))
{
	if(global.prefjumpnum = 1) && (global.prefdoublejumpnum = 1){
	
	global.prefjumpnum = 999;
	global.prefdoublejumpnum = 999;
	
	jumpnum = 999;
	doublejumpnum = 999;
	
	cheatmode = true
	
	}
	else
	{
	
	global.prefjumpnum = 1;
	global.prefdoublejumpnum = 1;
	
	jumpnum = 1;
	doublejumpnum = 1;
	
	cheatmode = false
	
	}
}



//sneak
if (key_sneak) && (jumpnum >= global.prefjumpnum) 
{
		walksp = prefwalksp/3
}

else
{
		walksp = prefwalksp
}


//restore jumps
if (place_meeting(x,y+sign(global.gravitay),obj_inviswall)) || (place_meeting(x,y+sign(global.gravitay),obj_movingplatform)) || ((place_meeting(x,y+sign(global.gravitay),obj_sneakblock)) && (key_sneak)) || (place_meeting(x,y+sign(global.gravitay),obj_jumppad))
{
	jumpnum = global.prefjumpnum
	doublejumpnum = global.prefdoublejumpnum
}

//double jump
if (key_jump) && (jumpnum <= 0) && (doublejumpnum >= 1)
{
	if (sign(global.gravitay) != 0) {global.vsp = doublejumpsp*sign(global.gravitay)}
	if (sign(global.gravitay) = 0) {global.vsp += doublejumpsp}
	doublejumpnum -= 1
}

//jump
if (key_jump) && (jumpnum >= 1)
{
	global.vsp = jumpsp*sign(global.gravitay)
	if (sign(global.gravitay) = 0) {global.vsp = jumpsp}
	jumpnum -= 1
}


//moving and skidding and farding i mean falling
var move = key_left + key_right;
prevhsp = global.hsp;

global.hsp = (move * walksp + global.bonushsp);
global.vsp = (global.vsp + global.gravitay);

if (global.hsp = 0) && (prevhsp > 0) {global.hsp += skidh;}
if (global.hsp = 0) && (prevhsp < 0) {global.hsp -= skidh;}
if (move != 0) {skidh += 1;}  //if player object is moving, increase skid
if (skidh > maxskid) {skidh = maxskid;} //the skid can never be more than the max
skidh -= 0.1;  // decrease skid amount - only matters if player has stopped moving
if skidh < 0 skidh = 0; //set the minimum back to 0

if (global.bonushsp > 0) {
	global.bonushsp -= 0.1;
}
if (global.bonushsp < 0) {
	global.bonushsp += 0.1;
}

//jumppad
if (place_meeting(x,y+global.vsp,obj_jumppad))
{
	global.vsp = -14
}

//jumppad mini
if (place_meeting(x,y+global.vsp,obj_jumppadmini))
{
	global.vsp = -14
}

//bumper i feel like this should work i just need to
//figure out the alarm thing a little more
if (place_meeting(x+global.hsp,y,obj_bumper))
{	
	alarm[0] = 1
	global.hsp *= dir
}

//horizontal accelerator
if (place_meeting(x+global.hsp,y,obj_accelerator))
{	
	while (!place_meeting(x+sign(global.vsp),y,obj_accelerator))
	{
		x = x + sign(global.hsp);
	}
	global.hsp -= sign(global.hsp) *-2;
}

//vertical accelerator
if (place_meeting(x,y+global.vsp,obj_accelerator))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_accelerator))
	{
		y = y + sign(global.vsp);
	}
	global.vsp -= sign(global.vsp) *-2;
}

//wind
if (place_meeting(x,y,obj_wind))
{
	global.hsp -= 2
}

//quicksand
if (place_meeting(x,y+1,obj_quicksand)) || (place_meeting(x,y,obj_quicksand)) 
{
	obj_player.y += sign(global.vsp)
}

//hypertube left
if (place_meeting(x+global.hsp,y,obj_hypertube_left))
{	
	while (!place_meeting(x+sign(global.hsp),y,obj_hypertube_left))
	{
		x += sign(global.hsp);
	}
	global.vsp = 0
	global.hsp -= 10
}

//hypertube right
if (place_meeting(x+global.hsp,y,obj_hypertube_right))
{	
	while (!place_meeting(x+sign(global.hsp),y,obj_hypertube_right))
	{
		x += sign(global.hsp);
	}
	global.vsp = 0
	global.hsp += 10
}

//hypertube up
if (place_meeting(x,y+global.vsp,obj_hypertube_up))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_hypertube_up))
	{
		y += sign(global.vsp);
	}
	global.vsp -= 10
	global.hsp = 0
}

//hypertube down
if (place_meeting(x,y+global.vsp,obj_hypertube_down))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_hypertube_down))
	{
		y += sign(global.vsp);
	}
	global.vsp += 10
	global.hsp = 0
}

//slideyright this isnt working right but its kinda cool so maybe in 100 years you can use it
if (place_meeting(x,y+global.vsp,obj_slideyright))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_slideyright))
	{
		y += sign(global.vsp);
	}
	global.vsp -= 1
	global.hsp += 1
}

//vertical collision i mean moving platform
if (place_meeting(x,y+global.vsp,obj_movingplatform))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_movingplatform))
	{
		y = y + sign(global.vsp);
	}
	global.vsp = 0;
	if (obj_movingplatform.platformtarget > obj_movingplatform.x) {global.hsp += obj_movingplatform.platformspd}
	if (obj_movingplatform.platformtarget < obj_movingplatform.x) {global.hsp -= obj_movingplatform.platformspd}
}

//dominos..? no...

//sneakblock
if (place_meeting(x,y+1*sign(global.gravitay),obj_sneakblock)) && (key_sneak)
{
	if (key_jump) {
		
	} else {
		global.vsp = 0
	}
}

//horizontal collision
if (place_meeting(x+global.hsp,y,obj_inviswall))
{
	while (!place_meeting(x+sign(global.hsp),y,obj_inviswall))
	{
		x = x + sign(global.hsp);
	}
	global.hsp = 0;
}
x = x + global.hsp;

//vertical collision
if (place_meeting(x,y+global.vsp,obj_inviswall))
{	
	while (!place_meeting(x,y+sign(global.vsp),obj_inviswall))
	{
		y = y + sign(global.vsp);
	}
	global.vsp = 0;
}
y = y + global.vsp;

//change sprite depending on score (remove soon)
if (room == rm_gettingoverit) || (room == rm_classic) || (room == rm_controls)
{
	if(score = 0){sprite_index = spr_player_0}
	if(score = 1){sprite_index = spr_player_1}
	if(score = 2){sprite_index = spr_player_2}
	if(score = 3){sprite_index = spr_player_3}
	if(score = 4){sprite_index = spr_player_4}
	if(score = 5){sprite_index = spr_player_5}
	if(score = 6){sprite_index = spr_player_6}
	if(score = 7){sprite_index = spr_player_7}
	if(score = 8){sprite_index = spr_player_8}
	if(score = 9){sprite_index = spr_player_9}
	if(score = 10){sprite_index = spr_player_10}
	if(score = 11){sprite_index = spr_player_11}
	if(score = 12){sprite_index = spr_player_12}
	if(score = 13){sprite_index = spr_player_13}
	if(score = 14){sprite_index = spr_player_14}
	if(score = 15){sprite_index = spr_player_15}
	if(score = 16){sprite_index = spr_player_16}
	if(score = 17){sprite_index = spr_player_17}
	if(score = 18){sprite_index = spr_player_18}
	if(score = 19){sprite_index = spr_player_19}
	if(score = 20){sprite_index = spr_player_20}
	if(score = 21){sprite_index = spr_player_21}
	if(score = 22){sprite_index = spr_player_22}
	if(score = 23){sprite_index = spr_player_23}
	if(score = 24){sprite_index = spr_player_24}
	if(score = 25){sprite_index = spr_player_25}
	if(score = 26){sprite_index = spr_player_26}
	if(score = 27){sprite_index = spr_player_27}
	if(score = 28){sprite_index = spr_player_28}
	if(score = 29){sprite_index = spr_player_29}
	if(score = 30){sprite_index = spr_player_30}
	if(score = 31){sprite_index = spr_player_31}
	if(score = 32){sprite_index = spr_player_32}
	if(score = 33){sprite_index = spr_player_33}
	if(score = 34){sprite_index = spr_player_34}
	if(score = 35){sprite_index = spr_player_35}
	if(score = 36){sprite_index = spr_player_36}
	if(score = 37){sprite_index = spr_player_37}
	if(score = 38){sprite_index = spr_player_38}
	if(score = 39){sprite_index = spr_player_39}
	if(score = 40){sprite_index = spr_player_40}
	if(score = 41){sprite_index = spr_player_41}
	if(score = 42){sprite_index = spr_player_42}
	if(score = 43){sprite_index = spr_player_43}
	if(score = 44){sprite_index = spr_player_44}
	if(score = 45){sprite_index = spr_player_45}
	if(score = 46){sprite_index = spr_player_46}
	if(score = 47){sprite_index = spr_player_47}
	if(score = 48){sprite_index = spr_player_48}
	if(score = 49){sprite_index = spr_player_49}
	if(score = 50){sprite_index = spr_player_50}
	if(score >= 51){sprite_index = spr_player}
}

////jump code REMOVING TODAY SEPTEMBER 28 2021 12:44 AM
//if (key_jump)
//  if (place_meeting(x,y+1,obj_ground))
//  {
//	vsp = jumpsp
//	doublejump = true
//  }
//  else if doublejump
//  {
//	vsp = doublejumpsp
//	doublejump = false  
//  }
// 
////open mouth code //edit: FUCK THIS IDEA!!! IT SUCKS!!!
//
//if keyboard_check_pressed(vk_left) {
//    sprite_index = spr_guy_ff;
//}
//if keyboard_check_pressed(vk_down) = true {
//    sprite_index = spr_guy_uh;
//}
//if (keyboard_check(ord("vk_right"))) {
//    sprite_index = spr_guy_ck;
//}
//else {
//    sprite_index = spr_guy;
//}