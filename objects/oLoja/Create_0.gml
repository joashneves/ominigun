/// @description escolhe uma personagem
scrTraducao()
var armaEscolhida = scrEscolherArmaAleatoria();
venda = armaEscolhida.objeto;
 preco = armaEscolhida.preco;


image_alpha = 0.5;

createLight(x,y,c_lime, 1, image_xscale,image_yscale, self)