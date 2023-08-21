def CARGA(n):
    alumnos = {}
    for i in range(n):
        while True:
            legajo = int(input(f"Ingrese el legajo del alumno {i + 1}: "))
            if legajo > 0:
                break
            else:
                print("Legajo inválido. Ingrese un valor positivo.")

        apellido_nombre = input(f"Ingrese el apellido y nombre del alumno {i + 1}: ")
        
        while True:
            nota1 = float(input(f"Ingrese la nota 1 del alumno {i + 1}: "))
            nota2 = float(input(f"Ingrese la nota 2 del alumno {i + 1}: "))
            if nota1 >= 0 and nota2 >= 0:
                break
            else:
                print("Notas inválidas. Ingrese valores positivos.")
        
        alumnos[legajo] = [apellido_nombre, nota1, nota2]
    
    return alumnos

def BUSCA(legajo, alumnos):
    if legajo in alumnos:
        print(f"Legajo: {legajo}")
        print(f"Apellido y Nombre: {alumnos[legajo][0]}")
        print(f"Nota 1: {alumnos[legajo][1]}")
        print(f"Nota 2: {alumnos[legajo][2]}")
    else:
        print(f"El legajo {legajo} no se encuentra registrado.")

def MUESTRA(alumnos):
    for legajo, datos in alumnos.items():
        print(f"Legajo: {legajo}")
        print(f"Apellido y Nombre: {datos[0]}")
        print(f"Nota 1: {datos[1]}")
        print(f"Nota 2: {datos[2]}")
        print("-" * 20)

def main():
    n = int(input("Ingrese la cantidad de alumnos (N): "))
    
    while n <= 0:
        print("Cantidad inválida. Ingrese un valor positivo.")
        n = int(input("Ingrese la cantidad de alumnos (N): "))
    
    alumnos = {}
    menu = """
    Menú:
    1. Carga de datos
    2. Búsqueda
    3. Cálculo
    4. Salir
    """
    
    while True:
        print(menu)
        opcion = int(input("Elija una opción: "))
        
        if opcion == 1:
            alumnos = CARGA(n)
        elif opcion == 2:
            if not alumnos:
                print("Debe realizar la carga de datos primero.")
            else:
                legajo_buscar = int(input("Ingrese el legajo a buscar: "))
                BUSCA(legajo_buscar, alumnos)
        elif opcion == 3:
            if not alumnos:
                print("Debe realizar la carga de datos primero.")
            else:
                MUESTRA(alumnos)
        elif opcion == 4:
            print("Saliendo del programa...")
            break
        else:
            print("Opción inválida. Elija una opción del 1 al 4.")

if __name__ == "__main__":
    main()