/// @description 
if(!oPlayer.BossMorto) return;

depth = 5;
draw_self();

draw_set_font(fnt_loja);

if(place_meeting(x,y,oPlayer)){
	draw_text(x-16,y-64, "Press E")
}

