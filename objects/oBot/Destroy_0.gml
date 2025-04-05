/// @description Insert description here
// You can write your code in this editor

for(var _i = 0; _i < 190; _i++){
		var bala = instance_create_depth(x,y,0,oBala13);
		bala.image_angle = point_direction(x,y, x, y);
		bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
		bala.speed = 1;	
}

