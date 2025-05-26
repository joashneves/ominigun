var camera_x = display_get_gui_width();
var camera_y = display_get_gui_height();

// Deixa a tela escura com transparência
draw_set_alpha(0.5); // Valor entre 0 (invisível) e 1 (opaco)
draw_set_colour(c_black);
draw_rectangle(0, 0, camera_x, camera_y, false);
draw_set_alpha(1); // Resetar o alpha para evitar interferência nos próximos desenhos

draw_set_font(fnt_menu);
draw_set_color(c_white);
		
var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = 64;
var y1 = gui_altura / 2;

// mouse
var m_x = device_mouse_x_to_gui(0)
var m_y = device_mouse_y_to_gui(0)


for (var i = 0; i < op_max; i++) {
    var pos_y = y1 + (dist * i);
    var string_w = string_width(opcoes[i]);
    var string_h = string_height(opcoes[i]);

    var rect_left   = x1 - string_w / 2;
    var rect_right  = x1 + string_w / 2;
    var rect_top    = pos_y - string_h / 2;
    var rect_bottom = pos_y + string_h / 2;

    var mouse_over = point_in_rectangle(m_x, m_y, rect_left, rect_top, rect_right, rect_bottom);

	if (index == i) {
		// Desenhar sArma ao la do item selecionado
			var sprite_offset_x = 16; // distância do texto para a sprite
		draw_sprite_ext( s_MenuSelecao,0, x1 - sprite_offset_x, pos_y, 4,4,0,c_white,1);
	} else {
		draw_set_color(c_white);	
	}
    if (mouse_over) {
        index = i;

        if (mouse_check_button_pressed(mb_left)) {
            scrMenuConfiguracoesVolume(index);
        }

        // Checa clique do mouse nas extremidades esquerda e direita para mudar volume
 
				// Clique na parte esquerda ou botão direito -> diminuir
				if (mouse_check_button_pressed(mb_left)) {
				    switch(index) {
				        case 0: oDataSuperCarrie.vol_geral    = max(0, oDataSuperCarrie.vol_geral - 0.1); break;
				        case 1: oDataSuperCarrie.vol_tiros    = max(0, oDataSuperCarrie.vol_tiros - 0.1); break;
				        case 2: oDataSuperCarrie.vol_musica   = max(0, oDataSuperCarrie.vol_musica - 0.1); break;
				        case 3: oDataSuperCarrie.vol_ambiente = max(0, oDataSuperCarrie.vol_ambiente - 0.1); break;
				    }
				}

				// Clique na parte direita -> aumentar
				if ( mouse_check_button_pressed(mb_right)) {
				    switch(index) {
				        case 0: oDataSuperCarrie.vol_geral    = min(1, oDataSuperCarrie.vol_geral + 0.1); break;
				        case 1: oDataSuperCarrie.vol_tiros    = min(1, oDataSuperCarrie.vol_tiros + 0.1); break;
				        case 2: oDataSuperCarrie.vol_musica   = min(1, oDataSuperCarrie.vol_musica + 0.1); break;
				        case 3: oDataSuperCarrie.vol_ambiente = min(1, oDataSuperCarrie.vol_ambiente + 0.1); break;
				    }
				}
    } else {
        draw_set_color(c_white);
    }

    // Texto com valor
    var texto = opcoes[i];
    switch(i) {
        case 0: texto += ": " + string(floor(oDataSuperCarrie.vol_geral * 100)) + "%"; break;
        case 1: texto += ": " + string(floor(oDataSuperCarrie.vol_tiros * 100)) + "%"; break;
        case 2: texto += ": " + string(floor(oDataSuperCarrie.vol_musica * 100)) + "%"; break;
        case 3: texto += ": " + string(floor(oDataSuperCarrie.vol_ambiente * 100)) + "%"; break;
    }

    draw_text(x1, pos_y, texto); 
}

