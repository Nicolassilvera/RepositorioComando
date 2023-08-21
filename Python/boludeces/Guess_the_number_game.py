import random

def validarInput():
    i = False
    while i != True:
        user = int(input('Adivina el numero '))
        try:
            var = int(user)
        except:
            var = False
        if var != False:
            i = True

number = random.randint(1,10)
for i in range(0,3):
    user = validarInput()
    if user == number:
        print(' felicitaciones !!! ')
        print(f" y adivinaste el numero, si era el {number}")
        break
if user != number:
    print(f" numeros incorrectos, el numero es {number}")


    
    
    
    
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC
SEFC

SEFC;