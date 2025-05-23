// Create do oGameManager
randomize();

// Cria o objeto de dados, se não existir
if (!instance_exists(oDataSuperCarrie)) {
    instance_create_layer(0, 0, "Instances", oDataSuperCarrie);
}

// Define valores padrão apenas se não existirem
var_nao_existe(oDataSuperCarrie, "idioma", "BR");
var_nao_existe(oDataSuperCarrie, "fundo_index", 0);
var_nao_existe(oDataSuperCarrie, "cursor_index", 0);
var_nao_existe(oDataSuperCarrie, "TremorTela", true);
var_nao_existe(oDataSuperCarrie, "fundos", [sFundoCamera, sCutCene, sMenuBackgroun]);
var_nao_existe(oDataSuperCarrie, "mortes_player", 0);
var_nao_existe(oDataSuperCarrie, "niveis_terminado", 0);
var_nao_existe(oDataSuperCarrie, "maximo_pontos", 0);
var_nao_existe(oDataSuperCarrie, "vol_geral", 0.5);
var_nao_existe(oDataSuperCarrie, "vol_tiros", 1);
var_nao_existe(oDataSuperCarrie, "vol_musica", 1);
var_nao_existe(oDataSuperCarrie, "vol_ambiente", 1);


