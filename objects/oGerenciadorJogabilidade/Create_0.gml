index = 0;
scrTraducao()
// Garante que o objeto exista
if (!instance_exists(oDataSuperCarrie)) {
    instance_create_layer(0, 0, "Instances", oDataSuperCarrie);
}

// Define valores padrão apenas se não existirem
var_nao_existe(oDataSuperCarrie, "idioma", "BR");
var_nao_existe(oDataSuperCarrie, "fundo_index", 0);
var_nao_existe(oDataSuperCarrie, "cursor_index", 0);
var_nao_existe(oDataSuperCarrie, "TremorTela", true);
var_nao_existe(oDataSuperCarrie, "fundos", [sFundoCamera, sCutCene, sMenuBackgroun]);
var_nao_existe(oDataSuperCarrie, "cursor_sprites", [sMouse, sMouseFinal]);

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
