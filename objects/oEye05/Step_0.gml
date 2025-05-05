/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;
x = oBoss02.x-364;
y = oBoss02.y;

if(place_meeting(x,y,IDbalas)){
	life=life-25;

	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-5;
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	
	instance_destroy();

}
