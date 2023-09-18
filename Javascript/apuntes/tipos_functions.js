
// Funcion 

function saludar(alguien) {
    return "Hola" + alguien;
}
console.log(saludar("Carlos"));

//------------------------------------

// Funcion Anonima

const Saludo = function(alguien) {
    return "Hola desde anonima " + alguien;
}
console.log(Saludo("Juan"));

//------------------------------------

// Funcion Arrow

const fSaludoArrow = (alguien) => "Hola desde func. arrow " + alguien;
console.log(fSaludoArrow("Pedro"));

const proceso = (algo, algo2) => {
    return algo + algo2;
}
console.log("Aca el resultado del proceso: " + proceso(1,1));

//------------------------------------


let lista = [1,2,3,4,5];
lista.forEach(e => console.log(e));