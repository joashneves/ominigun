/// @description Insert description here
// You can write your code in this editor


if(wave != 0 and !instance_exists(oBotaoWave)){
	if(!instance_exists(IDenemy)){
	scrGerarInimigo(wave)	
	wave = wave + 1;
	}
	
}