/// @description Insert description here
// You can write your code in this editor

life = choose(25,50,80)*global.dificuldade;

hspd = oPlayer.x;
vspd = oPlayer.y;
spd = 0.5;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;

lanca = 0;

random_valueH = random_range(-3,3);
random_valueV = random_range(-3,3);

municao = random_range(1,60);
municaoTotal = random_range(60,90);

createLight(x,y,c_red, 0.5, 2,2, self)