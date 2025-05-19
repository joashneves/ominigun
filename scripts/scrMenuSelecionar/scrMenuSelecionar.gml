function scrMenuSelecionar(index) {
	switch (index) {
		case 0:
			room_goto(LevelTutorial);
			break;

		case 3:
			game_end();
			break;

		// Adicione outros cases conforme necessário
		default:
			// Código opcional para índices não tratados
			break;
	}
}
