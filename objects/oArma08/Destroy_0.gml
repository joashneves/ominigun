/// @description Insert description here
// You can write your code in this editor



	for(var i = 0 ; i < 3; i += 1;) {
	var bala = instance_create_depth(x,y,0,oBala08);
	bala.image_angle = point_direction(x,y, random_range(mouse_x-32, mouse_x+32), mouse_y);
	bala.direction = point_direction(x,y, mouse_x+23*i, mouse_y+23*i);
	bala.speed = 5;
	}