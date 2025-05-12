/// @description Debug


if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");

draw_set_font(fnt_ui);
draw_text(x + 32, y+36,"Velocidade:"  + string(speed));
}

draw_self()