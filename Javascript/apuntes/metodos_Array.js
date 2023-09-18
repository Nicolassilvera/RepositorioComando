
// map.() --> sirve para actualizar los elementos de una lista bajo una condicion.

const numeros = [1,2,3,4,5];
console.log(numeros.map(e => e*5))

// Multiplicar los creditos por el iva.

const comprobantesNotasDeCredito = [{id:100, desc:"prov1", precio:1000},{id:102, desc:"prov2", precio:1300}]
comprobantes = comprobantesNotasDeCredito;

console.log(comprobantes.map( e => e.precio * 1.21));

//-----------------------------------------------------------------------------------

// Dada una lista de números, realizar una función que tome dos parámetros, la lista , un
// numero y que devuelva otra lista con numeros menores al parámetro

// --> filter() filtra la lista con algun criterio dado.

const lista = [1,2,3,4,5,6,7,8,9];
const mayores = (lista, tope) => {
    return lista.filter(numero => numero < tope);
}
console.log(mayores(lista, 5));

//-----------------------------------------------------------------------------------

//Dada esta lista de números [ 4,3,-2,5,8,-12,10]
//Obtener la suma total de los elementos, iniciando en 100

// --> reduce() Sirve para sumatorias/restas de algo en particular de una lista.

const números = [4,3,-2,5,8,-12,10];

console.log(numeros.reduce((acumulado, siguiente) => acumulado + siguiente, 0));

//Obtener la suma total de los importes. 
const recibos = [
    {numero: 1000, importe: 1500},
    {numero: 1001, importe: 2300},
    {numero: 1002, importe: 2100}
    ];

    console.log(recibos.reduce((a,c)=> a + c.importe, 0))

//-----------------------------------------------------------------------------------

// sort() --> para ordenar de asd || desc

let listaAsd = [2,3,5,68,88,81,1];
console.log(listaAsd.sort((a,b)=> a - b)); // ascendente
console.log(listaAsd.sort((a,b)=> b - a)); // descendente

// para string's
let nombres = ["Nico", "Alex","Mario", "Neguen", "Malti", "Dani"];
console.log(nombres.sort((a,b)=> a.localeCompare(b))); // ascendente
console.log(nombres.sort((a,b)=> b.localeCompare(a))); // descendente

//Dada esta lista de precios sin iva [2300,2500,5000,10000,1300]
//Devolver la suma total de precios con iva que superen el importe de 3000.

let precioSinIva = [2300,2500,5000,10000,1300];
let precioConIva = precioSinIva.map(precio => precio*1.21).filter(precio => precio > 3000).reduce((a,c)=> a + c, 0);
console.log(precioConIva);

//-----------------------------------------------------------------------------------

// delete

const argLenght = [1,2,3,4,5,6,7,8,9];
delete argLenght[3];

console.log(argLenght);

//-----------------------------------------------------------------------------------

 const arr1 = ["a","b"];
 const arr2 = ["c","d"];

 const concat = arr1.concat(arr2);

 // spread operator 

 const spread = [...arr1,...arr2];
 console.log(spread);


 //----------------------------------------------------------------------------------------

 // como copiar un array para despues ser modificado ya que aca modificas la copia y modificas el original si no se hace bien.

 const original = ["Nicolas","kevin","silvera"];
 // const structuredClone = structuredClone(original);


 //----------------------------------------------------------------------------------------

 const fruits = ["Banana", "Orange", "Apple", "Mango"];
 
 // arranca del index[2], elimina 0 elementos el resto es lo que se agrega 
 fruits.splice(2, 0, "Lemon", "Kiwi");

console.log("--------------------------------------------------------------------------")

const aux = 10
const algunNombre = `${aux}{aux}`
console.log(algunNombre);
