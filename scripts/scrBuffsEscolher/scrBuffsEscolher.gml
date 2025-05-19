// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEscolheBuffs(){

global.pause = true
	// Escolha por dano
// === Buffs de DANO ===
	var buffDanoPortal = {
		_id: 10,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoPortal,
		_tipo: "dano",
		_descricao_id: "dano_portal"
	};
	var buffDanoFogo = {
		_id: 11,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoFogo,
		_tipo: "dano",
		_descricao_id: "dano_fogo"
	};
	var buffDanoMetralhador = {
		_id: 12,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoMetralhadora,
		_tipo: "dano",
		_descricao_id: "dano_metralhadora"
	};
	var buffDanoExpancao = {
		_id: 13,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoExpansao,
		_tipo: "dano",
		_descricao_id: "dano_expansao"
	};
	var buffDanoArpa = {
		_id: 14,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoArpa,
		_tipo: "dano",
		_descricao_id: "dano_arpa"
	};
	var buffDanoSpike = {
		_id: 15,
		_sprite: sBuffs,
		_script: scrBuffTomarDanoSpikes,
		_tipo: "dano",
		_descricao_id: "dano_spike"
	};

	// === Buffs por TEMPO ===
	var buffTempoRobo = {
		_id: 20,
		_sprite: sBuffs02,
		_script: scrBuffsTempoCriaRobo,
		_tipo: "tempo",
		_descricao_id: "tempo_robo"
	};
	var buffTempoPortal = {
		_id: 21,
		_sprite: sBuffs02,
		_script: scrBuffsTempoCriaPortal,
		_tipo: "tempo",
		_descricao_id: "tempo_portal"
	};
	var buffTempoBazuca = {
		_id: 22,
		_sprite: sBuffs02,
		_script: scrBuffsTempoCriaBazuca,
		_tipo: "tempo",
		_descricao_id: "tempo_bazuca"
	};
	var buffTempoArpa = {
		_id: 23,
		_sprite: sBuffs02,
		_script: scrBuffsTempoCriaArpa,
		_tipo: "tempo",
		_descricao_id: "tempo_arpa"
	};

	// === Buffs de RECURSOS ===
	var buffTempoMoeda = {
		_id: 30,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosMoedas,
		_tipo: "recurso",
		_descricao_id: "recurso_moeda"
	};
	var buffTempoLife = {
		_id: 31,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosLife,
		_tipo: "recurso",
		_descricao_id: "recurso_life"
	};
	var buffTempoArma00 = {
		_id: 32,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosArma00,
		_tipo: "recurso",
		_descricao_id: "recurso_arma_00"
	};
	var buffTempoArma01 = {
		_id: 33,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosArma01,
		_tipo: "recurso",
		_descricao_id: "recurso_arma_01"
	};
	var buffTempoArma02 = {
		_id: 34,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosArma02,
		_tipo: "recurso",
		_descricao_id: "recurso_arma_02"
	};
	var buffTempoArma03 = {
		_id: 35,
		_sprite: sBuffs03,
		_script: scrBuffsRecursosArma03,
		_tipo: "recurso",
		_descricao_id: "recurso_arma_03"
	};

	// === Buffs de ARREMESSO (Tiro) ===
	var buffTiroArma = {
		_id: 40,
		_sprite: sBuffs04,
		_script: scrBuffArma,
		_tipo: "arma",
		_descricao_id: "arma_ar"
	};
	var buffTiroArma00 = {
		_id: 41,
		_sprite: sBuffs04,
		_script: scrBuffArma00,
		_tipo: "arma",
		_descricao_id: "arma_melodia"
	};
	var buffTiroArma01 = {
		_id: 42,
		_sprite: sBuffs04,
		_script: scrBuffArma01,
		_tipo: "arma",
		_descricao_id: "arma_chamas"
	};
	var buffTiroArma02 = {
		_id: 43,
		_sprite: sBuffs04,
		_script: scrBuffArma02,
		_tipo: "arma",
		_descricao_id: "arma_portal"
	};
	
buffefeito = array_create(2);

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);


for(var _i = -1; _i <= 1; _i++;){
	buffefeito[_i+1] = choose(buffDanoMetralhador, buffDanoFogo, buffDanoPortal, buffDanoArpa, buffTempoPortal,
	buffTempoRobo, buffTempoBazuca,buffTempoArpa, buffTempoLife, buffTempoMoeda, buffTempoArma00, buffTempoArma01,
	buffTempoArma02, buffTiroArma00, buffTiroArma01, buffTiroArma02, buffTiroArma, buffDanoSpike);
	
	var Buffs = oBuffs;

	    var buff_x = cam_x + (cam_w / 2) + (128 * _i);
    var buff_y = cam_y + (cam_h / 2);
	
		show_debug_message("degub : view port : " + string(buff_x) + "view Y : " + string(buff_y)
	+ "imagem" + string(Buffs));
	

    var buff = instance_create_depth(buff_x, buff_y, -100, oBuffs);
	buff._id = buffefeito[_i+1]._id;
	buff._script = buffefeito[_i+1]._script
	buff._tipo = buffefeito[_i+1]._tipo
	buff.sprite_index = buffefeito[_i+1]._sprite
	buff._descricao = buffefeito[_i+1]._descricao_id
	
	
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
