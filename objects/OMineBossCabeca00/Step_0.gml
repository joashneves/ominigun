// Inherit the parent event
event_inherited();

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


if( municao++ >= municaoTotal){
		var bala = instance_create_depth(x,y,0,oBalaInimigo);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		bala.image_blend = c_red;
	
		municao=0;
	audio_play_sound(sndTiroInimigo,2,0);
}