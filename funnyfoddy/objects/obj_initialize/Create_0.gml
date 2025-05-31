////Start

//set font
draw_set_font(fnt_text)

//set color of window when maximized
window_set_color(c_white)

//
window_set_fullscreen(false)

//assumes english
global.language = 0

//assumes you are using keyboard
global.controller = 0

//default audio settings are full aka 1... this is just how it goes
global.musicvolume = 1
global.voiceovervolume = 1
global.effectsvolume = 1

//game rating (starts at 0 aka mediocre and goes between 5 and -5)
global.gamerating = 0

//settings toggle circle buttons
global.fullscreen = 0
global.subtitles = 1
global.blood = 1

//for camera shake to work
global.cameraShake = 0;

//for extra button to work
global.extrasenabled = true

//for the game to work
global.cameraX = 0;
global.cameraY = 0;

//you must see the title scroll every time you boot up the game
global.titlescrollseen = false

//the camera will be moving on the title screen after this
global.shouldtitlescroll = true

//storing amount of jumps & double jumps
global.savejumpnum = 1
global.savedoublejumpnum = 1

//starts you with no coins
score = 0;

//checkpoints seem to work fine without this but
//i'm keeping it here anyway cuz the vid told me to
global.checkpoint_x = -9999; // x
global.checkpoint_y = -9999; // y

//load audio groups
audio_group_load(agp_music);
audio_group_load(agp_voiceover);
audio_group_load(agp_sfx)
audio_group_load(agp_farts)

//no swagtitle for newbies
global.swagtitle = false