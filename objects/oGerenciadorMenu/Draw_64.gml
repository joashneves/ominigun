draw_set_font(fnt_menu);

draw_set_color(c_white);
draw_text(32, display_get_gui_height() - 32, "versão Alpha 3.3.0.0");

var dist = 55; // espaçamento entre as opções
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = 64;   // margem da esquerda
var y1 = gui_altura / 2;
// mouse
var m_x = device_mouse_x_to_gui(0)
var m_y = device_mouse_y_to_gui(0)

for (var i = 0; i < op_max; i++) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	var pos_y = y1 + (dist * i);
	// tamanho do texto
	var string_w = string_width(opcoes[i])
	var string_h = string_height(opcoes[i])
	
	if(point_in_rectangle(m_x, m_y, x1 - string_w / 2, pos_y - string_h  / 2,  x1 + string_w / 2, pos_y + string_h /2)){
		index = i;
		if(mouse_check_button_pressed(mb_left)) scrMenuSelecionar(index);
				//draw_set_color(c_aqua);
	}else{
				draw_set_color(c_white);
	};
	
	if (index == i) {
		//draw_set_color(c_aqua);
		// Desenhar sArma ao lado do item selecionado
		var sprite_offset_x = 16; // distância do texto para a sprite
		draw_sprite_ext( s_MenuSelecao,0, x1 - sprite_offset_x, pos_y, 4,4,0,c_white,1);
	} else {
		draw_set_color(c_white);	
	}
	
	draw_text(x1, pos_y, opcoes[i]);
}

draw_set_font(-1);
