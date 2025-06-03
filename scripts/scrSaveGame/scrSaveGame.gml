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
ini_write_real("progresso", "run_terminadas", oDataSuperCarrie.run_terminadas);

// Estatisticas
ini_write_real("estatisticas", "bosses_mortos00", oDataSuperCarrie.bosses_mortos00);
ini_write_real("estatisticas", "bosses_mortos01", oDataSuperCarrie.bosses_mortos01);
ini_write_real("estatisticas", "bosses_mortos02", oDataSuperCarrie.bosses_mortos02);
ini_write_real("estatisticas", "bosses_mortos03", oDataSuperCarrie.bosses_mortos03);
ini_write_real("estatisticas", "moedas_usadas", oDataSuperCarrie.moedas_usadas);

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
	oDataSuperCarrie.run_terminadas =  ini_read_real("progresso", "run_terminadas", 0);
	
	// Estatisticas
	oDataSuperCarrie.bosses_mortos00 =  ini_read_real("estatisticas", "bosses_mortos00", 0);
	oDataSuperCarrie.bosses_mortos01 =  ini_read_real("estatisticas", "bosses_mortos01", 0);
	oDataSuperCarrie.bosses_mortos02 =  ini_read_real("estatisticas", "bosses_mortos02", 0);
	oDataSuperCarrie.bosses_mortos03 =  ini_read_real("estatisticas", "bosses_mortos03", 0);
	oDataSuperCarrie.moedas_usadas =  ini_read_real("estatisticas", "moedas_usadas", 0);
						
    ini_close();
}	
	
}

function scrDeleteSave() {
    var save_path = "save.sav";
    
    if (file_exists(save_path)) {
        file_delete("save.sav");
        show_debug_message("Arquivo de save apagado com sucesso : " + string(save_path));
    } else {
        show_debug_message("Nenhum save encontrado para apagar.");
    }
}