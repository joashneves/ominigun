/// @description Insert description here
// You can write your code in this editor

var bala = instance_create_depth(x,y,0,oBalaBoss);
bala.direction = point_direction(x,y,oPlayer.x,oPlayer.y);
bala.speed = random_range(1,7);
