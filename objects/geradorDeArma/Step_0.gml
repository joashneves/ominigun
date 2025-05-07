// Verifica se o intervalo de tempo foi atingido
if (timer++ >=( interval) )
{
    var x_pos = irandom(room_width);
    var y_pos = irandom(room_height);

    // Cria um novo objeto inimigo na posição aleatória escolhida
	var obj = choose( oTrocaDeArma01, oTrocaDeArma18, oTrocaDeArma03, oTrocaDeArma05,
	oTrocaDeArma06, oTrocaDeArma07,oTrocaDeArma08, oTrocaDeArma09, oTrocaDeArma10,
	oTrocaDeArma11, oTrocaDeArma12, oTrocaDeArma13, oTrocaDeArma14, oTrocaDeArma16);

   instance_create_depth(x_pos, y_pos,0, obj);
	
    // Redefine o contador de tempo
    timer = 0;
}