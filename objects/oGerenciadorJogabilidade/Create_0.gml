opcoes = ["Tela cheia", "Mouse", "Tremor de tela", "Voltar"];

index = 0;

op_max = array_length(opcoes) ;

// Garante que o objeto exista
if (!instance_exists(oDataSuperCarrie)) {
    instance_create_layer(0, 0, "Instances", oDataSuperCarrie);
}

// Define valores padrão apenas se não existirem
var_nao_existe(oDataSuperCarrie, "fundo_index", 0);
var_nao_existe(oDataSuperCarrie, "cursor_index", 0);
var_nao_existe(oDataSuperCarrie, "TremorTela", true);
var_nao_existe(oDataSuperCarrie, "fundos", [sFundoCamera, sCutCene, sMenuBackgroun]);
var_nao_existe(oDataSuperCarrie, "cursor_sprites", [sMouse, sMouseFinal]);

// Garante que o cursor padrão seja definido
var_nao_existe(oDataSuperCarrie, "sprite_mouse", sMouse);
cursor_sprite = oDataSuperCarrie.sprite_mouse;