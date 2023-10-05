const fs = require('node:fs');

const packageJSonUpdater = () =>{
    try {
        // leo y lo capturo en una var
        const file = fs.readFileSync("./javascript/node_ejemplo/fsSincronico/package.json","utf-8");  
        // lo parseo, osea lo vuelvo un obj de js
        const change = JSON.parse(file);
        // le agrego u oero una vez llegado a aca ...
        change.scripts.start = "node .";
        // el .stringify lo vuelve a su estado original de JSON
        const json = JSON.stringify(change,null,4);
        // Ctrol + S
        fs.writeFileSync("./javascript/node_ejemplo/fsSincronico/package.json", json)

        return "Salio todo bien";
    } catch (error) {
        return error.message
    }
}

console.log(packageJSonUpdater());