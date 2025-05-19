/// @description Insert description here
// You can write your code in this editor

instance_destroy();

var id_som = audio_play_sound(sndTiroBranco,5,false)
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);