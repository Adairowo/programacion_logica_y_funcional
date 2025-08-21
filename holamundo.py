print("Hola Mundo")

hola="Hola Mundo"
#print(hola[1:2])
arreglo=[]
for x in range(0,5):
    entrada = input("Introduce el numero: ")
    arreglo.append(int(entrada) )
print(arreglo)


def sumar(lista):
    resultado=0
    for x in lista:
        resultado+= x

    return resultado

print(f"El resultado es:{ sumar(arreglo) } ")
r1 = sumar(arreglo) ** 5
print(f"** es:  (r1) " )
r2= sumar(arreglo) // 31
