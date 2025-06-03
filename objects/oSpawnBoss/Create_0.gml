// Número de segmentos
var total = 49;
var anterior = noone;
var raio = 100; // Raio do círculo
var centro_x = x;
var centro_y = y;

// Criar os segmentos em sequência formando um círculo
for (var i = 0; i < total; i++) {
    var angulo = i * (360 / total); // Ângulo atual em graus
    var rad = degtorad(angulo);     // Converter para radianos

    var px = centro_x + lengthdir_x(raio, angulo);
    var py = centro_y + lengthdir_y(raio, angulo);

    var parte = instance_create_depth(px, py, -i, oBoss04);

    if (anterior != noone) {
        parte.topo = anterior;      // Segue o anterior
        anterior.baixo = parte;     // O anterior aponta para esse
    }

    anterior = parte;
}
    // instance_create_depth(0, 0, 0, oGerenciadorBoss04);
instance_destroy();
