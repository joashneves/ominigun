

// Define valores padrão apenas se não existirem
var_nao_existe(oDataSuperCarrie, "idioma", "EN");
var_nao_existe(oDataSuperCarrie, "fundo_index", 0);
var_nao_existe(oDataSuperCarrie, "cursor_index", 0);
var_nao_existe(oDataSuperCarrie, "TremorTela", true);
var_nao_existe(oDataSuperCarrie, "fundos", [sFundoCamera, sCutCene, sMenuBackgroun]);
var_nao_existe(oDataSuperCarrie, "cursor_sprites", [sMouse, sMouseFinal]);


if (file_exists("save.sav")) {
    ini_open("save.sav");

    // CONFIGURAÇÕES
    oDataSuperCarrie.Fullscreen     = ini_read_real("configs", "fullscreen", true);
    oDataSuperCarrie.fundo_index    = ini_read_real("configs", "fundo_index", 0);
    oDataSuperCarrie.TremorTela     = ini_read_real("configs", "tremor_tela", true);
    oDataSuperCarrie.idioma         = ini_read_string("configs", "idioma", "BR");
    oDataSuperCarrie.cursor_index   = ini_read_real("configs", "cursor_index", 0);
   // oDataSuperCarrie.cursor_index   = ini_read_real("configs", "sprite_mouse", sMouse);

    // Reatribui o sprite do cursor com base no índice salvo
    oDataSuperCarrie.sprite_mouse = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
    cursor_sprite = oDataSuperCarrie.sprite_mouse;

    // VOLUMES
    oDataSuperCarrie.vol_geral     = ini_read_real("audio", "vol_geral", 0.5);
    oDataSuperCarrie.vol_tiros     = ini_read_real("audio", "vol_tiros", 1);
    oDataSuperCarrie.vol_musica    = ini_read_real("audio", "vol_musica", 1);
    oDataSuperCarrie.vol_ambiente  = ini_read_real("audio", "vol_ambiente", 1);

    // PROGRESSO
    oDataSuperCarrie.mortes_player     = ini_read_real("progresso", "mortes", 0);
    oDataSuperCarrie.niveis_terminado  = ini_read_real("progresso", "niveis", 0);
    oDataSuperCarrie.maximo_pontos     = ini_read_real("progresso", "pontos", 0);

    ini_close();
}


if (room == Menu){
instance_create_depth(0,0,-10, oGerenciadorMenu)
}
// Debug log para acompanhar carregamento

show_debug_message("=== Dados do Jogo Carregados ===");
show_debug_message("Idioma: " + string(oDataSuperCarrie.idioma));
show_debug_message("Fundo Index: " + string(oDataSuperCarrie.fundo_index));
show_debug_message("Cursor Index: " + string(oDataSuperCarrie.cursor_index));
show_debug_message("Tremor Tela: " + string(oDataSuperCarrie.TremorTela));
show_debug_message("Volume Geral: " + string(oDataSuperCarrie.vol_geral));
show_debug_message("Volume Música: " + string(oDataSuperCarrie.vol_musica));
show_debug_message("Mortes: " + string(oDataSuperCarrie.mortes_player));
show_debug_message("Níveis Concluídos: " + string(oDataSuperCarrie.niveis_terminado));