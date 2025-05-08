// Step
if (!instance_exists(target_)) exit;

x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y - height_/8, 0.1);

if (global.shake_duration > 0) {
    global.shake_duration--;

    var shake_x = random_range(-global.shake_magnitude, global.shake_magnitude);
    var shake_y = random_range(-global.shake_magnitude, global.shake_magnitude);
    
    camera_set_view_pos(view_camera[0], (x - width_/2) + shake_x, (y - height_/2) + shake_y);
} else {
    camera_set_view_pos(view_camera[0], x - width_/2, y - height_/2);
}

window_set_fullscreen(screenfull);
