// Inherit the parent event
event_inherited();


if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Movimento_tempo: (" + string(movimento_tempo) + ", " + string(movimento_tipo) + ")");

draw_set_font(fnt_ui);
///draw_text(x + 32, y+24,"Estado : " + string(estado));
}
