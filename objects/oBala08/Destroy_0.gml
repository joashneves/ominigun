/// @description Insert description here
// You can write your code in this editor

	var bala = instance_create_depth(x, y,0,oArma01);
	bala.image_angle = point_direction(x,y, oCursor.x, oCursor.y);
	bala.direction = point_direction(x, y,oPlayer.x,oPlayer.y);
	bala.speed = 13;