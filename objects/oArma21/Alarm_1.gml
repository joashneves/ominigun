

	    var px = x;
	    var py = y;

	    // Escolhe uma posição aleatória fora da tela
	    var angulo = irandom_range(0, 359);
	    var distancia = 1000; // distância além da tela
	    var spawn_x = px + lengthdir_x(distancia, angulo);
	    var spawn_y = py + lengthdir_y(distancia, angulo);

	    var bala = instance_create_depth(spawn_x, spawn_y, 0, oBala20);
	    bala.direction = point_direction(spawn_x, spawn_y, px, py);
	    bala.image_angle = bala.direction;
	    bala.speed = 16;


alarm[1] = 5