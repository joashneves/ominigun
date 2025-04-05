/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("E")) && !oBoss01.vuneravel{
	oBoss01.vuneravel = true;
	image_index = 1;
	image_alpha = 0.2;
	oBoss01.x = oPlayer.x-180;
	oBoss01.y = oPlayer.y-180;
	audio_stop_all();
	audio_play_sound(sndMiguel,1,0);

	audio_play_sound(sndMusicBoss02,1,true);

}