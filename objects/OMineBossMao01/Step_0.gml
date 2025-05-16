if (!instance_exists( OMineBossCabeca00)) {
	instance_destroy()
} else {


switch(estado){
	case "parado":
	image_xscale =  -1;
		sprite_index  = sMineBoss00
		x = OMineBossCabeca00.x+64
		y = OMineBossCabeca00.y+64
	break;
	case "atacando_correndo":
	sprite_index  = sMineBoss00
	
if (distance_to_object(oPlayer) < range)
{
	if(!alarm[11]) alarm[11] = 10;
}

	if(instance_exists(oPlayer)){
				        // Fase 3: dash rápido em direção ao player a cada X segundos
        if (!alarm[3]) {
            var dirDash = point_direction(x, y, oPlayer.x, oPlayer.y);
            direction = dirDash;
            image_angle = dirDash;
            speed = 3; // velocidade do dash
            alarm[3] = 60 // recarga do dash
        }
	}
	break;
	case "ataca_atirando":
			image_xscale =  -1;
			var dirPlayer = point_direction(x, y, oPlayer.x, oPlayer.y);
			sprite_index  = sMIneBossAtaque00
			image_angle = dirPlayer
			x = OMineBossCabeca00.x+64
			y = OMineBossCabeca00.y+64
			// Atira periodicamente
			if (!alarm[1]) alarm[1] = 60;
	
	break;
	case "girando":
			sprite_index   = sMineBoss00
				image_xscale =  -1;

    // Incrementa o ângulo de órbita
    angle_offset += orbital_speed;
    angle_offset = angle_offset mod 360; // mantém o ângulo entre 0~359

    // Define o raio da órbita (distância ao redor do jogador)
    var raio = 100;

    var alvo_x = oPlayer.x + lengthdir_x(raio, angle_offset);
    var alvo_y = oPlayer.y + lengthdir_y(raio, angle_offset);

    // Move suavemente em direção à posição desejada
    var dir = point_direction(x, y, alvo_x, alvo_y);
    var dist = point_distance(x, y, alvo_x, alvo_y);

    var move_spd = clamp(dist, 0, spd); // se estiver longe do ponto orbital, move até lá
    vspd = lengthdir_y(move_spd, dir);
    hspd = lengthdir_x(move_spd, dir);

    move_and_collide(vspd, hspd, oBloco);

	break;
	default:
	
}

}

if(place_meeting(x,y,IDbalas)){
	life=life-5;
	if(oBala12)lanca += 1;
	instance_destroy(instance_place(x,y,IDbalas))
	audio_play_sound(sndDanoinimigo,2,0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	audio_play_sound(sndDanoinimigo,2,0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
}

if (life < 0) {
instance_destroy()	
}
