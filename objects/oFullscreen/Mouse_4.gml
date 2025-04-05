/// @description Insert description here
// You can write your code in this editor

if (window_get_fullscreen() == true){
	window_set_fullscreen(false);
	oCamera.screenfull = false;
	image_index = 1;
} else {
	window_set_fullscreen(true);
		oCamera.screenfull = true;
}
