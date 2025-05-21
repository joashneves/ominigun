enter = keyboard_check_pressed(ord("E"))||keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0, gp_face1);

// Faz os créditos subirem
y_credito -= velocidade;

// Quando sair totalmente da tela, pode voltar pro menu
if (y_credito < -array_length(creditos) * espaco_linhas) {
      instance_destroy() // Troque para sua sala de menu
}

if (enter) {
    instance_destroy()
}
