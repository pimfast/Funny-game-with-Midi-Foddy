/// @desc

if (audio_group_is_loaded(agp_music))
{
	////Overwrite applicable data & go to title
	if (file_exists("data.sav"))
	{
		if (global.swagtitle == true) {
			room_goto(rm_title_termination)
		} else {
			room_goto(rm_title)
		}
	}
}

//load settings.sex
if (file_exists("settings.sex")){
	
	//load data from settings.sex
	var file = file_text_open_read(working_directory + "settings.sex");
	global.savelanguage = file_text_read_real(file)
		
	global.savemusicvolume = file_text_read_real(file)
	global.savevoiceovervolume = file_text_read_real(file)
	global.saveeffectsvolume = file_text_read_real(file)
		
	global.savegamerating = file_text_read_real(file)
		
	global.savefullscreen = file_text_read_real(file)
	global.savesubtitles = file_text_read_real(file)
	global.saveblood = file_text_read_real(file)
	file_text_close(file)
	
	
	//set settings to saved settings
	global.language = global.savelanguage
		
	global.musicvolume = global.savemusicvolume
	global.voiceovervolume = global.savevoiceovervolume
	global.effectsvolume = global.saveeffectsvolume
		
	global.gamerating = global.savegamerating
		
	global.fullscreen = global.savefullscreen
	global.subtitles = global.savesubtitles
	global.blood = global.saveblood
	
	//do what you need to do
	
	audio_group_set_gain(agp_music, global.musicvolume, 1)
	audio_group_set_gain(agp_voiceover, global.voiceovervolume, 1)
	audio_group_set_gain(agp_sfx, global.effectsvolume, 1)
	
	if (global.gamerating == 0) {}
	
	if (global.fullscreen == 1) {window_set_fullscreen(true)}
	if (global.fullscreen == 0) {window_set_fullscreen(false)}
	
	if (global.subtitles == 1) {}
	if (global.subtitles == 0) {}
	
	if (global.blood == 1) {}
	if (global.blood == 0) {}
}