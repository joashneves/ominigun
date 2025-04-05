/// @description aumenta a velocidade de movimento


if(spd <= 0){
	spd =  0.6;	
} else if(spd >= 2.5){
	spd = 2.5;
} else if (spd <  2.5){
	spd +=  0.2;
}

if(!alarm[11] && !vuneravel)alarm[11] = 180;

