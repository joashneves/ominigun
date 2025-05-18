/// @description Insert description here
// You can write your code in this editor

life = choose(25,50)*global.dificuldade;

hspd = oPlayer.x;
vspd = oPlayer.y;
spd = random_range(0.5,1.5);


random_valueH = random_range(-3,3);
random_valueV = random_range(-3,3);

lanca = 0;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;


municao = random_range(1,60);
municaoTotal = random_range(160,190);


createLight(x,y,c_red, 0.5, 2,2, self)

if(!alarm[0]) alarm[0] = 60;