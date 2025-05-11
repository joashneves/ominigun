/// @description Insert description here
// You can write your code in this editor

if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");

draw_set_font(fnt_ui);
draw_text(x + 32, y+36,"Velocidade:"  + string(speed));

draw_set_font(fnt_ui);
draw_text(x + 32, y+48,"Fase: "  + string(fase));

draw_set_font(fnt_ui);
draw_text(x + 32, y+66,"Incencivel:"  + string(vuneravel));
}


draw_self();