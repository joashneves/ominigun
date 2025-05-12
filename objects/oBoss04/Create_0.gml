topo = noone;
baixo = noone;
corpo = "corpo"
life = 40;
lifeMax = life;
lanca = 0;

municao = 0;
municaoMax = random_range(10, 60);
tempo = 2.5

vel = 2
alarm[0] = 10*tempo;
//

show_debug_message("Corpo : " + string(corpo) + " baixo : " + string(baixo)+ " Topo : " + string(topo));
dir = point_direction(x,y,x,y);
speed = 0

oPlayer.BossMorto = false;