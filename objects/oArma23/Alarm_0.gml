/// @description Insert description here
// You can write your code in this editor

var bala = instance_create_depth(x,y,0,oBala23);
bala.image_angle = angle;
bala.direction = point_direction(x,y,irandom_range(x-90,x+90),irandom_range(y-90, y+90));
bala.speed = 8;

alarm[0] = 15;