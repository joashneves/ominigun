var fade_speed = 0.02; // quanto mais alto, mais rápida a transição

// Volume atual
var vol_calma = audio_sound_get_gain(musica_calma);
var vol_ativa = audio_sound_get_gain(musica_ativa);

// Interpola suavemente
vol_calma = lerp(vol_calma, musica_calma_target, fade_speed);
vol_ativa = lerp(vol_ativa, musica_ativa_target, fade_speed);

// Aplica o novo volume
audio_sound_gain(musica_calma, vol_calma, 0);
audio_sound_gain(musica_ativa, vol_ativa, 0);


if (instance_number(IDenemy) > 0) {
    musica_calma_target = 0;
    musica_ativa_target = 1;
} else {
    musica_calma_target = 1;
    musica_ativa_target = 0;
}
