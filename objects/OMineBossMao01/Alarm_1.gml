	var laser = instance_create_depth(x, y, -4, oBulletOlhoBoss02)
    var dir = point_direction(x, y,  oPlayer.x,  oPlayer.y);
	laser.direction = dir;
    laser.image_angle = dir;
    laser.speed = 6; // Velocidade levemente variável