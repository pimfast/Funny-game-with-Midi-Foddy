/// @desc

if (global.paused == true){
	
	global.savelanguage = global.language
	global.savemusicvolume = global.musicvolume
	global.savevoiceovervolume = global.voiceovervolume
	global.saveeffectsvolume = global.effectsvolume
	global.savegamerating = global.gamerating
	global.savefullscreen = global.fullscreen
	global.savesubtitles = global.subtitles
	global.saveblood = global.blood
	
	if (file_exists("settings.sex")) {file_delete("settings.sex")}
	
	//save settings choices to file
	//NOTE this is only going to save if you hit escape!
	//if you press the X button on the top right or
	//even just quiting to the menu it wont save what you did!
	//change this! or perish!!!
	//(working on it right now actually)
	//uhhh i dont remember did i finish fixing this? test it
	
	var file;
	file = file_text_open_write("settings.sex");
	file_text_write_real(file,global.savelanguage);
	file_text_writeln(file)
	file_text_write_real(file,global.savemusicvolume);
	file_text_writeln(file)
	file_text_write_real(file,global.savevoiceovervolume);
	file_text_writeln(file)
	file_text_write_real(file,global.saveeffectsvolume);
	file_text_writeln(file)
	file_text_write_real(file,global.savegamerating);
	file_text_writeln(file)
	file_text_write_real(file,global.savefullscreen);
	file_text_writeln(file)
	file_text_write_real(file,global.savesubtitles);
	file_text_writeln(file)
	file_text_write_real(file,global.saveblood);
	file_text_writeln(file)
	file_text_close(file)

}