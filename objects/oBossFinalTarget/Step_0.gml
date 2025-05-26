if (tempo++ > maxTempo) {
    movimento = choose(0, 1, 2, 3);
    tempo = 0;
}

if(!instance_exists(oPlayer)) instance_destroy();
if(!instance_exists(oBoss02)) instance_destroy();
switch (movimento) {
    // Parado acima do player
    case 0:
        x = oPlayer.x;
        y = oPlayer.y - 280;
    break;

    // Girando ao redor do player
    case 1:
        var raio = 200; // raio da órbita
        angulo_orbita += 4; // velocidade da rotação em graus

        if (angulo_orbita >= 360) angulo_orbita -= 360;

        x = oPlayer.x + lengthdir_x(raio, angulo_orbita);
        y = oPlayer.y + lengthdir_y(raio, angulo_orbita);
    break;

    // Dash até o player
    case 2:
	if(instance_exists(oPlayer)){
        x = oPlayer.x;
        y = oPlayer.y;
	}
    break;

    // Teleporta para dentro do player
    case 3:
	if(instance_exists(oPlayer)){
        x = oPlayer.x;
        y = oPlayer.y;
	}
	break;
}
