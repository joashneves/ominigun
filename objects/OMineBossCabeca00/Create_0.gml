/// @description atributos

life =  1200;
lifeMax =  life;

lanca = 0;

range = 12

municao = 0
municaoTotal = 200
// Comportamentos possíveis: 0 = perseguir, 1 = aleatório, 2 = parado
movimento_tipo = irandom(2);
movimento_tempo = 60; // duração antes de mudar
spd = 2; // velocidade base

alarm[1] = 60


angle_offset = irandom_range(0, 359); // cada olho começa em um ângulo diferente
radius = 280; // distância em que ele orbita o boss
orbital_speed = 0.2; // velocidade do giro


levou_dano = false;
dano_timer = 0;
shake_offset_x = 0;
shake_offset_y = 0;

oPlayer.BossMorto = false

instance_create_depth(x-64,y, 0, OMineBossMao00)
instance_create_depth(x+64,y, 0, OMineBossMao01)

createLight(x,y,c_red, 0.5, 2,2, self)