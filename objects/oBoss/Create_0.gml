/// @description Insert description here
// You can write your code in this editor

life = 1400;
lifeMax = life;

vuneravel = false;

municao = 0;
municaoMax = 90;

path_start(PathBoss,1.6,path_action_restart, 0)


audio_stop_all();
audio_play_sound(ambient_horror_bleep,1,0);
audio_play_sound(sndMusicTerror,1,true);

timeInvocar = 120;
if (!alarm[0]) alarm[0] = timeInvocar;

lanca = 0;