/// @description Insert description here
// You can write your code in this editor
	var id_som = audio_play_sound(sndExplosion,2,0);
	var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
camera_shake(20, 10);

// Inherit the parent event
event_inherited();

