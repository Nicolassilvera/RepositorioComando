import  express  from "express";
import router from "./routes/index.js"; // importamos nuestro archivo...
import {logger} from "./middlewares/logger.js";
const app = express();

app.use(express.json());
app.use(express.urlencoded({urlencoded:true}))
app.use("/api", router);


//----------------------------------

app.listen(5052, ()=>{
    console.log("Listen on port 5052.")
})