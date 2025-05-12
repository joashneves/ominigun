sprite_index = choose(sBalasAtack00, sBalasAtack01, sBalasAtack02)
var _tamanho = choose(1, 2)
image_xscale = image_xscale * _tamanho;
image_yscale = image_yscale * _tamanho;

createLight(x,y,c_white, 1, image_xscale,image_yscale, self)