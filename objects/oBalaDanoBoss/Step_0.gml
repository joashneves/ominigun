/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(oBoss01)) instance_destroy(self);

if(instance_exists(oBoss01)){
	direction = point_direction(x,y, oBoss01.x, oBoss01.y);
}