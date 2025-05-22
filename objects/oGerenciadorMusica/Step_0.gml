var fade_speed = 0.02;

var vol_musica_final = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_musica;

// Verifica se as músicas estão tocando

if (audio_is_playing(musica_calma)) {
    var vol_calma = audio_sound_get_gain(musica_calma);
    vol_calma = lerp(vol_calma, musica_calma_target * vol_musica_final, fade_speed);
    audio_sound_gain(musica_calma, vol_calma, 0);
}
if (audio_is_playing(musica_ativa)) {
    var vol_ativa = audio_sound_get_gain(musica_ativa);
    vol_ativa = lerp(vol_ativa, musica_ativa_target * vol_musica_final, fade_speed);
    audio_sound_gain(musica_ativa, vol_ativa, 0);
}

// zera a musica para a troca
if (!audio_is_playing(musica_calma) && musica_calma_target > 0) {
    musica_calma = audio_play_sound(sndMusicaCalma, 0, true);
    audio_sound_gain(musica_calma, 0, 0); // começa zerado para fade-in
}

if (!audio_is_playing(musica_ativa) && musica_ativa_target > 0) {
    musica_ativa = audio_play_sound(sndMusicaAtiva, 1, true);
    audio_sound_gain(musica_ativa, 0, 0); // começa zerado para fade-in
}


// Define os alvos de volume com base nos inimigos em tela
if ( !nenhuma_instance_existe([oBoss02, oBoss04, IDenemy])) {
    musica_calma_target = 0;
    musica_ativa_target = 1;
} else {
    musica_calma_target = 1;
    musica_ativa_target = 0;
}
