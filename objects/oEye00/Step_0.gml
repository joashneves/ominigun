/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;

// Parâmetros da órbita
var movimento = oBossFinalTarget.movimento;
if(movimento == 0 or movimento ==  1){
	radius = 360;	
}
if(movimento == 3){
	if(radius < 480){
		radius++;
	}
}
if(movimento == 2){
	if(radius < 280){
		radius++;
	}else if(radius > 280){
		radius--;
	}
}

// Contar quantos olhos vivos ainda existem
var olhos_vivos = instance_number(oEye00);
var olhos_totais = 8; // coloque o número total de olhos que você criou

// Velocidade da rotação aumenta conforme os olhos são destruídos
var olhos_destruidos = olhos_totais - olhos_vivos;

// Define a velocidade de rotação mínima e máxima
var vel_min = 1;
var vel_max = 6;

// Interpola entre min e max baseado na quantidade destruída
orbital_speed = lerp(vel_min, vel_max, olhos_destruidos / olhos_totais);

// Atualiza o ângulo da órbita
angle_offset += orbital_speed;
angle_offset = angle_offset mod 360;

// Posiciona o boss ao redor do centro (por exemplo, oBoss02)
x = oBoss02.x + lengthdir_x(radius, angle_offset);
y = oBoss02.y + lengthdir_y(radius, angle_offset);


if(place_meeting(x,y,IDbalas)){
	life=life-25;
	instance_destroy(instance_place(x,y,IDbalas));
	var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
	var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
	audio_sound_gain(id_som, vol_efeito, 0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-5;
	var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
	var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
	audio_sound_gain(id_som, vol_efeito, 0);
}

if (life <= 0) {
	instance_destroy();

}

