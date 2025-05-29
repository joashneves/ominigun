/// @description Insert description here
// You can write your code in this editor
if(vida == 0)exit;

if(instance_exists(oDataCarrie)){

	targetEntrada = oDataCarrie.targetEntrada;
	
	vida = oDataCarrie.vida;
	score = oDataCarrie.score;
	rage = oDataCarrie.rage;
	multiplicadorDeRecarga = oDataCarrie.multiplicadorDeRecarga;
	moeda = oDataCarrie.moeda;
	tempo_de_jogo= oDataCarrie.tempo_de_jogo;

	aparencia= 	oDataCarrie.aparencia;
	recarga= oDataCarrie. recarga;
	recargaTotal= oDataCarrie.recargaTotal;
	arma=  oDataCarrie.arma;
	bala = oDataCarrie.bala;
	municacaoTotal = oDataCarrie.municacaoTotal;
	municao = oDataCarrie.municao;
	armaAtual = oDataCarrie.armaAtual;
	
	slotArma = oDataCarrie.slotArma;
	listaSprites = oDataCarrie.listaSprites;
	global.buffsAtivosDano = oDataCarrie.buffsAtivosDano;
	global.buffsAtivosTiro = oDataCarrie.buffsAtivosTiro;
	global.buffsAtivosTempo = oDataCarrie.buffsAtivosTempo;
	global.buffsAtivosRecurso = oDataCarrie.buffsAtivosRecurso;
	global.dificuldade = oDataCarrie.dificuldade;
	global.cartasSprites = oDataCarrie.cartasSprites;

	levelAntigo = oDataCarrie.levelAntigo;
	
	instance_destroy(oDataCarrie);
	

	if(instance_exists(targetEntrada)){
	x = targetEntrada.x;
	y = targetEntrada.y;
	}
	
	
}








