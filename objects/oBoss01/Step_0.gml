if (global.pause) return;

// Garante que o boss está ativo
oPlayer.BossMorto = false;

// Se estiver vulnerável, ativa comportamento de batalha
if (vuneravel) {
    
    switch (fase) {
        case 0:
            // Fase padrão: perseguição simples + ataque eventual
            
            // Transparência e velocidade
            // Visibilidade baseada na velocidade
			// spd_max é a velocidade máxima possível (ajuste conforme seu jogo)
			var spd_max = 5;

			// Garante que a alpha fique entre 0.2 (mais invisível) e 1 (totalmente visível)
			//image_alpha = clamp(0.2 + (spd / spd_max), 0.2, 1);

            speed = (instance_number(oBulletOlhoBoss02) >= 6) ? 0.2 : 0.6;
            
            // Direção para o player
            direction = point_direction(x, y, oPlayer.x, oPlayer.y);
            image_angle = direction;

            // Alarme de ataque
            if (!alarm[0]) alarm[0] = irandom_range(90, 210);

            // Visual
            sprite_index = sBoss01Atack;
            image_xscale = 2;
            image_yscale = 2;


        break;

        // Você pode adicionar novos comportamentos:
        
		case 1:
		    // Obtém os dados da câmera
		    var vx = camera_get_view_x(view_camera[0]);
		    var vy = camera_get_view_y(view_camera[0]);
		    var vw = camera_get_view_width(view_camera[0]);
		    var vh = camera_get_view_height(view_camera[0]);

		    // Verifica se está dentro da tela
		    if (!point_in_rectangle(x, y, vx, vy, vx + vw, vy + vh)) {
		        // Saiu da tela: vai para a próxima fase
		        fase = 2;
		        break;
		    }

		    // Calcula distância até o player
		    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

		    // Se estiver muito perto, fica parado
		    if (dist < 196) {
		        speed = 0;
		    } else {
		        // Se estiver longe, se afasta lentamente
		        var dir_fuga = point_direction(oPlayer.x, oPlayer.y, x, y);
		        direction = dir_fuga;
		        speed = 1; // ou 0.5 para mais suavidade
		    }

		    // Sempre olha para o player
		    image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

		    // Atira periodicamente
		    if (!alarm[1]) alarm[1] = 90;
		    lasers = true;

		    break;

		
		case 2:
		        // Fase 3: dash rápido em direção ao player a cada X segundos
        if (!alarm[3]) {
            var dirDash = point_direction(x, y, oPlayer.x, oPlayer.y);
			instance_create_depth(x,y,-1, oEnemyOlhoBoss01)
            direction = dirDash;
            image_angle = dirDash;
            speed = 6; // velocidade do dash
            alarm[3] = random_range(60, 180); // recarga do dash
        }
    
		break;
        
    }

} else {
    // Comportamento quando ainda NÃO está vulnerável

    // Colisão com o player
    if (place_meeting(x, y, oPlayer)) {
        oPlayer.vida--;
    }

    // Colisão com algum tipo de bala
    if (place_meeting(x, y, IDbalas) && spd > 0) {
        spd -= 0.3;
        instance_destroy(instance_place(x, y, IDbalas));
        audio_play_sound(sndDanoinimigo, 2, 0);
    }

    // Limita velocidade
    if (spd < 0) spd = 0;

    // Direção para o player
    direction = point_direction(x, y, oPlayer.x, oPlayer.y);
    image_angle = direction;
    speed = spd;

    // Transparência reduzida antes de vulnerabilidade
    // Visibilidade baseada na velocidade
	// spd_max é a velocidade máxima possível (ajuste conforme seu jogo)
	var spd_max = 2.5;

	// Garante que a alpha fique entre 0.2 (mais invisível) e 1 (totalmente visível)
	//image_alpha = clamp(0.2 + (spd / spd_max), 0.2, 1);

}

// Dano com bala especial
if (place_meeting(x, y, oBalaDanoBoss)) {
    life -= 25;
    instance_destroy(instance_place(x, y, oBalaDanoBoss));
    audio_play_sound(sndDanoinimigo, 2, 0);
}

// Morre se a vida acabar
if (life <= 0) instance_destroy();
               