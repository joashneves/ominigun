var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);

if (!surface_exists(surf_back) || surface_get_width(surf_back) != _w || 
surface_get_height(surf_back) != _h) {
    if (surface_exists(surf_back)) surface_free(surf_back); // Libera surface antiga
    surf_back = surface_create(_w, _h, surface_rgba16float);
}


surface_set_target(surf_back);

gpu_set_blendmode(bm_normal);
surface_reset_target();
