/// @description Insert description here
// You can write your code in this editor

if (oPlayer.x > x){
	image_xscale = 1/2;
}else if (oPlayer.x < x){
image_xscale = -1/2;	
}

if(place_meeting(x,y,IDbalas)){
	life=life-5;
	if(oBala12)lanca+=1;
	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

}
if(place_meeting(x,y,IDarmas)){
	life=life-5;
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	instance_destroy();
}

scr_evitar_bala(spd, vspd, hspd); // onde 2 é a velocidade base

if( municao++ >= municaoTotal){
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		bala.image_blend = c_red;
		
		repeat(2){
		var px = oPlayer.x;
	    var py = oPlayer.y;

	    // Escolhe uma posição aleatória fora da tela
	    var angulo = irandom_range(0, 359);
	    var distancia = 1000; // distância além da tela
	    var spawn_x = px + lengthdir_x(distancia, angulo);
	    var spawn_y = py + lengthdir_y(distancia, angulo);

	    var laser = instance_create_depth(spawn_x, spawn_y, 0, oBalaInimigoSniper00);
	    laser.direction = point_direction(spawn_x, spawn_y, px, py);
	    laser.image_angle = laser.direction;
	    laser.speed = 7;
		}


		municao=0;
	audio_play_sound(sndTiroInimigo,2,0);
}