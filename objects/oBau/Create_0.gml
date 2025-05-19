/// @description Insert description here
// You can write your code in this editor
scrTraducao()
fechado = true;

image_alpha = 0;

item = choose(oTrocaDeArma00, oTrocaDeArma01,oTrocaDeArma02,
							oTrocaDeArma03,oTrocaDeArma04, oTrocaDeArma05,  oTrocaDeArma17,
							oTrocaDeArma06, oTrocaDeArma07, oTrocaDeArma08, oTrocaDeArma20,
							oTrocaDeArma09, oTrocaDeArma10, oTrocaDeArma11, oTrocaDeArma12,
							oTrocaDeArma13, oTrocaDeArma14,oTrocaDeArma16, oTrocaDeArma18,
							oTrocaDeArma19, oCuraLife,oMoeda, oTrocaDeArma21, oTrocaDeArma22,
							oTrocaDeArma23, oTrocaDeArma24, oTrocaDeArma25, oTrocaDeArma26,
							oTrocaDeArma27, oTrocaDeArma28, oTrocaDeArma29);	

item1 = obterTodasArmas();	

item2 = obterTodasArmas();	


createLight(x,y,c_lime, 4, image_xscale,image_yscale, self)



