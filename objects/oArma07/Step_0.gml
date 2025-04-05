/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (tempGerador++ > 10) {
	var bala = instance_create_depth(x,y,0,oBala07);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 4;
 
	tempGerador = 0;
	
}