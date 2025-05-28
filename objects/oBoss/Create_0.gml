/// @description Insert description here
// You can write your code in this editor

life = 1800;
lifeMax = life;
vida_trigger = life; // armazena o valor da vida para controle de disparos

vuneravel = false;

lanca = 0;

municao = 0;
municaoMax = 90;

levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;

angle_offset = irandom_range(0, 359); // cada olho começa em um ângulo diferente
radius = 210; // distância em que ele orbita o boss
orbital_speed = 1.2; // velocidade do giro

depth = -100

timeInvocar = 120;
if (!alarm[0]) alarm[0] = timeInvocar;


oPlayer.BossMorto = false
image_xscale = 1;
image_yscale = 1;

createLight(x,y,c_white, 2, image_xscale,image_yscale, self)