	/// @description IA 

// Executa o comando de movimento e colisão
/*
if(distance_to_object(oPlayer) > 160) {
mp_potential_step_object(oPlayer.x,oPlayer.y,spd,oPlayer);
}
*/
// Atribui o valor gerado às variáveis de movimento horizontal e vertical
vspd = random_valueV * spd;
hspd = random_valueH * spd;

// Executa o comando de movimento e colisão
move_and_collide(vspd, hspd, oBloco);

if (oPlayer.x > x){
	image_xscale = 1;
}else if (oPlayer.x < x){
image_xscale = -1;	
}

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
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
	audio_play_sound(sndDanoinimigo,2,0);
	
}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
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