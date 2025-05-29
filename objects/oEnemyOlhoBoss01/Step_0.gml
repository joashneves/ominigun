// Inherit the parent event

if(!instance_exists(oBoss01)) instance_destroy();
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

var _spd = spd;
var _range = 180
var _possicao_x = 0;
	var _possicao_y = 0;
if(distance_to_object(oPlayer) > _range){
// Atribui o valor gerado às variáveis de movimento horizontal e vertical
if (x < oPlayer.x) {
_possicao_x = 1;
}if (x > oPlayer.x) {
_possicao_x = -1;
}if (y > oPlayer.y) {
_possicao_y = -1;
}if (y < oPlayer.y) {
_possicao_y = 1;
}
if(place_meeting(x,y,IDenemy)){
_possicao_x = random_range(-3,3);
_possicao_y = random_range(-3,3);
}
vspd = _possicao_x * _spd;
hspd = _possicao_y * _spd;
move_and_collide(vspd, hspd, IDbalas);
}else {
	_spd = 0;
	_possicao_x = 0;
	_possicao_y = 0;
}

// Executa o comando de movimento e colisão
if( municao++ >= municaoTotal){
	script_execute(comportamento)
}
