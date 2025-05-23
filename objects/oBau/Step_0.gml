/// @description Insert description here
// You can write your code in this editor
if instance_exists(IDenemy) 
{
	image_alpha = 0;	
	if (instance_exists(luz)) {
		luz.image_alpha = 0; // enfraquece a luz
	}
}else{
	image_alpha = 1;	
	if (instance_exists(luz)) {
		luz.image_alpha = 1; // luz forte
	}

}









