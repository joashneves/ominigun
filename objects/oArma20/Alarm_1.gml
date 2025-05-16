
var bala = instance_create_depth(x,y,0,oBala16);
bala.image_angle = angle;
bala.direction = point_direction(x,y,irandom_range(x-90,x+90),y+radius);
bala.speed = 8;


alarm[1] = 5