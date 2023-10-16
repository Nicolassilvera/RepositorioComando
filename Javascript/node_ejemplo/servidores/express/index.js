import express from 'express'
const app = express()

app.use(express.json()); 

app.listen(5052, ()=>{
    console.log("Serven on port 5052");
})

//---------------------------------------------------------------

app.get("/user", (req, res)=>{
    res.json({
        nombre:"Nicolas",
        apellido:"Silvera"
    });
});

app.post("/user", (req, res)=>{
    console.log(req.body);
    res.send("Post request received");
});

app.put("/user/:idUser", (req, res)=>{
    console.log(req.body);
    res.send(`Usuario ${req.params.idUser} actualizado`);
});

app.delete("/user/:idUser",(req, res)=>{
    res.send(`Usuario ${req.params.idUser} deleted`);
});


 