/// @description Debug mode e a vida do personagem
var camera_x = view_wport;
var camera_y = view_hport;
draw_set_colour(c_white);

#region // Debug
		draw_set_font(fnt_ui);
		
if(debug_mode){
    draw_set_font(fnt_ui);
    var y_base = 64;
    var y_step = 20;

    draw_text(32, y_base + y_step * 0, "Recarga: " + string(recarga));
    draw_text(32, y_base + y_step * 1, "Recarga Total: " + string(recargaTotal));
    draw_text(32, y_base + y_step * 2, "Tiros Inimigo: " + string(instance_number(oBalaInimigo)));
    draw_text(32, y_base + y_step * 3, "Moedas: " + string(moeda));
    draw_text(32, y_base + y_step * 4, "Level: " + string(global.dificuldade));
    draw_text(32, y_base + y_step * 5, "Boss Morto: " + string(BossMorto));
    draw_text(1052, 64, "Rage: " + string(rage));
    draw_text(12, 480, "Mouse: " + string(global.dir));
}

draw_text(700,48, "Fps : " + string(fps));


var tempo_ms = tempo_de_jogo * (1000 / room_speed);

var segundos = floor((tempo_ms div 1000) mod 60);
var minutos  = floor((tempo_ms div 60000) mod 60);
var horas    = floor((tempo_ms div 3600000));

var tempo_str = string_format(horas, 2, 0) + ":" + string_format(minutos, 2, 0) + ":" + string_format(segundos, 2, 0);
draw_text(700, 94, "Tempo: " + tempo_str);

#endregion

// Arma HUD
//draw_sprite(aparencia,0,64,64)
if(!fim_de_jogo and !player_morto){
    if(aparencia != sArma00){
        draw_text(64, 78, "Munição: " + string(municao));
    }

    // Mostrar sprites das armas
    for (var i = ds_list_size(listaSprites) - 1; i >= 0; i--) {
        draw_sprite(listaSprites[| i], 0, -12, 64 + ((ds_list_size(listaSprites) - i) * 16));
    }

		var moeda_x = 40 * 5 + 16;
		var moeda_y = 39;

		// Usa o tamanho fixo da sprite (não afetado por image_xscale)
		var moeda_w = sprite_get_width(sMoeda);
		var moeda_h = sprite_get_height(sMoeda);

		// Ajusta para origem no canto superior esquerdo
		moeda_x -= moeda_w / 2;
		moeda_y -= moeda_h / 2;

		// Desenha sprite da moeda
		draw_sprite(sMoeda, 0, moeda_x, moeda_y);

		// Desenha texto da quantidade ao lado
		draw_text(moeda_x + moeda_w + 2, moeda_y + 2, string(moeda) + "X");

    // Vida
    for(var i = 0; i < vida; i++){
        draw_sprite(sVida, 0, i * 32, 0);
    }

    // Pontuação
    draw_text(600, 32, "Pontuação: " + string(score));

    // Rage bar
    var barraDeRage = (rage / rageMax) * 100;
    draw_healthbar(780, 100, 790, 500, barraDeRage, c_black, c_blue, c_red, 3, false, true);

}else if(fim_de_jogo){
	draw_text(300,300, "Voce Conseguiu : " + string(score) + " Pontos");
	draw_text(300,200, "O jogo Acaba por enquanto... Obrigado por jogar");	
}
if(player_morto){
	draw_set_colour(c_black);
	draw_rectangle(0,0,camera_x,camera_y,false);
	draw_sprite(sprite_index, image_index,camera_x/2,camera_y/2);
}
if(levou_dano){
	draw_set_colour(#1c1c1c);
	draw_rectangle(0,0,camera_x,camera_y,false);
	levou_dano = false;
}

// wave
if(instance_exists(geradorDeWave)){
    draw_text(600, 61, "Wave: " + string(geradorDeWave.wave));
    draw_text(600, 73, "Inimigos: " + string(instance_number(IDenemy)));
}

