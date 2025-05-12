/// @description criação do player

// valores

vida = 5; 
if(debug_mode){
	vida = 100;
}
// Especiais
global.dificuldade = 1;
global.pause = false;
score = 1;
fim_de_jogo = false;
player_morto = false;
levou_dano = false;
rage = 1;
rageMax = 100;
multiplicadorDeRecarga = 0.5;
// movimentação

hspd = 0;
vspd = 0;
spd = 3;

global.dir = 0

// arma e balas

aparencia= sArma00;
recarga=  60;
recargaTotal= 60;
arma=  oArma00;
bala = scrArmas00;
municacaoTotal = 1000000;
municao = municacaoTotal;

armaAtual = scrTrocadeArmaPistolaBasica;

globalvar slotArma;
slotArma = ds_list_create();
ds_list_add(slotArma,armaAtual);

instance_create_depth(x,y,-1,oImageArma);

	globalvar listaSprites;
	listaSprites = ds_list_create();
	ds_list_add(listaSprites,sArma00)

// Moedas e Status

moeda = 10;

targetEntrada = oLevelEntrada

// Bussola
if(!instance_exists(oBussola)) instance_create_depth(x,y,oPlayer.depth-2,oBussola);
// Bussola
if(!instance_exists(oCursor)) {
 cursor = instance_create_depth(x,y,oPlayer.depth-2,oCursor);
}
levelAntigo = room_get_name(room)

if(!audio_play_sound(sndMusicFloresta,3,true)){
	(audio_play_sound(sndMusicFloresta,3,true))
}
gc_enable(true);

// receber dano
global.buffsAtivosDano = ds_list_create();
global.buffsAtivosTiro = ds_list_create();
global.buffsAtivosTempo = ds_list_create();
global.buffsAtivosRecurso = ds_list_create();

alarm[1] = 180 + (rageMax);

alarm[2] = 380+(rageMax);

// Var controller
BossMorto = true;

axiosLH = 0
axiosLV = 0
axiosRH = 0
axiosRV = 0
// luz
createLight(x,y,c_white, 0.5, 2,2, self)
createLight(x,y,c_white, 1, 4,4, oCursor)
