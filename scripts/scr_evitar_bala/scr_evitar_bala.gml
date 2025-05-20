function scr_evitar_bala(spd = 1, vspd = 0, hspd = 0) {
    // Vetores de desvio
    var avoid_v = 0;
    var avoid_h = 0;

    // Distância de detecção de balas
    var range = 1000;

    // Loop pelas balas próximas
    with (IDbalas) {
        var dx = other.x - x;
        var dy = other.y - y;
        var dist = point_distance(other.x, other.y, x, y);

        if (dist < range && dist > 0) {
            var factor = (range - dist) / range;
            avoid_h += dx / dist * factor;
            avoid_v += dy / dist * factor;
        }
    }
    // Movimento com colisão
    move_and_collide(vspd, hspd, oBloco);
}
