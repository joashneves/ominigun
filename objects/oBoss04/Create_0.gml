topo = noone;
baixo = noone;
corpo = "corpo"
life = 100;
lifeMax = life;
lanca = 0;

municao = 0;
municaoMax = random_range(10, 60);
tempo = 2.5

levou_dano = true;
dano_timer = 5; // frames de recuo/efeito

vel = 2
alarm[0] = 10*tempo;
//

show_debug_message("Corpo : " + string(corpo) + " baixo : " + string(baixo)+ " Topo : " + string(topo));
dir = point_direction(x,y,x,y);
speed = 0

oPlayer.BossMorto = false;

createLight(x,y,c_white, 2, 2,2, self)