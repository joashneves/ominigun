/// @description Insert description here
// You can write your code in this editor

if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));
draw_text(x + 32, y+28,"vuneravel " + string(vuneravel));
draw_text(x + 32, y+38,"municao " + string(municao));
draw_text(x + 32, y+48,"municaão Max " + string(municaoMax));
draw_text(x + 32, y+58,"numero de instancia " + string(instance_number(oOlho)));


draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");
}


draw_self();


