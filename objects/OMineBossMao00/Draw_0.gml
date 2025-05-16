
if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");

draw_set_font(fnt_ui);
draw_text(x + 32, y+24,"Estado : " + string(estado));
}

// Aplica o efeito de impacto
if (dano_timer > 0) {
    dano_timer--;
    
    // Deixa vermelho
    image_blend = c_red;

    // Efeito de recuo / shake
    shake_offset_x = random_range(-2, 2);
    shake_offset_y = random_range(-2, 2);
} else {
    image_blend = c_white;
    shake_offset_x = 0;
    shake_offset_y = 0;
}

// Desenha com o deslocamento
draw_sprite_ext(sprite_index, image_index, x + shake_offset_x, y + shake_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

