# 6) crear una tupla de python con el nombre de historial2 la cual entrega los siguientes valores:
# 23500, 5960,2300, 10200, 8900
# Que representa montos de atencion en pesos por diferentes servicios/consultas de la mascota frida. 
# Calcular el moonto total gastado a lo largo del tiempopor atencion de frida. Crear una funcion que cuente,
#cuantos gastos fueron superiores a 5000 mostrando el numero calculado en pantalla.

def sumar(valores):
    
    if isinstance(valores, (tuple)): 
        acumulador = 0
        for i in valores:
            acumulador += i
            
        return acumulador 
    
    else:
        raise ValueError ("ha pasado un argumento que no es tupla: ")

Historial2= (23500, 5960, 2300, 10200, 8900)
MontoTotal= sumar(Historial2)
historial2= (23500, 5960, 10200, 8900)
Montosup5000= sum(historial2)
print("el resultado de sumar el historial2 {} es igual a {}".format(Historial2, MontoTotal))
print("el resultado de sumar el monto superior a 5000 {} es igual a {}".format(historial2 ,Montosup5000))

#---------------------------------------------------------------------------------------------------

Historial2 = (23500, 5960, 2300, 10200, 8900)

total = sum(list(Historial2)) 
print("total gastado por atención de Frida es:", total)
suma = sum((23500, 5960, 10200, 8900))

for i in Historial2:
    if i > 5000:
        suma += 0
    else:
        suma += 0

print("la cantidad de prestaciones a Frida de la clinica que superan los 5000 es: ", str('23500 + 5960 + 10200 + 8900'), "=", suma)

# ejercicio 7: crear una tupla en python con le nombre de "historial", la cual contenga los siguientes valores:
#9530, 4120, 4580, 1500, 890, 7516, 426
#que representa montos de atencion en pesos por diferentes servicios/consultas de la mascota "lennon".
#calcular el promedio de gastos en pesos por atencion de lennon mostrando en pantalla.
#si el promedio es mayor a 4500 indicar con un msj se ha excedido del gasto promedio para su mascota.

Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
suma= 0
i= 0
for elemento in Historial3:
     suma += elemento
     i += 1
sumatotal= sum(Historial3)
promedio= suma / i
if 4500 > promedio: 
     print("lenon ha gastado: ", sumatotal)
else:
    print("se ha excedido del gasto promedio para su mascota: ")

print("el promedio de gasto de lennon es: ", promedio)

#---------------------------------------------------------------------------------------------------------

Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)

promedio = sum(list(Historial3))/len(Historial3) 
print("El gasto medio de atención a “Lennon” es:", promedio)

for i in Historial3:
    if i < 4500:
        print("El monto de atención es:", i)
    else:
        print("Se ha excedido del gasto promedio para su mascota: ", i)