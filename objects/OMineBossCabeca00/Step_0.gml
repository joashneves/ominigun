// Inherit the parent event

if (oPlayer.x > x){
	image_xscale = 1;
}else if (oPlayer.x < x){
image_xscale = -1;	
}

if(place_meeting(x,y,IDbalas)){
	life=life-5;
	if(oBala12)lanca+=1;
	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

}
if(place_meeting(x,y,IDarmas)){
	life=life-1;
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	instance_destroy();

}

if(lanca >= 1 && instance_exists(oArma12)){
		var _lanca = instance_create_depth(x,y,0,oBala12);
		_lanca.direction = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.image_angle = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.speed = 16;
		
		lanca--;
}

movimento_tempo -= 1;

// Muda o comportamento após o tempo acabar
if (movimento_tempo <= 0) {
    movimento_tipo = choose(0,1,2,3); // aleatoriamente 0, 1 ou 2
    movimento_tempo = irandom_range(100, 280); // próximo tempo de duração
}

// Executa movimento baseado no tipo
switch (movimento_tipo) {
    case 0: // Perseguir
		scrMovPerseguirFicarEmCima();
		municaoTotal = 200
        break;
    case 1: // Aleatório
        scrMovAleatorio();
		municaoTotal = 180
        break;
    case 2: // Parado
         scrFicarProximo(); // 80 é a distância de órbita
		 municaoTotal = 100
        break;
		case 3: 
		if (!alarm[3]) {
			scrDashMovimentoBoss()
			alarm[3] = random_range(60, 180); // recarga do dash
			   }
		break;
}


if (distance_to_object(oPlayer) < range)
{
	if(!alarm[0]) alarm[0] = 10;
}
if(!em_view()){
movimento_tipo = 0;	
}

if( municao++ >= municaoTotal){
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		bala.image_blend = c_red;
	
		municao=0;
	audio_play_sound(sndTiroInimigo,2,0);
}