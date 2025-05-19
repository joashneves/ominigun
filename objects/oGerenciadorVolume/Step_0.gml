up_press = keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
down_press = keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(0, gp_padd);
right_press = keyboard_check_pressed(ord("A"))||keyboard_check_pressed(vk_left) ||  gamepad_button_check_pressed(0, gp_padl);
left_press = keyboard_check_pressed(ord("D"))||keyboard_check_pressed(vk_right) ||  gamepad_button_check_pressed(0, gp_padr);
enter = keyboard_check_pressed(ord("E"))||keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0, gp_face1);
var idiomas = ["BR", "EN", "ES"];
global.pause = true;
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
	scrMenuConfiguracoesVolume(index);
}

if (left_press) {
	switch(index) {
		case 0: oDataSuperCarrie.vol_geral  = max(0, oDataSuperCarrie.vol_geral - 0.1); break;
		case 1: oDataSuperCarrie.vol_tiros  = max(0, oDataSuperCarrie.vol_tiros - 0.1); break;
		case 2: oDataSuperCarrie.vol_musica = max(0, oDataSuperCarrie.vol_musica - 0.1); break;
		case 3: oDataSuperCarrie.vol_ambiente   = max(0, oDataSuperCarrie.vol_ambiente - 0.1); break;
	}
}
if (right_press) {
	switch(index) {
		case 0: oDataSuperCarrie.vol_geral  = min(1, oDataSuperCarrie.vol_geral + 0.1); break;
		case 1: oDataSuperCarrie.vol_tiros  = min(1, oDataSuperCarrie.vol_tiros + 0.1); break;
		case 2: oDataSuperCarrie.vol_musica = min(1, oDataSuperCarrie.vol_musica + 0.1); break;
		case 3: oDataSuperCarrie.vol_ambiente   = min(1, oDataSuperCarrie.vol_ambiente + 0.1); break;
	}
}
