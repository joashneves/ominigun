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
	var	buffDanoArpa = {
	_id : 14,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoArpa,
	_tipo : "dano"
	}
	var buffDanoSpike = {
	_id : 15,
	_sprite : sBuffs,
	_script : scrBuffTomarDanoSpikes,
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
	var buffTempoBazuca = {
	_id : 22,
	_sprite : sBuffs02,
	_script : scrBuffsTempoCriaBazuca,
	_tipo : "tempo"
	}
	var buffTempoArpa = {
	_id : 22,
	_sprite : sBuffs02,
	_script : scrBuffsTempoCriaArpa,
	_tipo : "tempo"
	}
	// REcursos
	var buffTempoMoeda = {
	_id : 30,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosMoedas,
	_tipo : "recurso"
	}
	var buffTempoLife = {
	_id : 31,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosLife,
	_tipo : "recurso"
	}
	var buffTempoArma00 = {
	_id : 32,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosArma00,
	_tipo : "recurso"
	}
	var buffTempoArma01 = {
	_id : 33,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosArma01,
	_tipo : "recurso"
	}
	var buffTempoArma02 = {
	_id : 34,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosArma02,
	_tipo : "recurso"
	}
	var buffTempoArma03 = {
	_id : 35,
	_sprite : sBuffs03,
	_script : scrBuffsRecursosArma03,
	_tipo : "recurso"
	}
	// Tiro 
	var buffTiroArma = {
	_id : 40,
	_sprite : sBuffs04,
	_script : scrBuffArma,
	_tipo : "arma"
	}
	var buffTiroArma00 = {
	_id : 41,
	_sprite : sBuffs04,
	_script : scrBuffArma00,
	_tipo : "arma"
	}
	var buffTiroArma01 = {
	_id : 42,
	_sprite : sBuffs04,
	_script : scrBuffArma01,
	_tipo : "arma"
	}
	var buffTiroArma02 = {
	_id : 43,
	_sprite : sBuffs04,
	_script : scrBuffArma02,
	_tipo : "arma"
	}
	
buffefeito = array_create(2);

for(var _i = -1; _i <= 1; _i++;){
	buffefeito[_i+1] = choose(buffDanoMetralhador, buffDanoFogo, buffDanoPortal, buffDanoArpa, buffTempoPortal,
	buffTempoRobo, buffTempoBazuca,buffTempoArpa, buffTempoLife, buffTempoMoeda, buffTempoArma00, buffTempoArma01,
	buffTempoArma02, buffTiroArma00, buffTiroArma01, buffTiroArma02, buffTiroArma, buffDanoSpike);
	
	var Buffs = oBuffs;
	show_debug_message("degub : view port : " + string(view_hport[0]) + "view Y : " + string(view_wport[0])
	+ "imagem" + string(Buffs));
	
	var buff = instance_create_depth((view_wport[0]/2)+(128*_i), view_hport[0]/2 , -100, oBuffs);
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
