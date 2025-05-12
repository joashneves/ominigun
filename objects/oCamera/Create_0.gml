if (room != LevelSobrevivencia) target_ = olevel; else target_ = oPlayer;

global.shake_magnitude = 0;
global.shake_duration = 0;

width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

screenfull = false;
window_set_cursor(cr_none);

draw_surf_x = camera_get_view_x(view_camera[0]);
draw_surf_y = camera_get_view_y(view_camera[0]);