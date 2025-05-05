/// @description Insert description here
// You can write your code in this editor

var _bala = instance_create_depth(x,y,0,oBala00);
_bala.direction = point_direction(x,y,oCursor.x, oCursor.y);
_bala.image_angle = point_direction(x,y,oCursor.x, oCursor.y);
_bala.speed = 7;
_bala.image_blend = c_grey;

alarm[1] = 80;