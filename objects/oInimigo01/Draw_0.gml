/// @description Insert description here
// You can write your code in this editor

var armaDraw = sInimigoArma;
var imagexscale = 0;
if(x < oPlayer.x) imagexscale = 1;
if(x > oPlayer.x) imagexscale = -1;
var distancia = point_direction(x,y,oPlayer.x, oPlayer.y) ;
draw_sprite_ext(armaDraw, 0, x, y,1,imagexscale, distancia, c_blue, 1);


if(debug_mode){
draw_set_font(fnt_ui);
draw_text(x + 32, y,"Vida" + string(life));

draw_set_font(fnt_ui);
draw_text(x + 32, y+16,"Posição: (" + string(x) + ", " + string(y) + ")");
}


// Inherit the parent event
event_inherited();