/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;
angle_offset += orbital_speed;
angle_offset = angle_offset mod 360; // mantém o ângulo entre 0~359

x = oBoss02.x + lengthdir_x(radius, angle_offset);
y = oBoss02.y + lengthdir_y(radius, angle_offset);
#region // Ataque

if(carregando++ >= carregandoMax){
sprite_index = sEyeAtack00;
if (fim_animacao()) {

    var _raio = 100;  // Ajuste o raio conforme necessário
    for (var _angulo = 0; _angulo < 360; _angulo += 36) {  // Incrementa o ângulo para criar balas em posições ao redor do círculo
        var _radiano = degtorad(_angulo);
        var _x = oPlayer.x + _raio * cos(_radiano);
        var _y = oPlayer.y + _raio * sin(_radiano);

        var _bala = instance_create_depth(_x, _y, 0, oBalaBoss01);
		_bala.direction = point_direction(x,y,oPlayer.x,oPlayer.y);
		_bala.speed = 0.5;
    }
carregando = random_range(0,1000);
sprite_index = sEye00;
}
}

#endregion

if(place_meeting(x,y,IDbalas)){
	life=life-25;

	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-5;
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	
	instance_destroy();

}

