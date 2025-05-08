// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// Gera uma direção aleatória próxima do jogador
function get_random_player_direction(range) {
    var angle = point_direction(x, y, oPlayer.x, oPlayer.y);
    var offset = random_range(-range, range); // +- 45 graus por exemplo
    return angle + offset;
}
