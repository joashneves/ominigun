index = 0;

// Idioma padrão se não existir
var_nao_existe(oDataSuperCarrie, "idioma", "EN");

// Dicionário de traduções
menu_traducao = {
    BR: ["Tentar novamente", "Menu", "Sair"],
    EN: ["Retry", "Menu", "Exit"],
    ES: ["Reintentar", "Menú", "Salir"]
};
titulo_traducao = {
    BR: "Fim de Jogo",
    EN: "Game Over",
    ES: "Fin del Juego"
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
