/// @description Insert description here
// You can write your code in this editor

hspd = 0;
vspd = 0;
spd = random_range(0.5,1.5);

range = 180;
random_valueH = random_range(-3,3)
random_valueV = random_range(-3,3)
if(!alarm[0])alarm[0] = 60;

// Sprite arma , Tiro mecanica , sprite do personagem , min , max, drop
var _kitArma = [ 
	[ sArma01,scrInimigoespingarda, sInimigo03, 140, 200, oTrocaDeArma00],
	[ sArma03, scrInimigoPistola, sInimigo01, 60, 90, oTrocaDeArma02 ],
	[ sArma04, scrInimigoPistola, sInimigo00, 10, 70, oTrocaDeArma04 ],
	[ sArma04, scrInimigoLaser, sInimigo02, 80, 100, oTrocaDeArma15 ]
] 
var _numeroKit = 3;

municao = random_range(1,15);
municaoTotal = random_range(_kitArma[_numeroKit][3],_kitArma[_numeroKit][4]);

armaDraw = -1
comportamento = scrInimigoLaser;

sprite_index = sEnemyOlhoBoss01

// Inherit the parent event
event_inherited();

