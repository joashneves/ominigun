index = 0;
scrTraducao()

// Define o sprite atual
cursor_sprite = oDataSuperCarrie.sprite_mouse;

// Dicionário de traduções para esse menu
menu_traducao = {
    BR: ["Tela cheia", "Fundo" ,"Mouse", "Tremor de tela", "Voltar"],
    EN: ["Fullscreen", "Background","Mouse", "Screen Shake", "Back"],
    ES: ["Pantalla completa","Fondo" ,"Ratón", "Temblor de pantalla", "Volver"]
};

// Atribui opções com base no idioma
var idioma = string(oDataSuperCarrie.idioma);

if (!is_undefined(menu_traducao[$ idioma])) {
    opcoes = menu_traducao[$ idioma];
} else {
    opcoes = menu_traducao.BR; // Fallback
}

op_max = array_length(opcoes);
