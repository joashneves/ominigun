/// @description Status

life = 3900;


carregando = random_range(0,1000);
carregandoMax = random_range(1000,2000);

// Inherit the parent event
event_inherited();

createLight(x,y,c_white, 2, image_xscale,image_yscale, self)