// Exemplo: posiciona a câmera no centro de um jogador
var _cam = view_camera[0];
var _target_x = x - camera_get_view_width(_cam) / 2;
var _target_y = y - camera_get_view_height(_cam) / 2;

camera_set_view_pos(_cam, _target_x, _target_y);
