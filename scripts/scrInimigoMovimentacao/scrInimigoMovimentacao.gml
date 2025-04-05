// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrInimigoMovimentacao(_spd, _range){
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
move_and_collide(vspd, hspd, oBloco);
}else {
	_spd = 0;
	_possicao_x = 0;
	_possicao_y = 0;
}

// Executa o comando de movimento e colisão


}