
// Ativa view se não estiver ativada
if (!view_enabled)
{
    view_visible[0] = true;
    view_enabled = true;
}
// Verifica se já existe uma câmera
if (!view_get_camera(view_camera[0])) {
    var cam_w = 800; // ou o tamanho desejado
    var cam_h = 600;

    var cam = camera_create_view(0,900, cam_w, cam_h, 0, target_, -1, -1, 0, 0);
    view_camera[0] = cam;

}


// Define quem será o alvo da câmera
if (room != LevelSobrevivencia) {
    target_ = olevel;
} else {
    target_ = oPlayer;
}

// Inicializa shake
global.shake_magnitude = 0;
global.shake_duration = 0;

// Armazena posição da câmera para uso em post_draw
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

var cam_x = camera_get_view_x(view_camera[0])
var cam_y = camera_get_view_y(view_camera[0])
if (instance_exists(target_)) {
    var tx = target_.x - width_ / 2;
    var ty = target_.y - height_ / 2;
    camera_set_view_pos(view_camera[0], 0, 900);
}


show_debug_message("camera criada em : " + string(cam_x) + "," + string(cam_y))

// Outras configs
screenfull = false;
window_set_cursor(cr_none);
