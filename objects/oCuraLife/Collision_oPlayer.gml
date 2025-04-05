/// @description Insert description here
// You can write your code in this editor

if(oPlayer.vida < 5){
	
	oPlayer.vida +=1; 
	if(debug_mode){
		oPlayer.vida = 100;
	}

instance_destroy();

}



