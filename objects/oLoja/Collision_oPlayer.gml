/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("E")) && oPlayer.moeda >= 10){
	oPlayer.moeda-=10;
	instance_create_depth(x,y,0,venda);
	instance_destroy();
	audio_play_sound(sndComprarItem,5,false)
}





