// Aplica o efeito de impacto
if (dano_timer > 0) {
    dano_timer--;
    
    // Deixa vermelho
    image_blend = c_red;

    // Efeito de recuo / shake
    shake_offset_x = random_range(-2, 2);
    shake_offset_y = random_range(-2, 2);
} else {
    image_blend = c_white;
    shake_offset_x = 0;
    shake_offset_y = 0;
}

// Desenha com o deslocamento
draw_sprite_ext(sprite_index, image_index, x + shake_offset_x, y + shake_offset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var armaDraw = sInimigoArma;
var imagexscale = 1;
if(x < oPlayer.x) imagexscale = 1;
if(x > oPlayer.x) imagexscale = -1;
var distancia = point_direction(x,y,oPlayer.x, oPlayer.y) ;
draw_sprite_ext(armaDraw, -10, x-16, y+16,1,imagexscale, distancia, c_red, 1);
