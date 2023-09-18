//Dado esta lista de objetos, crear una nueva lista de objetos, pero en vez de tener un
//array de pagos, debería tener un array con las cuotas en deuda.
//[{poliza:123,patente:'AA345FD',cantidad_cuotas:12,pagadas[1,2,3,4]},
//{poliza:124,patente:'AA500RR',cantidad_cuotas:6,pagadas[1,2,3,4]},
//{poliza:125,patente:'AA200AA',cantidad_cuotas:12,pagadas[1,2,3,4,5,6,7,8,9,10,11,12]},
//{poliza:126,patente:'AA300SH',cuotas:8,pagadas[1,2]} ]
//Mostrar el resultado por consola

const polizas = [{poliza:123,patente:'AA345FD',cantidad_cuotas:12,pagadas:[1,2,3,4]},
                 {poliza:124,patente:'AA500RR',cantidad_cuotas:6,pagadas:[1,2,3,4]},
                 {poliza:125,patente:'AA200AA',cantidad_cuotas:12,pagadas:[1,2,3,4,5,6,7,8,9,10,11,12]},
                 {poliza:126,patente:'AA300SH',cantidad_cuotas:8,pagadas:[1,2]} ];


let polizasConDeudas = []

for(let i=0; i < polizas.length; i++) {

    const cuotasImpagas = [];
    
    for(let j = polizas[i].pagadas.length; j < polizas[i].cantidad_cuotas; j++ ) {
        cuotasImpagas.push(j+1);
    }
    
    polizasConDeudas.push(polizas[i]);
    polizasConDeudas[i].cuotasImpagas = cuotasImpagas;

}

console.log(polizasConDeudas);