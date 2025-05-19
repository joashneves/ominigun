alarm[0] = 260;

alarm[1] = 30;
createLight(x,y,c_lime, 1, 1,1, self)

var id_som = audio_play_sound(sndTiroArma14,5,false)
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);