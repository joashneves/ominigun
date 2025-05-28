if(oPlayer.player_morto) return;
/// @description Desenhar a barra de vida centralizada embaixo

// Posição centralizada
var barra_x = display_get_gui_width() / 2;
var barra_y = 6; // 6 pixels abaixo do topo da tela

// Proporção da vida (entre 0 e 1)
var proporcao = clamp(life / lifeMax, 0, 1); // evita valores fora do intervalo

// Sprite da barra
var sprite = sBossHud;

// Número total de frames (subimagens)
var total_frames = sprite_get_number(sprite);

// Índice da subimagem proporcional à vida (invertido: 0 = cheio, último = vazio)
var frame_index = floor((1 - proporcao) * (total_frames - 1));

// Desenhar a subimagem correspondente da sprite
draw_sprite(
    sprite,                 // sprite
    frame_index,            // subimagem (frame)
    barra_x - sprite_get_width(sprite) / 2, // centraliza horizontalmente
    barra_y                                // posição vertical no topo
);
