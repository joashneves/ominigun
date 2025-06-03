function scrMenuConfiguracoes(index) {
	switch (index) {
		case 0: // Jogabilidade
			instance_destroy();
			instance_create_depth(0,1,-10,oGerenciadorJogabilidade)
			break;
		case 1: // Volume
			instance_destroy();
			instance_create_depth(0,1,-10,oGerenciadorVolume)
			break;
		case 2: // Idioma
			if (index == 2) { // Idioma
				    var idx = array_index_of(idiomas, oDataSuperCarrie.idioma);
				    idx += index;
				    idx = (idx + array_length(idiomas)) mod array_length(idiomas);
				    oDataSuperCarrie.idioma = idiomas[idx];
				    // Atualiza idioma atual e reatribui opcoes
				    var idioma = oDataSuperCarrie.idioma;
				    if (!variable_struct_exists(menu_traducao, idioma)) {
				        idioma = "BR";
				    }
				    opcoes = menu_traducao[$ idioma];
				    op_max = array_length(opcoes);
				    }
			break;
		case 3: // Acessibilidade
			//global.acessibilidade_ativa = !global.acessibilidade_ativa;
			if(room == Menu){scrDeleteSave()};
			game_end()
			break;
		case 4: // Voltar
		scrSaveGame();
			instance_destroy();
			global.pause = false
			if(room == Menu) instance_create_depth(0,1,-10,oGerenciadorMenu);
			break;
		default:
			break;
	}
}
function scrMenuConfiguracoesJogabilidade(index) {
	switch (index) {
		case 0: // Tela cheia
		var fullscreen  = window_get_fullscreen()  ?  false  :  true;
		 oDataSuperCarrie.Fullscreen = fullscreen;
		 window_set_fullscreen(fullscreen)
		 show_debug_message("fullscreen : " + string(fullscreen))
			break;
		case 1: // Mouse


									if (window_get_fullscreen()) {
				oDataSuperCarrie.fundo_index--;
				if(oDataSuperCarrie.fundo_index < 0)
					oDataSuperCarrie.fundo_index = array_length(oDataSuperCarrie.fundos) - 1;
			}
			break;
		case 2:

			oDataSuperCarrie.cursor_index--;
			if(oDataSuperCarrie.cursor_index < 0)
				oDataSuperCarrie.cursor_index = array_length(oDataSuperCarrie.cursor_sprites) - 1;
				oDataSuperCarrie.sprite_mouse = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
				cursor_sprite = oDataSuperCarrie.sprite_mouse;
						
			
			break;
		case 3: // Tremor de tela
		var tremor  = oDataSuperCarrie.TremorTela  ?  false  :  true;
		 oDataSuperCarrie.TremorTela = tremor;
		 show_debug_message("Tremor : " + string(tremor))
			break;
		case 4: // Voltar
			instance_destroy();
			instance_create_depth(0,1,-10,oConfiguracoes)
			break;
		default:
			break;
	}
}
function scrMenuConfiguracoesVolume(index){
	switch(index){
				case 4: // Voltar
			instance_destroy();
			instance_create_depth(0,1,-10,oConfiguracoes)
			break;
		default:
			break;
			}
}