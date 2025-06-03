/// @description Insert description here
// You can write your code in this editor

var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller


if(_E && oPlayer.moeda >=  preco){
	oPlayer.moeda-= preco;
	instance_create_depth(oPlayer.x,oPlayer.y,0,venda);
	instance_destroy();
	var id_som = 	audio_play_sound(sndComprarItem,5,false)
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	oDataSuperCarrie.moedas_usadas+= preco;
}
