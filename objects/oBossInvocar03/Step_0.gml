/// @description controlador e spawn

if(instance_exists(oBoss04)){
	// Percorrer todas as instâncias de oBoss04
	global.vida_total_boss = 0;
	with (oBoss04) {
	    global.vida_total_boss += life;
	    // se quiser calcular a barra cheia
	}
}

if (bossSpawn and !instance_exists(oBoss04)){
	oPlayer.BossMorto = true	
}else {
	oPlayer.BossMorto = false
}