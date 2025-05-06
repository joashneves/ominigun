
function scrBuffArma(){
	for(var _i = 0; _i < 8; _i++){
			var bala = instance_create_depth(oCursor.x,oCursor.y,0,oBala17);
			bala.image_angle = point_direction(x,y, x, y);
			bala.direction = point_direction(oCursor.x,oCursor.y, random_range(x-32, x+32),  random_range(y-32, y+32));
			bala.speed = 1;	
	}
}

function scrBuffArma00(){
	for(var _i = 0; _i < 12; _i++){
			var bala = instance_create_depth(oCursor.x,oCursor.y,0,oBala07);
			bala.image_angle = point_direction(x,y, x, y);
			bala.direction = point_direction(oCursor.x,oCursor.y, random_range(x-32, x+32),  random_range(y-32, y+32));
			bala.speed = 6;	
	}
}


function scrBuffArma01(){
	for(var _i = 0; _i < 182; _i++){
			var bala = instance_create_depth(oCursor.x,oCursor.y,0,oBala13);
			bala.image_angle = point_direction(x,y, x, y);
			bala.direction = point_direction(oCursor.x,oCursor.y, random_range(x-32, x+32),  random_range(y-32, y+32));
			bala.speed = 6;	
	}
}

function scrBuffArma02(){
	instance_create_depth(oCursor.x,oCursor.y,0, oBala14);	
}
