const numeros = [1,2,3,4,5];
const letras = ['a','b','c','d','e'];

// 1) para poder pasarlo/se lea desde otro archivo ...

// --> module.export = numeros, letras;

// 2) otra manera puede ser como un objeto ...

//module.exports = {
//    numeros,
//    letras
//};

// - Syntax sugar = cuando el nombre de un atrib de es igual a su valor como el ej de arriba ...

//const sugar = {
//    numeros,
//    letras
//};

module.exports = [numeros, letras];