/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;
x = oBoss02.x-264;
y = oBoss02.y-216;

#region // Ataque

if(carregando++ >= carregandoMax){
sprite_index = sEyeAtack00;
if (fim_animacao()) {
var _tipoAtaque = choose(1,2);

switch(_tipoAtaque){
	case 1:
	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;
	break;
	
	case 2:
	var _bala = instance_create_depth(oPlayer.x, oPlayer.y-120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x+120, oPlayer.y,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x, oPlayer.y+120,0, oThornAtack00);
	_bala.speed = 0;

	var _bala = instance_create_depth(oPlayer.x-120, oPlayer.y,0, oThornAtack00);
	_bala.speed = 0;
	break;
	
	default:
	break;

}
carregando = random_range(0,1000);
sprite_index = sEye00;
	
}
}

#endregion

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

