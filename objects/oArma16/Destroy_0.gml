	 var quantidade = irandom_range(13, 28); // Entre 4 e 8 tiros

    for (var i = 0; i < quantidade; i++) {
        // Direção com imprecisão (±32 pixels em X e Y)
        var desvioX = random_range(oCursor.x-32,oCursor.x+ 32);
        var desvioY = random_range(oCursor.y-32, oCursor.y+32);
        var dir = point_direction(x, y,  desvioX,  desvioY);

        var bala = instance_create_depth(x, y, 0, oBala16);
        bala.direction = dir;
        bala.image_angle = dir;
        bala.speed = random_range(10, 14); // Velocidade levemente variável
    }
	