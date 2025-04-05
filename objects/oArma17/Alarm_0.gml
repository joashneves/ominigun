/// @description Insert description here
// You can write your code in this editor


		var bala = instance_create_depth(x,y,0,oBala17);
		bala.direction = point_direction(x,y,x*90, y);
		bala.speed = 6;
	
		var bala = instance_create_depth(x,y,0,oBala17);
		bala.direction = point_direction(x,y,x,y*-90);
		bala.speed = 6;
	
		var bala = instance_create_depth(x,y,0,oBala17);
		bala.direction = point_direction(x,y,x, y*90);
		bala.speed = 6;
	
		var bala = instance_create_depth(x,y,0,oBala17);
		bala.direction = point_direction(x,y,x*-90,y);
		bala.speed = 6;


alarm[0] = 15;