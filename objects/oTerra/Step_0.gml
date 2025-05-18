/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,oBalaInimigo)){
		instance_destroy(oBalaInimigo);
		audio_play_sound(sndDano,1,0);
		instance_destroy(self);
}
// leva dano do kamikaze
if(place_meeting(x,y,oInimigo04)){
		instance_destroy(oInimigo04);
		audio_play_sound(sndDano,1,0);
		instance_destroy(self);
}
