ini_open("save.sav");

// CONFIGS
ini_write_real("configs", "fullscreen", oDataSuperCarrie.Fullscreen);
ini_write_real("configs", "fundo_index", oDataSuperCarrie.fundo_index);
ini_write_real("configs", "tremor_tela", oDataSuperCarrie.TremorTela);
ini_write_string("configs", "idioma", string(oDataSuperCarrie.idioma));
ini_write_real("configs", "cursor_index", oDataSuperCarrie.cursor_index);
ini_write_real("configs", "sprite_mouse", oDataSuperCarrie.sprite_mouse);

// ÁUDIO
ini_write_real("audio", "vol_geral", oDataSuperCarrie.vol_geral);
ini_write_real("audio", "vol_tiros", oDataSuperCarrie.vol_tiros);
ini_write_real("audio", "vol_musica", oDataSuperCarrie.vol_musica);
ini_write_real("audio", "vol_ambiente", oDataSuperCarrie.vol_ambiente);

// PROGRESSO
ini_write_real("progresso", "mortes", oDataSuperCarrie.mortes_player);
//ini_write_real("progresso", "niveis", oDataSuperCarrie.niveis_terminado);
//ini_write_real("progresso", "pontos", oDataSuperCarrie.maximo_pontos);
ini_write_real("progresso", "run_terminadas", oDataSuperCarrie.run_terminadas);

ini_close();
