for(var i = 60; i < 160; i++){
	var bala = instance_create_depth(x,y,0,oBala00);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
	bala.speed = 7;
	
}