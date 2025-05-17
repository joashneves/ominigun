/// @description Insert description here
// You can write your code in this editor

var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller

if(instance_exists(oBoss01)){
	if _E && !oBoss01.vuneravel{
		oBoss01.vuneravel = true;
		image_index = 1;
		image_alpha = 0.2;
		oBoss01.x = oPlayer.x-180;
		oBoss01.y = oPlayer.y-180;
	}
}