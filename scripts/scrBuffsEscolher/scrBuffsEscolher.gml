// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEscolheBuffs(){

global.pause = true
	// Escolha por dano
	var buffDanoPortal = {
	_id : 10,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoPortal,
	_tipo : "dano"
	}
	var	buffDanoFogo = {
	_id : 11,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoFogo,
	_tipo : "dano"
	}
	var	buffDanoMetralhador = {
	_id : 12,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoMetralhadora,
	_tipo : "dano"
	}
	var	buffDanoExpancao = {
	_id : 13,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoExpansao,
	_tipo : "dano"
	}
	// escolha por tempo
	var buffTempoRobo = {
	_id : 20,
	_sprite : sBuffs02,
	_script : scrBuffsTempoCriaRobo,
	_tipo : "tempo"
	}
	var buffTempoPortal = {
	_id : 21,
	_sprite : sBuffs02,
	_script : scrBuffsTempoCriaPortal,
	_tipo : "tempo"
	}
	
buffefeito = array_create(2);

for(var _i = -1; _i <= 1; _i++;){
	buffefeito[_i+1] = choose(buffDanoMetralhador, buffDanoFogo, buffDanoPortal,
	buffTempoPortal, buffTempoRobo);
	
	var Buffs = oBuffs;
	show_debug_message("degub : view port : " + string(view_hport[0]) + "view Y : " + string(view_wport[0])
	+ "imagem" + string(Buffs));
	
	var buff = instance_create_depth((view_wport[0]/2)+(64*_i), view_hport[0]/2 , -100, oBuffs);
	buff._id = buffefeito[_i+1]._id;
	buff._script = buffefeito[_i+1]._script
	buff._tipo = buffefeito[_i+1]._tipo
	buff.sprite_index = buffefeito[_i+1]._sprite
	
	
	// caso escolha o mesmo buff
	if (_i != -1){
		if (buffefeito[_i +1] == buffefeito[_i]){
			instance_destroy(buff)
			show_debug_message(buffefeito)
			_i --
		}
	}
}	

}
