up_press = keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
down_press = keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(0, gp_padd);
enter = keyboard_check_pressed(ord("E"))||keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0, gp_face1);
var idiomas = ["PT", "EN", "ES"];

if (up_press){
	index --;
}else if (down_press){
	index++	;
}
if(index > op_max -1){
	index = 0;
}
if(index < 0 ){
	index = op_max -1;
}

if (enter){
	scrMenuConfiguracoes(index);
}

if (keyboard_check_pressed(vk_left)) {
	switch(index){
		case 0:
			if (window_get_fullscreen()) {
				oDataSuperCarrie.fundo_index--;
				if(oDataSuperCarrie.fundo_index < 0) oDataSuperCarrie.fundo_index = max_fundos - 1;
			}
			break;
		case 1:
			oDataSuperCarrie.vol_musica = max(0, oDataSuperCarrie.vol_musica - 0.1);
			break;
		case 2:
			// Troca idioma
			var idx = array_index_of(idiomas, oDataSuperCarrie.idioma);
			// Para trocar para o anterior
			oDataSuperCarrie.idioma = idiomas[(idx - 1 + array_length(idiomas)) mod array_length(idiomas)];


			break;
	}
}
if (keyboard_check_pressed(vk_right)) {
	switch(index){
		case 0:
			if (window_get_fullscreen() == true) {
				oDataSuperCarrie.fundo_index++;
				if(oDataSuperCarrie.fundo_index >= max_fundos) oDataSuperCarrie.fundo_index = 0;
			}
			break;
		case 1:
			oDataSuperCarrie.vol_musica = min(1, oDataSuperCarrie.vol_musica + 0.1);
			break;
		case 2:
			// Troca idioma
			var idx = array_index_of(idiomas, oDataSuperCarrie.idioma);
			oDataSuperCarrie.idioma = idiomas[(idx + 1) mod array_length(idiomas)];
			break;
	}
}
