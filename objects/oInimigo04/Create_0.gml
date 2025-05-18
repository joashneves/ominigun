/// @description kamikaze

life = 125*global.dificuldade;

hspd = oPlayer.x;
vspd = oPlayer.y;
spd = 0.1;

lanca = 0;

image_blend = c_red;
image_xscale = 1;
image_yscale = 1;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;

speed = spd;
alarm[0] = 10;


createLight(x,y,c_red, 1, 3,3, self)