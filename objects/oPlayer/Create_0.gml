/// @description criação do player
gc_collect();
// valores

vida = 5; 
if(debug_mode){
	vida = 100;
}

pause = false;
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

levelAntigo = room_get_name(room)

if(!audio_play_sound(sndMusicFloresta,3,true)){
	(audio_play_sound(sndMusicFloresta,3,true))
}
gc_enable(true);

