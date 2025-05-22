scrTraducao(); // já puxa o idioma atual


// Pega o idioma atual
var idioma = string(oDataSuperCarrie.idioma);

// Dicionário de textos fixos para cada idioma
credito_traducao = {
    BR: ["Criado por: ", "Artista: ", "Música por: ", "Agradecimentos:", "<3"],
    EN: ["Created by: ", "Artist: ", "Music by: ", "Special thanks:", "<3"],
    ES: ["Creado por: ", "Artista: ", "Música por: ", "Agradecimientos:", "<3"]
};

// Dados variáveis (nomes)
criado_por = "Joas (Yoyatsu)";
artista = "Nicolle (Nille7)";
musica_por = "Nothing.Leor";

// Lista de agradecimentos
agradecimento = [
    "Você por jogar!",
    "A todos que ajudaram.",
    "Fabs",
	"Afkarlos",
	" AnodosYuu"
];

// Combina tudo em uma lista única de créditos
var t = credito_traducao[$ idioma]; // acesso à tradução correta

creditos = [
    t[0] + criado_por,
    t[1] + artista,
    t[2] + musica_por,
    "",
    t[3],
];

// Adiciona cada linha de agradecimento separadamente
for (var i = 0; i < array_length(agradecimento); i++) {
    array_push(creditos, agradecimento[i]);
}

array_push(creditos, "");
array_push(creditos, t[4]); // "Voltar"

// Configuração de rolagem
y_credito = display_get_gui_height();
espaco_linhas = 40;
velocidade = 1.5;
