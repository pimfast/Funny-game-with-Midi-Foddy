/// @desc save

//save your spot for continue button
if (room == rm_gettingoverit) 
{
	global.saveplaceX = x
	global.saveplaceY = y
	global.savejumpnum = jumpnum
	global.savedoublejumpnum = doublejumpnum
	global.savehsp = global.hsp
	global.savevsp = global.vsp
	global.savedir = dir
	
	//replace the save.sav file
	if (file_exists("data.sav")) {file_delete("data.sav")}
	
	//write to file
	var file;
	file = file_text_open_write("data.sav");
	file_text_write_real(file,global.saveplaceX);
	file_text_writeln(file)
	file_text_write_real(file,global.saveplaceY);
	file_text_writeln(file)
	file_text_write_real(file,global.savejumpnum);
	file_text_writeln(file)
	file_text_write_real(file,global.savedoublejumpnum);
	file_text_writeln(file)
	file_text_write_real(file,global.savehsp);
	file_text_writeln(file)
	file_text_write_real(file,global.savevsp);
	file_text_writeln(file)
	file_text_write_real(file,global.savedir);
	file_text_writeln(file)
	file_text_close(file)
}