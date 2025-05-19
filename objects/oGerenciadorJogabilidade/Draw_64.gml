var camera_x = display_get_gui_width();
var camera_y = display_get_gui_height();
global.pause = true;
// Deixa a tela escura com transparência
draw_set_alpha(0.5); // Valor entre 0 (invisível) e 1 (opaco)
draw_set_colour(c_black);
draw_rectangle(0, 0, camera_x, camera_y, false);
draw_set_alpha(1); // Resetar o alpha para evitar interferência nos próximos desenhos


draw_set_font(fnt_menu);
// Desenha as opçoes!
var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = 64;
var y1 = gui_altura / 2;

var idioma = string(oDataSuperCarrie.idioma);
var t = traducao_geral[$ idioma];
// Segurança: fallback se não achar
if (is_undefined(t)) {
    t = traducao_geral.BR;
}

for (var i = 0; i < op_max; i++) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	var pos_y = y1 + (dist * i);
	
	// Seleção visual
	if (index == i) {
		draw_set_color(c_aqua);
	} else {
		draw_set_color(c_white);
	}
	
	var texto = opcoes[i];
	var tremo = oDataSuperCarrie.TremorTela ? t.ativado : t.desativado;

	// Adiciona valores ao lado do texto
	switch(i){
    case 0:
        if (window_get_fullscreen()) {
            var spr = oDataSuperCarrie.fundos[oDataSuperCarrie.fundo_index];
            texto += " (" + t.sim + ") < " + t.fundo + ": " + sprite_get_name(spr) + " >";
        } else {
            texto += " (" + t.nao + ")";
        }
        break;
    case 1:
        var spr_cursor = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
        texto += " < " + t.cursor + ": " + sprite_get_name(spr_cursor) + " >";
        break;
    case 2:
        texto += " (" + (oDataSuperCarrie.TremorTela ? t.ativado : t.desativado) + ")";
        break;
}

	draw_text(x1, pos_y, texto);
}
