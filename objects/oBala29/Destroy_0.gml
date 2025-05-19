
for (var i = 0; i < 12; i++) { // 5 chamas por vez (ajuste conforme quiser)
    var bala = instance_create_depth(x, y, 0, oEfeitoBala);
    var dir = random(360); // direção aleatória completa
    bala.direction = dir;
    bala.image_angle = dir;
    bala.speed = 1;
}