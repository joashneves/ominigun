if (debug_mode) {
    var y_base = 32;
    var x_base = 32;

    draw_set_font(fnt_menu);
    draw_set_color(c_white);

    draw_text(x_base, y_base, "=== DEBUG MUSICA ===");

    if (audio_is_playing(musica_calma)) {
        draw_text(x_base, y_base + 24, "Musica Calma: Ativa");
        draw_text(x_base, y_base + 44, "Volume: " + string(audio_get_type(musica_calma)));
        draw_text(x_base, y_base + 64, "Tempo: " + string(audio_get_type(musica_calma)));
    } else {
        draw_text(x_base, y_base + 24, "Musica Calma: Inativa");
    }

    if (audio_is_playing(musica_ativa)) {
        draw_text(x_base, y_base + 94, "Musica Ativa: Ativa");
        draw_text(x_base, y_base + 114, "Volume: " + string(audio_get_type(musica_ativa)));
        draw_text(x_base, y_base + 134, "Tempo: " + string(audio_get_type(musica_ativa)));
    } else {
        draw_text(x_base, y_base + 94, "Musica Ativa: Inativa");
    }
}
