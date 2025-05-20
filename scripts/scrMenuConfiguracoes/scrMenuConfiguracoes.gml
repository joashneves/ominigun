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
			//global.idioma = (global.idioma + 1) mod array_length(global.idiomas);
			break;
		case 3: // Acessibilidade
			//global.acessibilidade_ativa = !global.acessibilidade_ativa;
			break;
		case 4: // Voltar
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
			// pass
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