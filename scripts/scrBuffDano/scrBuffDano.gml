
function scrBuffTomarDanoPortal(){
	
for(var _i = 0; _i < 190; _i++){
		var bala = instance_create_depth(x,y,0,oBala02);
		bala.image_angle = point_direction(x,y, x, y);
		bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
		bala.speed = 1;	
}
}
function scrBuffTomarDanoExpansao(){
	
for(var _i = 0; _i < 8; _i++){
		var bala = instance_create_depth(x,y,0,oBala17);
		bala.image_angle = point_direction(x,y, x, y);
		bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
		bala.speed = 1;	
}

}

function scrBuffTomarDanoFogo(){
	
for(var _i = 0; _i < 360; _i++){
		var bala = instance_create_depth(x,y,0,oBala13);
		bala.image_angle = point_direction(x,y, x, y);
		bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
		bala.speed = 1;	
}

}
function scrBuffTomarDanoArpa(){
	
for(var _i = 0; _i < 36; _i++){
		var bala = instance_create_depth(x,y,0,oBala07);
		bala.image_angle = point_direction(x,y, x, y);
		bala.direction = point_direction(x,y, random_range(x-32, x+32),  random_range(y-32, y+32));
		bala.speed = 1;	
}

}


function scrBuffTomarDanoMetralhadora(){
radius = 0
repeat(120){
	
var bala = instance_create_depth(x,y,0,oBala03);
bala.direction = point_direction(x,y,irandom_range(x-90,x+90),y+radius);
bala.speed = 8;

radius +=10;

if(radius >= 90){
	radius =-90;
	
	}
}

}