import http from "node:http"

const server = http.createServer((peticion,respuesta)=>{
    console.log(peticion);
    if(peticion.method == "GET" && peticion.url == "/"){
        respuesta.end("Batman");
    } else if(peticion.method == "GET" && peticion.url == "/user"){
        respuesta.end("Todos los usuarios");
    }
});

server.listen(3001, ()=>{
    console.log("server listen http://localhost:8080:")
})