
// Número de segmentos
var total = 84;
var anterior = noone;

// Criar os segmentos em sequência
for (var i = 0; i < total; i++) {
var parte = instance_create_depth(x, y, -i, oBoss04, );

if (anterior != noone) {
    parte.topo = anterior;  // Segue o anterior
    anterior.baixo = parte; // O anterior aponta para esse
}

anterior = parte;

}

instance_destroy();
