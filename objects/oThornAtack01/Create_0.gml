/// @description Mirar no player

createLight(x,y,c_red, 1, 1,1, self)

scale = 0.2;

depth = -1;
direction = point_direction(x,y, oPlayer.x, oPlayer.y);
image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
alarm[0] = 15;
alarm[1] = 390;