draw_self();

if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));


	if (topo != noone) {
	draw_text(x + 64, y- 32,"topo" + string(topo));
	if(instance_exists(topo)){
	draw_line(x, y, topo.x, topo.y); // apenas para debug visual
	}
	}

}