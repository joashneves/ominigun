/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_number(oBala06) < 30) {
	
var mouse = instance_create_depth(mouse_x, mouse_y,0, oBala06);
mouse.image_angle = point_direction(x,y, mouse_x, mouse_y);
mouse.direction = point_direction(mouse_x,mouse_y,oArma06.x,oArma06.y)
mouse.speed = 12;

}