function scrSaveGame(){
ini_open("save.sav");

// CONFIGURAÇÕES
ini_write_real("configs", "fullscreen", oDataSuperCarrie.Fullscreen);
ini_write_real("configs", "fundo_index", oDataSuperCarrie.fundo_index);
ini_write_real("configs", "tremor_tela", oDataSuperCarrie.TremorTela);
ini_write_string("configs", "idioma", string(oDataSuperCarrie.idioma));
ini_write_real("configs", "cursor_index", oDataSuperCarrie.cursor_index);

// ÁUDIO
ini_write_real("audio", "vol_geral", oDataSuperCarrie.vol_geral);
ini_write_real("audio", "vol_tiros", oDataSuperCarrie.vol_tiros);
ini_write_real("audio", "vol_musica", oDataSuperCarrie.vol_musica);
ini_write_real("audio", "vol_ambiente", oDataSuperCarrie.vol_ambiente);

// PROGRESSO
ini_write_real("progresso", "mortes", oDataSuperCarrie.mortes_player);
ini_write_real("progresso", "niveis", oDataSuperCarrie.niveis_terminado);
ini_write_real("progresso", "pontos", oDataSuperCarrie.maximo_pontos);

ini_close();
}
function scrLoadGame(){

if (file_exists("save.sav")) {
    ini_open("save.sav");

    // CONFIGURAÇÕES
    oDataSuperCarrie.Fullscreen     = ini_read_real("configs", "fullscreen", true);
    oDataSuperCarrie.fundo_index    = ini_read_real("configs", "fundo_index", 0);
    oDataSuperCarrie.TremorTela     = ini_read_real("configs", "tremor_tela", true);
    oDataSuperCarrie.idioma         = ini_read_string("configs", "idioma", "BR");
    oDataSuperCarrie.cursor_index   = ini_read_real("configs", "cursor_index", 0);

    // Aplica o sprite do cursor com base no índice
    oDataSuperCarrie.sprite_mouse = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
    cursor_sprite = oDataSuperCarrie.sprite_mouse;

    // ÁUDIO
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
	
}