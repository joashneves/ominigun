if (window_get_fullscreen()) {
    window_set_fullscreen(false);
    oCamera.screenfull = false;
    image_index = 1;
} else {
    window_set_fullscreen(true);
    oCamera.screenfull = true;
}

if (instance_exists(oLightRender)) {
    resize_light_surface();
}
