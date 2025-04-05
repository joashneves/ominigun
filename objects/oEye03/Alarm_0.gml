/// @description Insert description here
// You can write your code in this editor

var _bala = instance_create_depth(x,y,0, oBalaBoss01);
_bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
_bala.speed = 2;

alarm[0] = 180;