/// @description Insert description here
// You can write your code in this editor

var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller


if(_E && oPlayer.moeda >=  preco){
	oPlayer.moeda-= preco;
	instance_create_depth(oPlayer.x,oPlayer.y,0,venda);
	instance_destroy();
	audio_play_sound(sndComprarItem,5,false)
}
