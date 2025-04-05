/// @description Insert description here
// You can write your code in this editor
speed = 0.5;
direction = point_direction(x,y,oPlayer.x, oPlayer.y);
if( oPlayer.vspd != 0 || oPlayer.hspd != 0){

speed = 5;

}else {
if(!alarm[1]) alarm[1] = 60;

}

alarm[0] = 30;
