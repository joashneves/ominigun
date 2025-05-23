/// @description Insert description here
// You can write your code in this editor
scrTraducao()
fechado = true;

image_alpha = 0;

item2 = obterTodasArmas();	

luz = createLight(x,y,c_lime, 1, image_xscale,image_yscale, self)
image_alpha = 0;	
if (instance_exists(luz)) {
	luz.image_alpha = 0; // enfraquece a luz
}
