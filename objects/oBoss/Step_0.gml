/// @description Insert description here
// You can write your code in this editor

// Verifica se perdeu 30 ou mais de vida desde o último disparo
if (vida_trigger - life >= 260) {
    // Dispara em 8 direções
    for (var i = 0; i < 8; i++) {
        var angulo = i * 45;
        var bala = instance_create_depth(x, y, -1, oBalaInimigo);
        bala.direction = angulo;
        bala.image_angle = angulo;
        bala.speed = 4;
    }

    // Atualiza o próximo limite de disparo
    vida_trigger = vida_trigger - 30;
}


if(municao++ >= municaoMax){
	var bala = instance_create_depth(x,y,0,oBalaBoss);
	bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.speed = 1;
	
	municao=0;
	
}
// Atualiza a velocidade de acordo com a vida do boss
var vida_proporcao = life / lifeMax;
orbital_speed = lerp(1.4, 0.2, vida_proporcao); // Começa em 0.2 e vai até 1.4 conforme perde vida

// Atualiza o ângulo e posição do olho
angle_offset += orbital_speed;
angle_offset = angle_offset mod 360;

if instance_exists(oPortaRoom){
	x = oPortaRoom.x + lengthdir_x(radius, angle_offset);
	y = oPortaRoom.y + lengthdir_y(radius, angle_offset);
}
else if instance_exists(oPlayer){
	x = oPlayer.x + lengthdir_x(radius, angle_offset);
	y = oPlayer.y + lengthdir_y(radius, angle_offset);
}

if(instance_number(oOlho) <= 3)vuneravel = true;
if(instance_number(oOlho) > 2)vuneravel = false;

if(vuneravel){
	mask_index = sBoss00;
	image_alpha = 1;
	if(place_meeting(x,y,IDbalas) and dano_timer <= 0){
		life=life-5;
		instance_destroy(instance_place(x,y,IDbalas))
		var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
	}
	if(place_meeting(x,y,IDarmas)){
		image_alpha = 1;
	}

} 

if (life <= 0) {
	
	instance_destroy();

}
