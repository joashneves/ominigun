
// Define valores padrão apenas se não existirem
var_nao_existe(oDataSuperCarrie, "Fullscreen", true);
var_nao_existe(oDataSuperCarrie, "idioma", "EN");
var_nao_existe(oDataSuperCarrie, "fundo_index", 0);
var_nao_existe(oDataSuperCarrie, "cursor_index", 0);
var_nao_existe(oDataSuperCarrie, "TremorTela", true);
var_nao_existe(oDataSuperCarrie, "fundos", [sFundoCamera, sCutCene, sMenuBackgroun]);
var_nao_existe(oDataSuperCarrie, "cursor_sprites", [sMouse, sMouseFinal]);
var_nao_existe(oDataSuperCarrie, "run_terminadas", 0);
var_nao_existe(oDataSuperCarrie, "mortes_player", 0);
var_nao_existe(oDataSuperCarrie, "bosses_mortos00", 0);
var_nao_existe(oDataSuperCarrie, "bosses_mortos01", 0);
var_nao_existe(oDataSuperCarrie, "bosses_mortos02", 0);
var_nao_existe(oDataSuperCarrie, "bosses_mortos03", 0);
var_nao_existe(oDataSuperCarrie, "moedas_usadas", 0);

if (file_exists("save.sav")) {
    scrLoadGame()
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
show_debug_message("Níveis Concluídos: " + string(oDataSuperCarrie.run_terminadas));
show_debug_message("Moedas: " + string(oDataSuperCarrie.moedas_usadas));

show_debug_message("Boss morto : " + string(oDataSuperCarrie.bosses_mortos02));