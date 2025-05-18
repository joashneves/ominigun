/// @description AUto destruição


if(nenhuma_instance_existe([IDBossFinal, oBoss, oBoss01, IDenemy, oBoss02, oBoss04])){

	instance_destroy(self);

}
alarm[3] = 130;	