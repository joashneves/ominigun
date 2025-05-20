/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A392F7C
/// @DnDArgument : "code" "// Post Draw Event de oBackgroundRender (ou outro objeto de render)$(13_10)$(13_10)// Obtém as dimensões da view atual da câmera$(13_10)var vw = display_get_width()$(13_10)var vh =  display_get_height()$(13_10)var vx = camera_get_view_x(view_camera[0]);$(13_10)var vy = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)// Garante que a surface exista e tenha o tamanho correto$(13_10)if (!surface_exists(surf_back) || surface_get_width(surf_back) != vw || surface_get_height(surf_back) != vh) {$(13_10)    if (surface_exists(surf_back)) surface_free(surf_back);$(13_10)    surf_back = surface_create(vw, vh);$(13_10)}$(13_10)$(13_10)// Desenha na surface surf_back$(13_10)surface_set_target(surf_back);$(13_10)draw_clear_alpha(c_black, 0); // Limpa a surface (fundo transparente)$(13_10)$(13_10)gpu_set_blendmode(bm_normal);$(13_10)$(13_10)// Desenha o sprite de fundo na posição (0, 0) da surface$(13_10)// Se quiser que ele se estenda até cobrir a view:$(13_10)draw_sprite_stretched(oDataSuperCarrie.fundos[oDataSuperCarrie.fundo_index], 0, 0, 0, vw, vh);$(13_10)$(13_10)surface_reset_target();$(13_10)$(13_10)// Agora desenha a surface na tela, alinhada com a view$(13_10)draw_surface(surf_back, vx, vy);$(13_10)"
// Post Draw Event de oBackgroundRender (ou outro objeto de render)
if (!surface_exists(surf_back)) exit;
// Obtém as dimensões da view atual da câmera
var vw = display_get_width()
var vh =  display_get_height()
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
//show_debug_message("Camera : " + string(vy) + "," + string(vx))
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
draw_surface(surf_back, 0, 0);