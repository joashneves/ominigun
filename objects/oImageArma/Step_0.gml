
x = oPlayer.x;
y = oPlayer.y;

if(x < mouse_x) image_yscale = 1;
if(x > mouse_x) image_yscale = -1;

sprite_index = oPlayer.aparencia;

image_angle = point_direction(x,y, mouse_x, mouse_y);

if(oPlayer.player_morto){
image_alpha = 0;	
}else {
image_alpha = 1;
}