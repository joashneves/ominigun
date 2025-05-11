/// @description Lasers com tiros aleatórios e imprecisos

if (lasers) {
    lasers = choose(false, true); // Ativa/desativa aleatoriamente

    var quantidade = irandom_range(4, 8); // Entre 4 e 8 tiros

    for (var i = 0; i < quantidade; i++) {
        // Direção com imprecisão (±32 pixels em X e Y)
        var desvioX = random_range(oPlayer.x-32,oPlayer.x+ 32);
        var desvioY = random_range(oPlayer.y-32, oPlayer.y+32);
        var dir = point_direction(x, y,  desvioX,  desvioY);

        var bala = instance_create_layer(x, y, "Boss", oBulletOlhoBoss02);
        bala.direction = dir;
        bala.image_angle = dir;
        bala.speed = random_range(10, 14); // Velocidade levemente variável
        bala.image_blend = c_purple;
    }
}

// Reinicia o ataque com intervalo aleatório
if (!alarm[1]) alarm[1] = irandom_range(190, 310);
