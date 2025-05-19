	/// @description IA 

if (oPlayer.x > x){
	image_xscale = 1;
}else if (oPlayer.x < x){
image_xscale = -1;	
}

// Atribui o valor gerado às variáveis de movimento horizontal e vertical
vspd = random_valueV * spd;
hspd = random_valueH * spd;

// Executa o comando de movimento e colisão
move_and_collide(vspd, hspd, oBloco);

if( municao++ >= municaoTotal){
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		bala.image_blend = c_red;
	
		municao=0;

		var id_som = 		audio_play_sound(sndTiroInimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
}

//	if(place_meeting(x,y,oBala12))lanca++;
if(place_meeting(x,y,IDbalas)){
	life=life-25;
	if(oBala12)lanca += 1;
	instance_destroy(instance_place(x,y,IDbalas))

			var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
			var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
}

if (life <= 0) {
	
	instance_destroy();

}

if(lanca >= 1 && instance_exists(oArma12)){
		var _lanca = instance_create_depth(x,y,0,oBala12);
		_lanca.direction = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.image_angle = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.speed = 16;
		
		lanca-=1;
}