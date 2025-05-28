// Posição centralizada da barra no topo
var barra_x = display_get_gui_width() / 2;
var barra_y = 6; // 6 pixels abaixo do topo

// Proporção da vida (de 0 a 1)
var proporcao = clamp(life / lifeMax, 0, 1);

// Sprite da barra e índice da subimagem (vida cheia = frame 0, vazia = último)
var sprite = sBossHud;
var total_frames = sprite_get_number(sprite);
var frame_index = floor((1 - proporcao) * (total_frames - 1));

// Sempre desenha a barra de vida — mas com alpha dependendo da vulnerabilidade
if (vuneravel) {
    // Sem transparência
    draw_set_alpha(1);
    draw_sprite(sprite, frame_index, barra_x - sprite_get_width(sprite) / 2, barra_y);
} else {
    // Calcular alpha baseado na distância do jogador
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
    var dist_min = 150;
    var dist_max = 800;
    var alpha = clamp(1 - ((dist - dist_min) / (dist_max - dist_min)), 0, 0.6);

    // Aplicar transparência e desenhar a barra
    if (alpha > 0) {
        draw_set_alpha(alpha);
        draw_sprite(sprite, frame_index, barra_x - sprite_get_width(sprite) / 2, barra_y);
        draw_set_alpha(1); // Resetar alpha depois de desenhar
    }
}
