/// @desc GAME

//buh
global.paused = false;
global.paused_surf = -1;

//unload farts
if (room != rm_title) {audio_group_unload(agp_farts)}

//im trying something out give me a sex I-I MEAN SEC!!!
alarm[0] = room_speed * 1.5