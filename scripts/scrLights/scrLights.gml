function createLight(_x, _y, _color = c_white, _intensity =0.2, _xscale= 1, _yscale= 1, _alvo = -10){
	var _luz = instance_create_depth(x,y,0, oLight)
	_luz.image_blend = _color
	_luz.image_xscale = _xscale
	_luz.image_yscale = _yscale
	_luz.image_alpha = _intensity
	_luz.alvo = _alvo
}