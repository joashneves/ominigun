/// @description Insert description here
// You can write your code in this editor

var imagexscale = 0;
if(x < oPlayer.x) imagexscale = 1;
if(x > oPlayer.x) imagexscale = -1;

if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");

draw_set_font(fnt_ui);
draw_text(x + 32, y+24,"Lanças : " + string(lanca));

}


// Inherit the parent event
event_inherited();

