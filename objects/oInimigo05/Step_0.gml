	/// @description IA 


if (oPlayer.x > x){
	image_xscale = 3;
}else if (oPlayer.x < x){
image_xscale = -3;	
}

// Atribui o valor gerado às variáveis de movimento horizontal e vertical
vspd = random_valueV * spd;
hspd = random_valueH * spd;

// Executa o comando de movimento e colisão
move_and_collide(vspd, hspd, oBloco);

if( municao++ >= municaoTotal){
	
	for(var i = 0 ; i < 3; i += 1;) {
	var bala = instance_create_depth(x,y,0,oBalaInimigo0);
	bala.image_angle = point_direction(x,y, random_range(oPlayer.x-32, oPlayer.x+32), oPlayer.y);
	bala.direction = point_direction(x,y, oPlayer.x+64*i, oPlayer.y+64*i);
	bala.image_xscale = 2;
	bala.image_yscale = 2;
	bala.speed = 5;
	}
	municao = 0;
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
