function scrMenuSelecionar(index) {
	switch (index) {
		case 0:
			room_goto(LevelTutorial);
			instance_destroy(oDataCarrie);
			break;
		case 1:
			// Abre as configurações
			instance_create_depth(0, 0, -10, oConfiguracoes);
			instance_destroy();
			break;
		case 2:
			// Créditos (ex: room_goto(rm_Credits))
			break;
		case 3:
			game_end();
			break;
		default:
			break;
	}
}
