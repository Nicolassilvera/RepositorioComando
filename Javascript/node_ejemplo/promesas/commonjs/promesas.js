//const {numeros,letras} = require("./utils/arrays.js");
//console.log(numeros);

const [numeros, letras] = require("./utils/arrays.js");

console.log(numeros);
console.log(letras);

//---------------------------------------------------------------------------------

console.log("inicio")

setTimeout(()=>{
    console.log("promesa")
},10000)  /* el parametro final son los segundos en tirar la respuesta ej: siemrpe con 000 por los milesimos de seg*/

console.log("fin")
               /*true, false */
new Promise((resolve, reject)=>{
    if(1> 0){
        resolve("Si 1 es mayor a 0")
    }else{
        reject("Nuca pasaria esto ...");
    }
})
 .then((resolve)=> console.log(resolve))
 .catch((reject)=>console.log(reject))
 .finally(()=> console.log(" Finally es el final independientemente de resolve y reject se muestra"));