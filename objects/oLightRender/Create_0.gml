
if (room == Menu or room == GameOver or room == Option){
	ambient_light = c_white; // Cor da luz
}else {
ambient_light = c_grey; // Cor da luz
}

surf_light = -1; // camadas de luzes
draw_surf_x = 0;
draw_surf_y = 0;

if (os_type == os_windows) {
    show_debug_message("Rodando no Windows");
	application_surface_draw_enable(false) // Desabilita o render automatico

}
else if (os_type == os_macosx) {
    show_debug_message("Rodando no macOS");
}
else if (os_type == os_linux) {
    show_debug_message("Rodando no Linux");
}
else if (os_type == os_android) {
    show_debug_message("Rodando no Android");
}
else if (os_type == os_ios) {
    show_debug_message("Rodando no iOS");
}
else if (os_type == os_ps4) {
    show_debug_message("Rodando no PS4");
} else if (os_type == os_operagx){
	   show_debug_message("Rodando no OperaGX");

}else if (os_type == os_unknown){
	show_debug_message("Rodando no OperaGX");
	//instance_destroy()	
}else {
	show_debug_message("Rodando no OperaGX");
	instance_destroy()	
}
