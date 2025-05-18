/// @description Insert description here
// You can write your code in this editor

hspd = 0;
vspd = 0;
spd = 0;

lanca = 0;

random_valueH = random_range(-3,3)
random_valueV = random_range(-3,3)

municao = random_range(1,15);
municaoTotal = random_range(50,150);

if(!alarm[3]) alarm[3] = 60;

createLight(x,y, #bd8600, 1, 1,1, self)