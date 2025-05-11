/// @description Insert description here
// You can write your code in this editor

var _xx = choose(-64,0,64);
var _yy = choose(-64,0,64);

var olho00 = choose(oOlho, oOlho_1, oOlho_2, oOlho_3)
var olho01 = choose(oOlho, oOlho_1, oOlho_2, oOlho_3)
var olho02 = choose(oOlho, oOlho_1, oOlho_2, oOlho_3)
var olho03 = choose(oOlho, oOlho_1, oOlho_2, oOlho_3)

if(!instance_exists(oOlho)){
	instance_create_depth(x+32,y+32,depth-1,olho01);
	instance_create_depth(x-32,y+32,depth-1,olho02);
	instance_create_depth(x-32,y-32,depth-1,olho03);
	instance_create_depth(x+32,y-32,depth-1,olho00);
	
} else if(instance_number(oOlho) <= 6){
	var inimigo = instance_create_depth(x+_xx,y+_yy,depth-1,olho00);
}


if (!alarm[0]) alarm[0] = timeInvocar;

