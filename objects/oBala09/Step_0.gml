/// @description Insert description here
// You can write your code in this editor
if(!em_view()) instance_destroy();

if(instance_exists(oArma09)){
	speed = 5;
	direction = point_direction(x,y, oArma09.x, oArma09.y);
	alarm[0] = 90;
}