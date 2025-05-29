/// @description 
if(!oPlayer.BossMorto){
image_alpha = 0;	

return;
}
luz.image_alpha = 2; // enfraquece a luz
// Acessa a tradução conforme o idioma atual
var idioma = string(oDataSuperCarrie.idioma);
var t = traducao_geral[$ idioma];

// Segurança: fallback para BR
if (is_undefined(t)) {
    t = traducao_geral.BR;
}
depth = 5;
draw_self();

draw_set_font(fnt_loja);

if(place_meeting(x,y,oPlayer)){
    // Texto "Press E" traduzido
    draw_text(x - 16, y - 64, t.Press_E);
}

