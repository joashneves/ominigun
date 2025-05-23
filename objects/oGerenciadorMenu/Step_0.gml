up_press = keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
down_press = keyboard_check_pressed(ord("S"))||keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(0, gp_padd);
enter = keyboard_check_pressed(ord("E"))||keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0, gp_face1);

idioma = string(oDataSuperCarrie.idioma);

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
	scrMenuSelecionar(index);

}