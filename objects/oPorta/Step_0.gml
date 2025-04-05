/// @description Insert description here
// You can write your code in this editor


if(instance_exists(IDenemy) && instance_number(oBlocoPorta) <= instance_number(oPorta)){
	var ins = instance_create_depth(x,y,0,oBlocoPorta);
	with(ins){
		 image_xscale = other.image_xscale;
		 image_yscale = other.image_yscale;
		 //mask_index = point_direction(x,y,other.image_xscale,other.image_xscale);
	}
}

