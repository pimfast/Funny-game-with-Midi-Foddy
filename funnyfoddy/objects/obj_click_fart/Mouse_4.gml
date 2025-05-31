/// @desc

if (!audio_is_playing(sfx_fartbeat)) {
	
	randomize();
	
	christschosenfart = irandom_range(0,6);
	
	fartcount += 1;
	
	if (fartcount == 100) {
			
			audio_play_sound(sfx_fartbeat,1,false)
			
			fartcount = 0
			
			return;
		}
	
	if (christschosenfart = 0) {audio_play_sound(sfx_fart,1,false)};
	if (christschosenfart = 1) {audio_play_sound(sfx_09037,1,false)};
	if (christschosenfart = 2) {audio_play_sound(sfx_dry_fart,1,false)};
	if (christschosenfart = 3) {audio_play_sound(sfx_faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaart,1,false)};
	if (christschosenfart = 4) {audio_play_sound(sfx_fart_1,1,false)};
	if (christschosenfart = 5) {audio_play_sound(sfx_fart_meme_sound,1,false)};
	if (christschosenfart = 6) {audio_play_sound(sfx_fart_with_reverb,1,false)};
	
}