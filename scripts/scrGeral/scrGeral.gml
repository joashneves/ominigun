// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Verifica o final da animação
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
// Verificar se Esta ou não na tela
function em_view() {
    var vx = camera_get_view_x(view_camera[0]);
    var vy = camera_get_view_y(view_camera[0]);
    var vw = camera_get_view_width(view_camera[0]);
    var vh = camera_get_view_height(view_camera[0]);

    if (point_in_rectangle(x, y, vx, vy, vx + vw, vy + vh)) {
        return true;
    }
    return false;
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
/// Verifica se um retângulo está dentro de outro
function rectangle_in_rectangle(left1, top1, right1, bottom1, left2, top2, right2, bottom2) {
    return !(right1 < left2 || left1 > right2 || bottom1 < top2 || top1 > bottom2);
}

function resize_light_surface() {
    with(oLightRender) {
        var _w = camera_get_view_width(view_camera[0]);
        var _h = camera_get_view_height(view_camera[0]);

        if (!surface_exists(surf_light) || surface_get_width(surf_light) != _w || surface_get_height(surf_light) != _h) {
            if (surface_exists(surf_light)) surface_free(surf_light);
            surf_light = surface_create(_w, _h, surface_rgba16float);
        }

        // Inicializa variáveis, se necessário
        if (!variable_instance_exists(id, "draw_surf_x")) draw_surf_x = 0;
        if (!variable_instance_exists(id, "draw_surf_y")) draw_surf_y = 0;

        // POSICIONA A SURFACE NO CANTO SUPERIOR ESQUERDO DA CÂMERA
        draw_surf_x = 2;
        draw_surf_y = 0;

        show_debug_message("draw_surf_x: " + string(draw_surf_x) + " draw_surf_y: " + string(draw_surf_y));
    }
}
// Obter armas
function obterTodasArmas(){
	return choose( oTrocaDeArma01, oTrocaDeArma18, oTrocaDeArma03, oTrocaDeArma05,
	oTrocaDeArma06, oTrocaDeArma07,oTrocaDeArma08, oTrocaDeArma09, oTrocaDeArma10,
	oTrocaDeArma11, oTrocaDeArma12, oTrocaDeArma13, oTrocaDeArma14, oTrocaDeArma18,
	oTrocaDeArma15, oTrocaDeArma16, oTrocaDeArma19, oTrocaDeArma21, oTrocaDeArma22,
	oTrocaDeArma23, oTrocaDeArma24);

}
function nenhuma_instance_existe(lista){
	for (var i = 0; i < array_length(lista); i++) {
	    if (instance_exists(lista[i])) {
	        return false; // Encontrou uma, então não está vazio
	    }
	}
	return true; // Nenhuma instância foi encontrada	
}
// balanço de camera
function camera_shake(magnitude, duration){
	if(oDataSuperCarrie.TremorTela){
	global.shake_magnitude = magnitude;
	global.shake_duration = duration;
	}
	
}
//Salva jogo
function salvaJogo(){
if(file_exists("save.sav")) file_delete("save.sav");
ini_open("save.sav");
ini_close()	
	
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
