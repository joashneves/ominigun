/// @description Insert description here
// You can write your code in this editor
depth = 0;
var carregar = (recarga/recargaTotal) * 100;

if (recarga < recargaTotal){
draw_healthbar(x+32,y-16,x-32,y-22,carregar,c_black, c_gray, c_gray,1 , false, true );
}

draw_self();
