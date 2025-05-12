/// @description Status

life = 3900;

tirinho = false;

lanca = 0;

carregando = random_range(0,500);
carregandoMax = random_range(1000,2000);


alarm[1] = 60;

// Inherit the parent event
event_inherited();

createLight(x,y,c_white, 2, image_xscale,image_yscale, self)