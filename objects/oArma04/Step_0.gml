/// @description Insert description here
// You can write your code in this editor

angle += speed;
image_angle =angle;

var bala = instance_create_depth(x,y,0,oBala03);
bala.image_angle = angle;
bala.direction = point_direction(x,y,irandom_range(x-90,x+90),y+radius);
bala.speed = 8;

radius +=10;

if(radius >= 90){
	radius =-90;
	
}