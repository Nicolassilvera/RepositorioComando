
# perros

from tkinter.tix import MAX


perro = dict(nombre= "Rogerson", raza="mogodown")

perro1 = {
    "Nombre": "Roger",
    "Raza":"Golden"
}


perro2 = {
    "Nombre": "Firulais",
    "Raza":"Pitbull"
}

perro3 = {
    "Nombre": "Lupe",
    "Raza":"shitzu"
}

zperro4 = {
    "Nombre": "Tigre",
    "Raza":"el de la mascara xd"
}

# lista de perros
numeros = [1,2,3]

# metodos de listas 

numeros.append(4)
print(numeros)

numerosDuplicado = numeros.copy()

numeros.clear()


if len(numeros) < len(numerosDuplicado):
    print(numerosDuplicado)

print('------------------------------------------------')

minPerros = 2

perros = [perro1,perro2,perro3,perro4]
perrosDuplicado = perros.copy()
perros.clear()

if len(perrosDuplicado) > len(perros):
    print(perrosDuplicado[2])

perro1['edad'] = 5

print(perro1)

print('------------------------------------------------')

# esto es una tupla es similar a una lista pero no es modoficable 


paseoDePerros = ('Lunes','Martes','Miercoles','Jueves','Viernes')
print('aca la tupla',paseoDePerros)
listaTupla = list(paseoDePerros)

listaTupla.count('sabado??? q loco mentira a a a a ')
print('aca la tupla casteada',listaTupla)

print('------------------------------------------------')

print('cantidad de atributos de perro1 = ',len(perro1))

perro = dict(nombre= "Rogerson", raza="mogodown")
print(perro)
print('------------------------------------------------')


perros = perrosDuplicado.copy()

if len(perros) < minPerros:
    print('Hay mas perros de lo que se pide :)')
elif  len(perros) > minPerros:
    nuevaLista = perros.copy()
    nuevaLista.count(perro)
    print(nuevaLista, perros)

# otra forma de hacer un if, condicional 

humor = False


#la verdad 1ra siempre                 la mentira dsps xd
print('hola :)') if humor else print(' no me hablen estoy mal') 
print('------------------------------------------------')


opinionUsuario = input(' ingrese el numero que piensa')

listaDeBusqueda = [1,4,3,2,7,8,9,5,6,8]

sePudo = False

if listaDeBusqueda.count(opinionUsuario) > 0:
    sePudo = True
    print('Numero dentro de las lista: ', sePudo)
else:
     print('Numero fuera de rango')