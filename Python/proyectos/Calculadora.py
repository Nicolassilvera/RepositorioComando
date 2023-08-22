


def menu():

    def mostrarLista(lista):
        for o in lista:
            print('     ', o)

    def presentacion():
        print(' _____________________________________________________________________________________________________________________________________________________')
        print('')
        print('|                                Bienvenidx a la App de Nico, ¿ En que te puedo ayudar?                                                               |')
        print(' _____________________________________________________________________________________________________________________________________________________ ')
    
    def calculadora():

        def tryInt(posibleNumero):
            try:
                var = int(posibleNumero)
            except:
                var = 'n'

            mensaje = ''

            if var == 'n':
                mensaje = '         El dato no es un entero'
                print(mensaje)

            return var  

        def inputDeNumero():     
            i = 'si'

            while i != 'n':        
                dato1 = input('Ingrese un numero: ')
                confirmacion = tryInt(dato1)
            

                if confirmacion != 'n':
                    i = 'n'

            return confirmacion 
        
        def validacionEleccion(eleccion):

            print('')
            if eleccion == '+':

                num1 = inputDeNumero()
                num2 = inputDeNumero()
                print('         ____________________________________________')
                print('                 Resultado ---> ',num1 + num2)
                print('         ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨')
                calculadora()

            elif eleccion == '-':

                num1 = inputDeNumero()
                num2 = inputDeNumero()
                print('         ____________________________________________')
                print('                 Resultado ---> ',num1 - num2)
                print('         ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨')
                calculadora()

            elif eleccion == '*':

                num1 = inputDeNumero()
                num2 = inputDeNumero()
                print('         ____________________________________________')
                print('                 Resultado ---> ',num1 * num2)
                print('         ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨')
                calculadora()

            elif eleccion == '/':

                num1 = inputDeNumero()
                i = 1

                while i != 0:                    
                    num2 = inputDeNumero()
                    if num2 != 0:
                        i = 0
                    else:
                        print('         No se puede dividir por 0 ,cambie el numero ...')

                print('         ____________________________________________')
                print('                 Resultado ---> ',num1 / num2)
                print('         ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨')
                calculadora()

            elif eleccion == 'cal':
                presentacion()
                opciones()
            else:
                print('         Ingresaste cualquier cosa jajajaj ;) , ahora a ingresar de vuelta ')
                print('')
                calculadora()
        
        # datos
        i=''
        operaciones = ['[+] SUMA','[-] RESTA','[*] MULTIPLICACION','[/] DIVISION','[cal] Cerrar calculadora']

        # Mostraropciones
        print(' ________________________________________________________________________________________')
        print('             Abriendo calculadora°°°  , cargando opciones                                 ')
        print(' ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨')
        print()
        mostrarLista(operaciones)

        while i != 'esc':
            print('')
            eleccion = input(' respuesta: ')
            i = eleccion
            validacionEleccion(eleccion)

            if eleccion == '+':
                print()

    def adivinanza():
        #sefs
        print()



















    def opciones():

        # datos
        opcionesLista = ['[cal] Calculadora','[adi] Adivinanza','[pro] Proximamente','[esc] Salir']
        i = ''

        # Muestra las opciones que hay
        print(' _____________________________________________________________________________________________________________________________________________________')
        print('')

        mostrarLista(opcionesLista)
        

        # validacion para las posibles elecciones 
        while i != 'esc':
            print('')
            eleccion = input(' respuesta: ') 
            
            
            if eleccion == 'cal':
                calculadora()
            elif eleccion == 'adi':
                adivinanza()
            elif eleccion == 'esc':
                print('         Cerrando, Nos vemos pronto :) ')
                i = 'esc'
            else:
                print('         Valor ingresado desconocido')






    presentacion()
    opciones()            

menu()

















