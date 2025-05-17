
if(!instance_exists(oGerenciadorMusica)) instance_create_depth(x,y,0,oGerenciadorMusica);
instance_create_depth(x,y, -0, oBuffsController)
instance_destroy(self)