/// @desc

if (file_exists("data.sav")) {file_delete("data.sav")}

var file;
file = file_text_open_write("data.sav");
file_text_write_real(file,591); //player x coordinate
file_text_writeln(file)
file_text_write_real(file,31726); //player y coordinate
file_text_writeln(file)
file_text_write_real(file,1); //player jumps remaining
file_text_writeln(file)
file_text_write_real(file,1); //player double jumps remaining
file_text_writeln(file)
file_text_write_real(file,0); //red squares collected
file_text_close(file)

room_goto(rm_gettingoverit)