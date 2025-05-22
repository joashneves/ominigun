if(instance_exists(oPlayer) and !atacando){
x = oPlayer.x;
y = oPlayer.y;
}else if (atacando) {
    if (--tempo_proximo_tiro <= 0) {
        var vx = camera_get_view_x(view_camera[0]);
        var vy = camera_get_view_y(view_camera[0]);
        var vw = camera_get_view_width(view_camera[0]);
        var vh = camera_get_view_height(view_camera[0]);

        // Centro da tela (opcional: pode ser o jogador também)
        var cx = vx + vw * 0.5;
        var cy = vy + vh * 0.5;

        // CIMA
        var bala = instance_create_depth(cx, vy, 0, oBulletBossFinal);
		bala.image_angle = 270;
        bala.direction = 270;
        bala.speed = 7;

        // BAIXO
        bala = instance_create_depth(cx, vy + vh, 0, oBulletBossFinal);
		bala.image_angle = 90;
        bala.direction = 90;
        bala.speed = 7;

        // ESQUERDA
        bala = instance_create_depth(vx, cy, 0, oBulletBossFinal);
		bala.image_angle = 0;
        bala.direction = 0;
        bala.speed = 7;

        // DIREITA
        bala = instance_create_depth(vx + vw, cy, 0, oBulletBossFinal);
		bala.image_angle = 180;
        bala.direction = 180;
        bala.speed = 7;

        tiros_disparados += 1;
        tempo_proximo_tiro = tempo_entre_tiros;

        if (tiros_disparados >= 6) {
            atacando = false; // 
			instance_destroy(); //, se for autodestruir
        }
    }
}

