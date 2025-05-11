/// @description Insert description here
// You can write your code in this editor

life = 1800;
lifeMax = life;
vida_trigger = life; // armazena o valor da vida para controle de disparos

vuneravel = false;

municao = 0;
municaoMax = 90;

angle_offset = irandom_range(0, 359); // cada olho começa em um ângulo diferente
radius = 210; // distância em que ele orbita o boss
orbital_speed = 1.2; // velocidade do giro

depth = -100

audio_stop_all();
audio_play_sound(ambient_horror_bleep,1,0);
audio_play_sound(sndMusicTerror,1,true);

timeInvocar = 120;
if (!alarm[0]) alarm[0] = timeInvocar;

lanca = 0;

oPlayer.BossMorto = false
image_xscale = 2;
image_yscale = 2;
