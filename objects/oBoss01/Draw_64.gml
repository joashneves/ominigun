/// @description Insert description here
// You can write your code in this editor
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if(vuneravel or point_in_rectangle(x,y,vx,vy,vx+vw,vy+vh)){
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
	
if(!vuneravel){
	// Distância entre inimigo e o jogador
	var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

	// Distância mínima para opacidade máxima e máxima para opacidade mínima
	var dist_max = 800;
	var dist_min = 150;

	// Mapeia a distância para opacidade (0 = longe, 0.6 = muito perto)
	var alpha = clamp(1 - ((dist - dist_min) / (dist_max - dist_min)), 0, 0.6);

	// Desenha retângulo escuro sobre a tela
	if (alpha > 0) {
		draw_set_alpha(alpha);
		draw_set_color(c_black);
		draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
		draw_set_alpha(1); // Resetar alpha após o uso
	}
}
