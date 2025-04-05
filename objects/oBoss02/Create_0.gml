/// @description Insert description here
// You can write your code in this editor

if(!alarm[0])alarm[0]= 30;

image_xscale = 2;
image_yscale = 2;

instance_create_layer(x,y,"Boss",oEye00);
instance_create_layer(x,y,"Boss",oEye01);
instance_create_layer(x,y,"Boss",oEye02);
instance_create_layer(x,y,"Boss",oEye03);
instance_create_layer(x,y,"Boss",oEye04);
instance_create_layer(x,y,"Boss",oEye05);

audio_stop_all();
audio_play_sound(sndMusicBossFinal,1,true);