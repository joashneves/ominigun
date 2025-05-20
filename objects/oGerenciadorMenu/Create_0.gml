index = 0;
if (!variable_instance_exists(oDataSuperCarrie, "sprite_mouse")) {
    oDataSuperCarrie.sprite_mouse = sMouse;
}
if (!variable_instance_exists(oDataSuperCarrie, "TremorTela")) {
	oDataSuperCarrie.TremorTela = true
}
// Outras configs
if (!variable_instance_exists(oDataSuperCarrie, "Fullscreen")) {
oDataSuperCarrie.Fullscreen = true
}
screenfull = oDataSuperCarrie.Fullscreen;
window_set_fullscreen(screenfull);

// Idioma padrão se não existir
var_nao_existe(oDataSuperCarrie, "idioma", "EN");

// Dicionário de traduções
menu_traducao = {
    BR: ["Jogar", "Opções", "Créditos", "Sair"],
    EN: ["Play", "Options", "Credits", "Exit"],
    ES: ["Jugar", "Opciones", "Créditos", "Salir"]
};

// Lista de idiomas válidos, se quiser reutilizar
idiomas = ["BR", "EN", "ES"];

// Obtém idioma atual como string
var idioma = string(oDataSuperCarrie.idioma);

// Verifica se existe a tradução para esse idioma
if (!is_undefined(menu_traducao[$ idioma])) {
    opcoes = menu_traducao[$ idioma];
} else {
    opcoes = menu_traducao.BR; // Fallback para português
}

op_max =  array_length(opcoes);
