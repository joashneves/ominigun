/// @description AUto destruição


if(!instance_exists(IDenemy)){
if(!instance_exists(IDBossFinal)){
	instance_destroy(self);
}
}
alarm[3] = 130;	