// DRAW GUI EVENT (no oUI ou no objeto que desenha a interface)
if (global.buff_hover) {
    draw_set_font(fnt_ui);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_color(c_white);

    var texto = global.buff_text;
    var centro_x = display_get_gui_width() / 2;
    var pos_y = display_get_gui_height() - 80;

    draw_text(centro_x, pos_y, texto);
}
