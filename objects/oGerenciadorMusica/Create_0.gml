musica_calma = audio_play_sound(sndMusicaCalma, 1, true);
musica_ativa = audio_play_sound(sndMusicaAtiva, 1, true);

audio_sound_gain(musica_calma, 1, 0); // Volume cheio
audio_sound_gain(musica_ativa, 0, 0); // Mutado

musica_calma_target = 1;
musica_ativa_target = 0;

