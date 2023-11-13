import  express  from "express";
import connection from "./connection/connection.js"
import Role from "./Models/Role.js";
import router from "./Routes/router.js"
//----------------------------------

app.use("/api", router);
const app = express();
// siempre correr estos middleware´s a nivel aplicacion. 
app.use(express.json());


await connection.sync({force:false}).then(()=>{
    app.listen(5052, ()=>{
        console.log("Listen on port 5052.")
    });
});

//----------------------------------
    