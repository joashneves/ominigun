index = 0;

// Idioma padrão
var_nao_existe(oDataSuperCarrie, "idioma", "BR");

// Dicionário de traduções
menu_traducao = {
    BR: ["Geral", "Tiros", "Músicas", "Ambiente", "Voltar"],
    EN: ["Master", "Shots", "Music", "Ambient", "Back"],
    ES: ["General", "Disparos", "Música", "Ambiente", "Volver"]
};

// Define opcoes com base no idioma atual
var idioma = string(oDataSuperCarrie.idioma);
if (!is_undefined(menu_traducao[$ idioma])) {
    opcoes = menu_traducao[$ idioma];
} else {
    opcoes = menu_traducao.BR; // Fallback
}

op_max = array_length(opcoes);

// Valores padrão (de 0.0 a 1.0)
var_nao_existe(oDataSuperCarrie, "vol_geral", 0.5);
var_nao_existe(oDataSuperCarrie, "vol_tiros", 1);
var_nao_existe(oDataSuperCarrie, "vol_musica", 1);
var_nao_existe(oDataSuperCarrie, "vol_ambiente", 1);
