/// @description Debug mode e a vida do personagem
var camera_x = view_wport;
var camera_y = view_hport;
draw_set_colour(c_white);

var idioma = string(oDataSuperCarrie.idioma);
var t = traducao_geral[$ idioma];

// Segurança: fallback se não achar
if (is_undefined(t)) {
    t = traducao_geral.BR;
}

#region // Debug
		draw_set_font(fnt_hud);
		
if(debug_mode){
    draw_set_font(fnt_hud);
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

#endregion

// Arma HUD
//draw_sprite(aparencia,0,64,64)
if (!fim_de_jogo && !player_morto) {

    // === VIDA ===
    var vida_base_x = 32;
    var vida_base_y = 32;

    for (var i = 0; i < vida; i++) {
        draw_sprite(sVida, 0, vida_base_x + i * 32, vida_base_y);
    }

    // === RAGE (% ao lado da vida) ===
    var rage_percent = clamp((rage / rageMax) * 100, 0, 100);
    draw_text(vida_base_x + vida * 32 + 10, vida_base_y + 4, string_format(rage_percent, 0, 0) + "% Rage");

    // === MOEDA (abaixo da vida) ===
    var moeda_x = vida_base_x;
    var moeda_y = vida_base_y + 40;

    draw_sprite_ext(sMoeda, 0, moeda_x, moeda_y, 2, 2, 0, c_white, 1);
    draw_text(moeda_x + 40, moeda_y + 4, string(moeda) + "X");

    // === LISTA DE ARMAS (abaixo da moeda) ===
    var armas_y_base = moeda_y + 48;
    var total = ds_list_size(listaSprites);
    var start = max(0, total - 4);

    for (var i = total - 1; i >= start; i--) {
        var idy = total - i - 1;
        draw_sprite_ext(listaSprites[| i], 0, vida_base_x  , armas_y_base + idy * 40,0.5,0.5,1,c_white,1);
    }

    // === MUNIÇÃO (se aplicável) ===
    if (aparencia != sArma00) {
        draw_text(vida_base_x + 46, armas_y_base - 12,  string(municao));
    }

    // === PONTUAÇÃO ===
    draw_text(600, 32, t.pontuacao + " : " + string(score));
	// === FPS E TEMPO === 
	var tempo_ms = tempo_de_jogo * (1000 / room_speed);

	var minutos = floor(tempo_ms div 60000);
	var segundos = floor((tempo_ms div 1000) mod 60);
	var milissegundos = tempo_ms mod 1000;
	draw_text(600,48, "Fps : " + string(fps));
	var tempo_str = string_format(minutos, 2, 0) + ":" +
			        string_format(segundos, 2, 0) + ":" +
			        string_format(milissegundos, 2, 0);

	draw_text(600, 64, t.tempo + " " + tempo_str);
	
	// === CARTAS (na GUI) ===
	var base_x = 64;
	var base_y = 64;
	var espaco_y = 16; // espaçamento entre cartas
	var escala = 0.05;

	// Nomes e listas
	var categorias = ["Dano", "Tiro", "Tempo", "Recurso"];
	var listas = [
	    global.buffsAtivosDano,
	    global.buffsAtivosTiro,
	    global.buffsAtivosTempo,
	    global.buffsAtivosRecurso
	];
	// Loop por categorias (colunas)
	for (var col = 0; col < array_length(categorias); col++) {
	    var lista = listas[col];
	    var _x = base_x + col * 48; // distância entre colunas
	    // Loop por cartas da lista
	    for (var i = 0; i < ds_list_size(lista); i++) {
	        var carta_nome = lista[| i]; // por ex: "fogo", "gelo"
	        var sprite = ds_map_find_value(global.cartasSprites, carta_nome);
			show_debug_message(sprite)
	        if (sprite != -1) {
	            draw_sprite_ext(
	                sprite,
					0,
	                _x,
	                base_y + i * espaco_y,
	                escala, escala, 0,
	                c_white, 1
	            );
	        }
	    }
	}
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

