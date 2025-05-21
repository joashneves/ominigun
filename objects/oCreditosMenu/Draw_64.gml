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
