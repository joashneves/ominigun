// Post Draw Event de oBackgroundRender (ou outro objeto de render)

// Obtém as dimensões da view atual da câmera
var vw = display_get_width()
var vh =  display_get_height()
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

// Garante que a surface exista e tenha o tamanho correto
if (!surface_exists(surf_back) || surface_get_width(surf_back) != vw || surface_get_height(surf_back) != vh) {
    if (surface_exists(surf_back)) surface_free(surf_back);
    surf_back = surface_create(vw, vh);
}

// Desenha na surface surf_back
surface_set_target(surf_back);
draw_clear_alpha(c_black, 0); // Limpa a surface (fundo transparente)

gpu_set_blendmode(bm_normal);

// Desenha o sprite de fundo na posição (0, 0) da surface
// Se quiser que ele se estenda até cobrir a view:
draw_sprite_stretched(oDataSuperCarrie.fundos[oDataSuperCarrie.fundo_index], 0, 0, 0, vw, vh);

surface_reset_target();

// Agora desenha a surface na tela, alinhada com a view
draw_surface(surf_back, vx, vy);
