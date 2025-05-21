var camera_x = display_get_gui_width();
var camera_y = display_get_gui_height();
// Deixa a tela escura com transparência
draw_set_alpha(1); // Valor entre 0 (invisível) e 1 (opaco)
draw_set_colour(c_black);
draw_rectangle(0, 0, camera_x, camera_y, false);
draw_set_alpha(1); // Resetar o alpha para evitar interferência nos próximos desenhos


draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var tela_largura = display_get_gui_width();
var pos_x = tela_largura / 2;

for (var i = 0; i < array_length(creditos); i++) {
    var pos_y = y_credito + (i * espaco_linhas);
    draw_text(pos_x, pos_y, creditos[i]);
}
