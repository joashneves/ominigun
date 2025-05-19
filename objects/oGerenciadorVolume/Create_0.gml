opcoes = ["Geral", "Tiros", "Musicas", "Ambiente", "Voltar"];
index = 0;

op_max = array_length(opcoes) ;

// Valores padrão (de 0.0 a 1.0)
var_nao_existe(oDataSuperCarrie, "vol_geral", 0.5);
var_nao_existe(oDataSuperCarrie, "vol_tiros", 1);
var_nao_existe(oDataSuperCarrie, "vol_musica", 1);
var_nao_existe(oDataSuperCarrie, "vol_ambiente", 1);
