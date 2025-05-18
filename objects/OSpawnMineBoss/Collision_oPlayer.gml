/// @description Insert description here
// You can write your code in this editor

var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller


if(_E ){
	var MineBoss = choose( OMineBossCabeca00,oMineBossGenerico01,oMineBossGenerico00 );
	 instance_create_depth(x,y-64,0, MineBoss);
	instance_destroy()
}

