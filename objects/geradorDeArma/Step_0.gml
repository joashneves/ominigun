// Verifica se o intervalo de tempo foi atingido
if (timer++ >=( interval) )
{
    var x_pos = irandom(room_width);
    var y_pos = irandom(room_height);

    // Cria um novo objeto inimigo na posição aleatória escolhida
	var obj = obterTodasArmas()
   instance_create_depth(x_pos, y_pos,0, obj);
	
    // Redefine o contador de tempo
    timer = 0;
}