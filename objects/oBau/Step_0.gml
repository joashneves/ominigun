/// @description Insert description here
// You can write your code in this editor

if(fechado){
	image_speed = 0;
	image_index = 0;
}if fim_animacao() {
	image_speed = 0;
	instance_create_depth(x,y+32,0,item2);
};

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









