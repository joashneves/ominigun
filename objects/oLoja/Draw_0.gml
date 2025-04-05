/// @description Insert description here
// You can write your code in this editor

depth = 5;
draw_self();

draw_set_font(fnt_loja);

if(place_meeting(x,y,oPlayer)){
	draw_text(x-16,y-64, "Press E")
}
draw_sprite(sprite_index, image_index, x, y);
var _sprite = object_get_sprite(venda);
draw_sprite(_sprite,0,x,y);

