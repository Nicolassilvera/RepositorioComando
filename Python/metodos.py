
def concatenaNombres(lista):
    i = ' '
    for lista in lista:
        i = i  + lista + ' '
    return i


def printDeLista(lista):
    i = 1
    for l in lista:
        print( i, '' , l )
        i+=1




lista = ['hola todo bien?','No te enojes 123', 'Larreta']


printDeLista(lista)


prueba = concatenaNombres(lista)
print(prueba)



variable = 'abcdefghijklmnñopqrstvwxyz'

for c in variable:
    print(c)


# aca le definis un rango al ciclo for, podiendo indicar con 1 numero el rango empezando del 0, o indicando de donde a donde, y (1,10,2) quiere decir que arran ca del 1 hata el 10 yendso de 2 en 2 
for c in range(1,10):
    print(c)