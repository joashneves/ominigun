	/// @description IA 

// Executa o comando de movimento e colisão
/*
if(distance_to_object(oPlayer) > 160) {
mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oPlayer);
}
*/
if( municao++ >= municaoTotal){
		
		
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.direction = point_direction(x,y,oPlayer.x,oPlayer. y);
		bala.speed = 1.5;
		bala.image_blend = c_purple;

		municao=0;
		audio_play_sound(sndTiroInimigo,2,0);
}

if(place_meeting(x,y,IDbalas)){
	life=life-25;
	if(oBala12)lanca+=1;
	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
	
}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	
	instance_destroy();

}

if(lanca >= 1 && instance_exists(oArma12)){
		var _lanca = instance_create_depth(x,y,0,oBala12);
		_lanca.direction = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.image_angle = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.speed = 16;
		
		lanca--;
}