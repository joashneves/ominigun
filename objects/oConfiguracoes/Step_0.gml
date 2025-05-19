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
	scrMenuConfiguracoes(index);
}
if (left_press or right_press) {
    if (index == 2) { // Idioma
    var idx = array_index_of(idiomas, oDataSuperCarrie.idioma);
    idx += right_press - left_press;
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
}