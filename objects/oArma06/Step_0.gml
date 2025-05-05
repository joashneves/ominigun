/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_number(oBala06) < 30) {
	
var mouse = instance_create_depth(oCursor.x, oCursor.y,0, oBala06);
mouse.image_angle = point_direction(x,y, oCursor.x, oCursor.y);
mouse.direction = point_direction(oCursor.x,oCursor.y,oArma06.x,oArma06.y)
mouse.speed = 12;

}