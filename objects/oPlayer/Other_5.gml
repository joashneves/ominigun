/// @description Insert description here
// You can write your code in this editor

//create
if(!instance_exists(oDataCarrie))
{
	instance_create_depth(0,0,0,oDataCarrie);
}


//set
if(vida >= 0){
oDataCarrie.targetEntrada = targetEntrada
}

oDataCarrie.vida = vida
oDataCarrie.score = score;
oDataCarrie.rage = rage;
oDataCarrie.multiplicadorDeRecarga = multiplicadorDeRecarga;
oDataCarrie.moeda = moeda;
oDataCarrie.tempo_de_jogo = tempo_de_jogo;

// armas

oDataCarrie.aparencia= aparencia;
oDataCarrie.recarga=  recarga;
oDataCarrie.recargaTotal= recargaTotal;
oDataCarrie.arma=  arma;
oDataCarrie.bala = bala;
oDataCarrie.municacaoTotal = municacaoTotal;
oDataCarrie.municao = municao;
oDataCarrie.armaAtual = armaAtual;

oDataCarrie.slotArma = slotArma;
oDataCarrie.listaSprites = listaSprites;

oDataCarrie.buffsAtivosDano = global.buffsAtivosDano;
oDataCarrie.buffsAtivosTiro = global.buffsAtivosTiro;
oDataCarrie.buffsAtivosTempo = global.buffsAtivosTempo;
oDataCarrie.buffsAtivosRecurso = global.buffsAtivosRecurso;
oDataCarrie.dificuldade = global.dificuldade+0.5;
oDataCarrie.cartasSprites = global.cartasSprites;


oDataCarrie.levelAntigo = (room);

show_debug_message(levelAntigo);
show_debug_message("Apagado")

