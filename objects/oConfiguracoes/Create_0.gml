index = 0;

// Lista de idiomas disponíveis
idiomas = ["BR", "EN", "ES"];

// Idioma padrão se não existir
var_nao_existe(oDataSuperCarrie, "idioma", "BR");

// Dicionário de traduções (como struct)
menu_traducao = {
    BR : ["Jogabilidade", "Volume", "Idioma", "Sair", "Voltar"],
    EN: ["Gameplay", "Volume", "Language", "Exit", "Back"],
    ES: ["Jugabilidad", "Volumen", "Idioma", "Salir", "Volver"]
};

// Acesso seguro sem usar string()
var idioma = string(oDataSuperCarrie.idioma);
//show_message(string(oDataSuperCarrie.idioma))
if (!variable_struct_exists(menu_traducao, idioma)) {
    idioma = "BR";
}

// Define opcoes e op_max corretamente
opcoes = menu_traducao[$ idioma];
op_max = array_length(menu_traducao[$idioma]);
