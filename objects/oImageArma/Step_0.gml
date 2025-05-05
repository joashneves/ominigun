
x = oPlayer.x;
y = oPlayer.y;

if(global.dir < 180) image_yscale = 1;
if(global.dir > 180) image_yscale = -1;

sprite_index = oPlayer.aparencia;

image_angle = global.dir;

if(oPlayer.player_morto){
image_alpha = 0;	
}else {
image_alpha = 1;
}
