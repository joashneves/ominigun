/// @description Insert description here
// You can write your code in this editor
if(vuneravel){
	// Tamanho da barra
	var barra_largura = 600;
	var barra_altura = 12;

	// Posição centralizada
	var barra_x = (display_get_gui_width() - barra_largura) / 2;
	var barra_y = display_get_gui_height() - barra_altura - 30; // 30 pixels acima do rodapé

	// Proporção da vida
	var proporcao = life / lifeMax;

	// Fundo da barra
	draw_set_color(make_color_rgb(40, 40, 40));
	draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

	// Barra vermelha (vida)
	draw_set_color(c_red);
	draw_rectangle(barra_x, barra_y, barra_x + (barra_largura * proporcao), barra_y + barra_altura, false);

	// Contorno branco
	draw_set_color(c_white);
	draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, true);

	}