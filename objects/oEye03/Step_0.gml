/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;
angle_offset += orbital_speed;
angle_offset = angle_offset mod 360; // mantém o ângulo entre 0~359

x = oBoss02.x + lengthdir_x(radius, angle_offset);
y = oBoss02.y + lengthdir_y(radius, angle_offset);
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

