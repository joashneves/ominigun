/// @description Insert description here
// You can write your code in this editor
if instance_exists(IDenemy) exit;
var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller

if (fechado && _E) {
	instance_create_depth(x,y+32,0,item);
	image_index = 1;
	fechado = false;
	instance_create_depth(x-32,y+32,0,item1);
	instance_create_depth(x+32,y+32,0,item2);

}

