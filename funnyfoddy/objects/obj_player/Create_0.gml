/// @desc the fuckin player obviously

//room_speed = 1

//player stats
global.gravitay = 0.34; //lower is lighter higher is heavier //default is 0.34
prefwalksp = 3.0; //how fast you go //default is 3.0
jumpsp = -9.0; //how high your regular jump goes //default is -9.0
doublejumpsp = -6.0; //how high your double jump goes //default is 6.0
global.prefjumpnum = 1; //how many regular jumps you get //default is 1
global.prefdoublejumpnum = 1; //how many double jumps you get //default is 1
maxskid = 1; //how far you slide //default is 1

//necessary code (do not / cannot change)
global.hsp = 0;
global.vsp = 0;
jumpnum = global.prefjumpnum
doublejumpnum = global.prefdoublejumpnum
cheatmode = false
skidh = 0;
prevhsp = 0;
global.bonushsp = 0;
dir = 1;

//activate the saved stats
if(room = rm_gettingoverit)
{
	//if (file_exists("data.sav")) {file_delete("data.sav")}
	//wtf is the shit above??? old code?
	//Yes! it was from copy and pasting the code for WRITING save data
	//it had to be commented out as it made the code below redundant
	if (file_exists("data.sav"))
	{
		var file = file_text_open_read(working_directory + "data.sav");
		global.saveplaceX = file_text_read_real(file)
		global.saveplaceY = file_text_read_real(file)
		global.savejumpnum = file_text_read_real(file)
		global.savedoublejumpnum = file_text_read_real(file)
		global.savehsp = file_text_read_real(file)
		global.savevsp = file_text_read_real(file)
		global.savedir = file_text_read_real(file)
		file_text_close(file)
		
		x = global.saveplaceX
		y = global.saveplaceY-1
		jumpnum = global.savejumpnum
		doublejumpnum = global.savedoublejumpnum
		global.hsp = global.savehsp
		global.vsp = global.savevsp
		dir = global.savedir
	}
}


//39 coins in funny game 1 and 32 in funny game 2

//code for opening urls:
//url_open("https://store.steampowered.com/app/1319550/Power_of_Ten/")

//code for camera shake:
//global.cameraShake = 100;

//and yes, the music in funny game does loop