
// Toca as músicas
musica_calma = audio_play_sound(sndMusicaCalma, 1, true);
musica_ativa = audio_play_sound(sndMusicaAtiva, 1, true);

// Inicializa valores alvo
musica_calma_target = 1;
musica_ativa_target = 0;

// Aplica os volumes usando os controles definidos
var volume_final_calma = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_musica * musica_calma_target;
var volume_final_ativa = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_musica * musica_ativa_target;

audio_sound_gain(musica_calma, volume_final_calma, 0);
audio_sound_gain(musica_ativa, volume_final_ativa, 0);
