/// @description Insert description here
// You can write your code in this editor

life = 1200;

hspd = 0;
vspd = 0;
spd = 0.5;

lanca = 0;

random_valueH = random_range(-3,3)
random_valueV = random_range(-3,3)

municao = random_range(1,15);
municaoTotal = random_range(50,150);


if(!alarm[0]) alarm[0] = 60;


createLight(x,y,c_white, 2, image_xscale,image_yscale, self)