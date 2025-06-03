/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oBoss04)){
// Posição centralizada da barra no topo
var barra_x = display_get_gui_width() / 2;
var barra_y = 6; // 6 pixels abaixo do topo

// Proporção da vida (de 0 a 1)
var proporcao = clamp(global.vida_total_boss / global.vida_maxima_boss , 0, 1);

// Sprite da barra e índice da subimagem (vida cheia = frame 0, vazia = último)
var sprite = sBossHud;
var total_frames = sprite_get_number(sprite);
var frame_index = floor((1 - proporcao) * (total_frames - 1));


    draw_set_alpha(1);
    draw_sprite(sprite, frame_index, barra_x - sprite_get_width(sprite) / 2, barra_y);

}