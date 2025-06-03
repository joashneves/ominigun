depth = 5;
if(!nenhuma_instance_existe([IDenemy, oBoss04]))exit;
draw_self();

draw_set_font(fnt_loja);

var idioma = string(oDataSuperCarrie.idioma);
var t = traducao_geral[$ idioma];

// Segurança: fallback se não achar
if (is_undefined(t)) {
    t = traducao_geral.BR;
}

if (place_meeting(x, y, oPlayer)) {
	// Texto "Press E"
	//draw_text(x - 16, y - 64, t.Press_E);
		draw_sprite(sTeclaE,0, x-16,y-64)
}
