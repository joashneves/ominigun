up_press = keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
down_press = keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(0, gp_padd);
right_press = keyboard_check_pressed(ord("A"))||keyboard_check_pressed(vk_left) ||  gamepad_button_check_pressed(0, gp_padl);
left_press = keyboard_check_pressed(ord("D"))||keyboard_check_pressed(vk_right) ||  gamepad_button_check_pressed(0, gp_padr);

enter = keyboard_check_pressed(ord("E"))||keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0, gp_face1);

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
	scrMenuConfiguracoesJogabilidade(index);
}

if (left_press) {
	switch(index){
		case 0:
			if (window_get_fullscreen()) {
				oDataSuperCarrie.fundo_index--;
				if(oDataSuperCarrie.fundo_index < 0)
					oDataSuperCarrie.fundo_index = array_length(oDataSuperCarrie.fundos) - 1;
			}
			break;
		case 1:
			oDataSuperCarrie.cursor_index--;
			if(oDataSuperCarrie.cursor_index < 0)
				oDataSuperCarrie.cursor_index = array_length(oDataSuperCarrie.cursor_sprites) - 1;
				oDataSuperCarrie.sprite_mouse = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
				cursor_sprite = oDataSuperCarrie.sprite_mouse;
			break;
	}
}
if (right_press) {
	switch(index){
		case 0:
			if (window_get_fullscreen()) {
				oDataSuperCarrie.fundo_index++;
				if(oDataSuperCarrie.fundo_index >= array_length(oDataSuperCarrie.fundos))
					oDataSuperCarrie.fundo_index = 0;
			}
			break;
		case 1:
			oDataSuperCarrie.cursor_index++;
			if(oDataSuperCarrie.cursor_index >= array_length(oDataSuperCarrie.cursor_sprites))
				oDataSuperCarrie.cursor_index = 0;
				oDataSuperCarrie.sprite_mouse = oDataSuperCarrie.cursor_sprites[oDataSuperCarrie.cursor_index];
				cursor_sprite = oDataSuperCarrie.sprite_mouse;
			break;
	}
}
