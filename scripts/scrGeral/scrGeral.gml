// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fim_animacao(){
	var _sprite = sprite_index;
    var _image = image_index;
    if(argument_count > 0)   _sprite = argument[0];
    if(argument_count > 1)  _image = argument[1];
    var _type = sprite_get_speed_type(sprite_index);
    var _spd = sprite_get_speed(sprite_index)*image_speed;
    if(_type == spritespeed_framespersecond)
        _spd = _spd/room_speed;
    if(argument_count > 2) _spd = argument[2];
    return _image + _spd >= sprite_get_number(_sprite);

}
function FadeToRoom(_room , _dur, _color){
	show_debug_message("Debug : OFade criado")
var _inst = instance_create_depth(0,0,0,oFade)
with(_inst){
	targetRoom = _room
	duration = _dur
	color = _color
}
}


function mouseCordenada(_Player, _mouse){
	var _Binario = 0;
	
	if (_Player > _mouse) {
		_Binario = -1;
	} else if (_Player < _mouse){
		_Binario = 1;
	}
	
	return 	_Binario;
	
}



// atakes
function scrspikes(){

for (var i = 0; i < 8; i++) {
    var angulo = i * 45; // Começa em 0, vai até 315
    var bala = instance_create_depth(x, y, -1, oBala18filho);
    bala.direction = angulo;
    bala.image_angle = angulo;
    bala.speed = 6;
}

}
function scrEspadaAtacks(){
	for (var i = 0; i < 12; i++) {
	    var angulo = i * 20; // Começa em 0, vai até 315
	    var bala = instance_create_depth(x, y, -1, oBala19);
	    bala.direction = angulo;
	    bala.image_angle = angulo;
	    bala.speed = 9;
	}
}
