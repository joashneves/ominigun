opcoes = ["Tela cheia", "Mouse", "Tremor de tela", "Voltar"];

index = 0;

op_max = array_length(opcoes) ;

// oConfiguracoes - Create
oDataSuperCarrie.vol_musica = 0.8;
oDataSuperCarrie.vol_ambiente = 0.6;
oDataSuperCarrie.idioma = "PT";

// Listas de sprites
oDataSuperCarrie.fundos = [sFundoCamera, sCutCene, sMenuBackgroun];
oDataSuperCarrie.cursor_sprites = [sMouse, sMouseFinal];

// Índices atuais
oDataSuperCarrie.fundo_index = 0;
oDataSuperCarrie.cursor_index = 0;
oDataSuperCarrie.TremorTela = true