/// @description Insert description here
// You can write your code in this editor

direction = point_direction(x,y,oPlayer.x,oPlayer.y);
image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
speed = 0.2;

if(!alarm[0]) alarm[0] = 60;
if(!alarm[1]) alarm[1] = random_range(60,190);