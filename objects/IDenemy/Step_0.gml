/// @description Insert description here
// You can write your code in this editor
if(!em_view()) instance_destroy();
if (oPlayer.x > x){
	image_xscale = 1;
}else if (oPlayer.x < x){
image_xscale = -1;	
}

if(place_meeting(x,y,IDbalas)){
	life=life-25;
	if(oBala12)lanca+=1;
	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

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