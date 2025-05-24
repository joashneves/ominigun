/// @description Insert description here
// You can write your code in this editor
if(!nenhuma_instance_existe([IDenemy, oBoss04]))exit;
var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check_pressed(ord("E")) ||  _Controller

if (fechado && _E) {
	//instance_create_depth(x,y+32,0,item);
	image_speed = 4;
	fechado = false;
	//instance_create_depth(x-32,y+32,0,item1);
}

