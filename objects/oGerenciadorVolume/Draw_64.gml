var camera_x = display_get_gui_width();
var camera_y = display_get_gui_height();

// Deixa a tela escura com transparência
draw_set_alpha(0.5); // Valor entre 0 (invisível) e 1 (opaco)
draw_set_colour(c_black);
draw_rectangle(0, 0, camera_x, camera_y, false);
draw_set_alpha(1); // Resetar o alpha para evitar interferência nos próximos desenhos

draw_set_font(fnt_menu);

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = 64;
var y1 = gui_altura / 2;

for (var i = 0; i < op_max; i++) {
	draw_set_color(index == i ? c_aqua : c_white);
	
	var pos_y = y1 + (dist * i);
	var texto = opcoes[i];
	switch(i) {
		case 0: texto += ": " + string(floor(oDataSuperCarrie.vol_geral * 100)) + "%"; break;
		case 1: texto += ": " + string(floor(oDataSuperCarrie.vol_tiros * 100)) + "%"; break;
		case 2: texto += ": " + string(floor(oDataSuperCarrie.vol_musica * 100)) + "%"; break;
		case 3: texto += ": " + string(floor(oDataSuperCarrie.vol_ambiente * 100)) + "%"; break;
	}

	draw_text(x1, pos_y, texto); 
}
