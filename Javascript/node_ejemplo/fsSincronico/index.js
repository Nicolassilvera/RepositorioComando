// fs => file system 
const fs = require('node:fs');

const read = () =>{
    try {
        return fs.readFileSync("./javascript/node_ejemplo/fsSincronico/info.txt","utf-8");     
    } catch (error) {
        return error.message
    }
};

 //console.log(read())

const write = (newText) =>{
    try {
        fs.writeFileSync("./javascript/node_ejemplo/fsSincronico/info.txt", newText)
    } catch (error) {
        return error.message;
    }
}

//write("hoy termino la clase")
//console.log(read())

const update = (text) =>{
    try {
        return fs.appendFileSync("./javascript/node_ejemplo/fsSincronico/info.txt", text)
    } catch (error) {
        return error.message;
    }
}

console.log(update("\nesto es un update..."));
