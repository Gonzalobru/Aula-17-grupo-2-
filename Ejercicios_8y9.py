#Hi, a continuación adjunto las consignas de los ejercicios 8) y 9) con sus respectivas soluciones:

'''
8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
7510, 7960, 76180, 800, 4100
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una
función para determinar el valor mínimo de atención gastada en “Olivia” mostrándolo en pantalla.
'''
def monto_min_gastado(mascota):
    print('El valor mínimo gastado en “Olivia” es de ${}.'.format(min(mascota)))

Historial4 = 7510, 7960, 76180, 800, 4100,

monto_min_gastado(Historial4)

'''
9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:
8520, 9510, 7530, 3570, 1590
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. Crear una
función para determinar el valor máximo de atención gastada en “Toto”.
'''
def monto_max_gastado(mascota):
    print('El valor máximo gastado en “Toto” es de ${}.'.format(max(mascota)))

Historial5 = 8520, 9510, 7530, 3570, 1590,

monto_max_gastado(Historial5)
