import express from 'express'
// console.log(express)
const app = express()

const supermans =[{
    id:1,
    nombre: "Nico",
},]

app.get("/superman", (req, res)=>{
    res.send(superman);
})

app.get("/superman/:id", (req, res)=>{
    console.log("Require",req.params.id)
    const {id} = req.params;
    const superMan = supermans.find((superman) =>{
        superman.id === parseInt(id);
    });
    if(!superMan){
        res.status(404).send("No hay superman");
    }
    res.status(200).send(superman)
    res.send("get Superman por id");
});

app.post("/superman/:id", (req, res)=>{
    res.send("Superman");
})

app.put("/superman/:id", (req, res)=>{
    res.send("Superman");
})

app.delete("/superman/:id", (req, res)=>{
    res.send("delete Superman");
})

app.listen(8080, ()=>{
    console.log("http://localhost:8080:")
})