/// @description Insert description here
// You can write your code in this editor

if(!alarm[0])alarm[0]= 30;

image_xscale = 2;
image_yscale = 2;

var total = 6;
var angle_step = 360 / total;

var eyes = [
    oEye00, oEye01, oEye02,
    oEye03, oEye04, oEye05
];

for (var i = 0; i < total; i++) {
    var eye = instance_create_layer(x, y, "Boss", eyes[i]);
    eye.angle_offset = i * angle_step;
}


audio_stop_all();
audio_play_sound(sndMusicBossFinal,1,true);