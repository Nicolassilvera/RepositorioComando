const pedido = () =>{
    return fetch("https://rickandmortyapi.com/api/character/2");
}

pedido()
.then(data => data.json())
.then(data => console.log(data))
.catch((error)=>console.log(error));