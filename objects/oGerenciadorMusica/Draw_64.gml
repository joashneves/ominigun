if(debug_mode){
    var y_base = 32;
    var x_base = -104;

    draw_set_font(fnt_menu);
    draw_set_color(c_white);

    draw_text(x_base, y_base, "=== DEBUG MUSICA ===");
    draw_text(x_base, y_base + 44, "Quantidade: " + string(instance_number(oGerenciadorMusica)));

}

