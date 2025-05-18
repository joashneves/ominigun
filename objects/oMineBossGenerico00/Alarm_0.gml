/// @description Muda a direção se não estiver tocando parede, senão vai para o centro

// Velocidade aleatória
spd = random_range(0.5, 1.5);

// Se NÃO estiver colidindo com oBloco, escolhe uma direção aleatória
if (!place_meeting(x, y, oBloco)) {
	hspd = random_range(-1, 1);
	vspd = random_range(-1, 1);
} else {
	// Está colidindo: move na direção do centro da sala
	var centro_x = room_width / 2;
	var centro_y = room_height / 2;

	var dx = centro_x - x;
	var dy = centro_y - y;
	var dist = point_distance(x, y, centro_x, centro_y);

	// Evita divisão por zero
	if (dist > 0) {
		hspd = (dx / dist);
		vspd = (dy / dist);
	}
}

// Normaliza vetor e aplica velocidade
var len = point_distance(0, 0, hspd, vspd);
if (len != 0) {
	hspd = (hspd / len) * spd;
	vspd = (vspd / len) * spd;
}

// Reativa o alarm para repetir o comportamento
alarm[0] = 60 * 2;
