print("Hola Mundo, 5 es mayor a 3 ?");
if 1 > 3: # aca tambien puede estar el comentario solo afecta el lado derecho desde el #
    print("5 es mayor a 3")

# aca va un comentario 


jugador = {
    "nombre": "Nico",
    "apellido": "Silvera",
    "edad": 21,
    "mail": "nicolassilverak@gmail.com" 
}

print(jugador)

# ahora un diccionario anidado o una clase con una clase, ej un persona que tiene un domicilio 


domicilio_1 = {
    "calle": "Juan b alberdi ",
    "numero": 326,
    "piso/depto": "5to 16",
    "cp": 1421
}

casaDeLujo = {
    "propietario": jugador,
    "domicilio": domicilio_1
}
print(casaDeLujo)