//camera_shake(6, 20);

for (var i = 0; i < 5; i++) { // 5 chamas por vez (ajuste conforme quiser)
    var bala = instance_create_depth(x, y, 0, oBala13);
    
    var dir = random(360); // direção aleatória completa
    bala.direction = dir;
    bala.image_angle = dir;
    bala.speed = 1;
}

alarm[0] = tempo_disparo; // Reativa o ciclo
