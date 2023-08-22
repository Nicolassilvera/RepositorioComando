a = "--------------------------------------------------------------------------------------------------------------------------------"

# imprimir una cadena o string
print(a)
cadena = "nicolas"
print(list(cadena))

# acceder por indice igual ue en java, pero puedo acceder en un rango [1:2]
print(a)
letras = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
letras[2:5] = ['C', 'D', 'E'] # = desde pos 2 a 5 sin incluirlo
print (letras)

# vaciar una lista
print(a)
letras[:] = []
print (letras)

# agregar a la lista 
print(a)
cubos = [1, 8, 27, 0]
cubos.append(125)  # agrega el cubo de 5
cubos.append(6 ** 3)  # esto es raiz
cubos.append(cubos[1]*2)
print (cubos)

# agregar a una posicion especifica sin pisar el valor que esta en esa posicion 
print(a)
colores = [1, 2, 3, 4]
print(colores)
colores.insert(2, "hola")
print(colores)

# eliminar 
print(a)

colores = ['rojo', 'azul', 'verde', 'amarillo']
del colores[1]
print(colores)
 # guarda con esto ue da error --> del colores
 # print(colores)

# .pop() mismo comportamiento que una pila remueve el ultimo elemento
print(a)
colores = ['rojo', 'azul', 'verde', 'amarillo']
colores.pop()
print(colores)
colores.pop()
print(colores)

# .sort() ordena de menor a mayor
print(a)
nros = [10, 5, 1, 60]
nros.sort()
print(nros)

    # reverse= true --> ordena de mayor a menor, esto te deja la lista asi 
colores = ['rojo', 'azul', 'verde', 'amarillo'] 
colores.sort(reverse=True)
print(colores)
colores.sort(reverse=False)

# .sorted() hace lo mismo pero no modifica la lista final solo la ordena para verla por ej
print(sorted(colores,key=len))
print(colores)

# .extend() permite agregar 

colores.extend(['rosa', 'dorado'])

# .sort() ordena 
nros = [10, 5, 1, 60]
nros.sort(reverse = True)
print(nros)

#------------------------------------------------------------------------------------------------------
print("#------------------------------------------------------------------------------------------------------")
bisiesto = True
mes = 1
dias_mes = [31, 28 + bisiesto , 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print(dias_mes[mes - 1])



print("#------------------------------------------------------------------------------------------------------")


def diaSiguienteE(dia, mes, anio):
    # Determinar si el año es bisiesto
    if anio % 4 == 0 and (anio % 100 != 0 or anio % 400 == 0):
        bisiesto = True
    else:
        bisiesto = False

    # Determinar los días en cada mes
    dias_mes = [31, 28 + bisiesto, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    # Incrementar el día
    dia += 1

    # Verificar si el día es mayor al número de días en el mes
    if dia > dias_mes[mes - 1]:
        dia = 1
        mes += 1
        if mes > 12:
            mes = 1
            anio += 1

    return (dia, mes, anio)

# Ejemplo de uso
fecha = (31, 12, 2020)
fecha_siguiente = diaSiguienteE(*fecha)
print(fecha_siguiente)

print("#------------------------------------------------------------------------------------------------------")


lista = [1,2,3,4,5,6,7,8,9,]
lista.reverse()
print(lista)

for l in lista:
    print(l)
print("#------------------------------------------------------------------------------------------------------")
  
lista1 = ['cod1', 'cod2', 'cod3','kdjfd', 'sdsds']
lista2 = ["rojo"]
for l1 in zip(lista1, lista2):
    print(l1)