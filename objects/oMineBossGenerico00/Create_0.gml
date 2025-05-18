/// @description atributos

life = 1200;
lifeMax = life;

image_xscale = 1/2;
image_yscale = 1/2;

hspd = 0;
vspd = 0;
spd = random_range(0.5,1.5);

if(!alarm[0]) alarm[0] = 60;

lanca = 0;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;

municao = 0;
municaoTotal = 120;
createLight(x,y,c_red, 0.5, 2,2, self)