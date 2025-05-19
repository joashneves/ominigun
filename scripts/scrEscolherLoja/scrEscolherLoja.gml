function scrEscolherArmaAleatoria() {
	var armas = [
		{ objeto: oTrocaDeArma00, preco: 5 },
		{ objeto: oTrocaDeArma01, preco: 8 },
		{ objeto: oTrocaDeArma02, preco: 8 },
		{ objeto: oTrocaDeArma03, preco: 20 },
		{ objeto: oTrocaDeArma04, preco: 10 },
		{ objeto: oTrocaDeArma05, preco: 12 },
		{ objeto: oTrocaDeArma06, preco: 6 },
		{ objeto: oTrocaDeArma07, preco: 8 },
		{ objeto: oTrocaDeArma08, preco: 5 },
		{ objeto: oTrocaDeArma09, preco: 10 },
		{ objeto: oTrocaDeArma10, preco: 5 },
		{ objeto: oTrocaDeArma11, preco: 12 },
		{ objeto: oTrocaDeArma12, preco: 10 },
		{ objeto: oTrocaDeArma13, preco: 10 },
		{ objeto: oTrocaDeArma14, preco: 10 },
		{ objeto: oTrocaDeArma15, preco: 15 },
		{ objeto: oTrocaDeArma16, preco: 12 },
		{ objeto: oTrocaDeArma17, preco: 12 },
		{ objeto: oTrocaDeArma18, preco: 12 },
		{ objeto: oTrocaDeArma19, preco: 17 },
		{ objeto: oTrocaDeArma20, preco: 12 },
		{ objeto: oTrocaDeArma21, preco: 12 },
		{ objeto: oTrocaDeArma22, preco: 14 },
		{ objeto: oTrocaDeArma23, preco: 6 },
		{ objeto: oTrocaDeArma24, preco: 12 },
		{ objeto: oTrocaDeArma25, preco: 12 },
		{ objeto: oTrocaDeArma26, preco: 12 },
		{ objeto: oTrocaDeArma27, preco: 12 },
		{ objeto: oTrocaDeArma28, preco: 16 },
		{ objeto: oTrocaDeArma29, preco: 20 }
	];
	var index = irandom(array_length(armas) - 1);
		return armas[index]; // retorna um objeto aleatório da lista
}
