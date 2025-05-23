/// @description Insert description here
// You can write your code in this editor

life = 2800;
lifeMax = life;

spd = 0.3;

vuneravel = false;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;


// ataque
lasers = false;
// Ativa o switch de fases/comportamentos
fase = choose(0, 1, 2);

if(!alarm[11]) alarm[11]= 60;
if(!alarm[2]) alarm[2]= 20;


oPlayer.BossMorto = false

image_xscale = 2;
image_yscale = 2;
	 
createLight(x,y,c_white, 2, image_xscale,image_yscale, self)