/// @description Insert description here
// You can write your code in this editor
if instance_exists(IDenemy) exit;

if (fechado && keyboard_check(ord("E"))) {
	instance_create_depth(x,y+32,0,item);
	image_index = 1;
	fechado = false;
	instance_create_depth(x-32,y+32,0,item1);
	instance_create_depth(x+32,y+32,0,item2);

}

