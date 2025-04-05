/// @description Insert description here
// You can write your code in this editor

var _xx = choose(-64,0,64);
var _yy = choose(-64,0,64);

if(!instance_exists(oOlho)){
	instance_create_depth(x+64,y+64,depth-1,oOlho);
	instance_create_depth(x-64,y+64,depth-1,oOlho);
	instance_create_depth(x-64,y-64,depth-1,oOlho);
	instance_create_depth(x+64,y-64,depth-1,oOlho);
	
} else if(instance_number(oOlho) <= 6){
	var inimigo = instance_create_depth(x+_xx,y+_yy,depth-1,oOlho);
}


if (!alarm[0]) alarm[0] = timeInvocar;

