	/// @description IA 

// Executa o comando de movimento e colisão

if(distance_to_object(oPlayer) > 160) {
	mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oPlayer);
}


if (oPlayer.x > x){
	image_xscale = 1;
}else if (oPlayer.x < x){
image_xscale = -1;	
}

if( municao++ >= municaoTotal){
		
		for(var i = -1; i != 1; i++){
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.direction = point_direction(x,y,oPlayer.x+90*i,oPlayer. y+90*i);
		bala.image_angle = point_direction(x,y,oPlayer.x+90*i,oPlayer. y+90*i);
		bala.speed = 9.5;
		bala.image_blend = c_purple;
		}
		municao=0;

								var id_som = 		audio_play_sound(sndTiroInimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
}

if(place_meeting(x,y,IDbalas)){
	life=life-25;
	if(oBala12)lanca+=1;
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

	instance_destroy(instance_place(x,y,IDbalas));
							var id_som = 			audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
						var id_som = 			audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
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