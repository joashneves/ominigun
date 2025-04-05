/// @description Insert description here
// You can write your code in this editor
if(vuneravel){
	image_alpha = 0.8; 
	speed = 0.6;
	if (instance_number(oEnemyOlhoBoss02) >= 6){ image_alpha = 0; 	speed = 0.2;} 
	
	if (life <= 0) {
		instance_destroy();

	}
	
	direction = point_direction(x,y, oPlayer.x, oPlayer.y);
	image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
	
	
	if(!alarm[0]) alarm[0] = random_range(90,210);
	 sprite_index = sBoss01Atack;

}else if (!vuneravel){ // antes de ativar de ativar

	if(place_meeting(x, y, oPlayer)){
		oPlayer.vida--;
	}
	
	if(place_meeting(x,y,IDbalas)&& spd > 0){
	spd-=0.3;
	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
	}
	if(spd < 0) spd = 0;
	direction = point_direction(x,y, oPlayer.x, oPlayer.y);
	image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
	speed = spd;
	
	image_alpha = 0.2;	
}

	if(place_meeting(x,y,oBalaDanoBoss)){
		life=life-25;
		instance_destroy(instance_place(x,y,oBalaDanoBoss));
		audio_play_sound(sndDanoinimigo,2,0);
	}
	