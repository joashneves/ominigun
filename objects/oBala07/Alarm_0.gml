/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(IDenemy)) instance_destroy();

if(instance_exists(IDenemy)){
direction = point_direction(x,y,IDenemy.x,IDenemy.y);
}

alarm[0] = 60;