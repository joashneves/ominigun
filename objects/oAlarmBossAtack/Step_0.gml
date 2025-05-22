if(instance_exists(oPlayer)){
x = oPlayer.x;
y = oPlayer.y;

if(instance_exists(oEye00)){
	// Temporizador entre tiros
	if (--tempo_proximo_tiro <= 0) {
		// Criar o tiro
		var bala = instance_create_depth(oEye00.x,oEye00.y, 0, oThornAtack00);
		bala.speed = 12;

		tiros_disparados += 1;
		tempo_proximo_tiro = tempo_entre_tiros;

		if (tiros_disparados >= 5) { // por exemplo, 5 tiros
			instance_destroy()
		}
	}
}

}