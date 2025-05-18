/// @description Insert description here
// You can write your code in this editor

life = 100*global.dificuldade;

hspd = 0;
vspd = 0;
spd = random_range(0.5,1.5);

lanca = 0;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;



random_valueH = random_range(-3,3)
random_valueV = random_range(-3,3)

municao = random_range(1,15);
municaoTotal = random_range(50,150);



if(!alarm[0]) alarm[0] = 60;

createLight(x,y,c_red, 0.5, 2,2, self)