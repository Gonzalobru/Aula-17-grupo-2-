#Ejercicio 12 'Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.'


create database Veterinaria;
use Veterinaria;
select * from Perro where Sexo = 'm' and Fecha_nac >= '2020-01-01'; #Consulta que obtiene a los perros


create table Dueno
(
DNI int not null,
Nombre varchar(30),
Apellido varchar(30),
Telefono int,
Direccion varchar(35),
constraint DNI primary key (DNI)
);
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(1, 'Juan', 'Perez', 15553333, 'Caferata 1524'),
(2, 'Martin', 'Dominguez', 15335766, 'Cordoba 1330'),
(3, 'Pedro', 'Saranitez', 15677629, 'Av de Mayo 255'),
(4, 'Claudio', 'Aguero', 15434582, 'Estrada 1793'),
(5, 'Laureano', 'Grilli', 15243788, 'Pinto 763'),
(6, 'Tomas', 'Caruso', 15795493, 'Larrea 2237'),
(7, 'Pedro', 'Lanternier', 15655733, 'Lavalle 144'),
(8, 'Joaquin', 'Muller', 15921871, 'Libertad 930'),
(9, 'Enzo', 'Raimundo', 15128124, 'Santa Fe 1270'),
(10, 'Rodrigo', 'Robledo', 15041092, 'Zorzal 165');



create table Perro
(
ID_Perro int not null,
Nombre varchar(30),
Fecha_nac date,
Sexo varchar(10),
DNI_dueno int,
constraint ID_Perro primary key (ID_Perro),
constraint FDNI_Dueno foreign key (DNI_dueno) references Dueno(DNI)
);
insert into Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(1, 'Coco', '2013-07-07', 'm', 3),
(2, 'Margarita', '2002-06-13', 'f', 1),
(3, 'Capitan', '2014-05-22', 'm', 3),
(4, 'Rayo', '2020-03-19', 'm', 10),
(5, 'Virginia', '2022-03-03', 'f', 4),
(6, 'Ramon', '2007-05-18', 'm', 8),
(7, 'Jana', '2016-01-03', 'f', 6),
(8, 'Pepe', '2005-01-21', 'm', 9),
(9, 'Chavo', '2017-04-13', 'm', 7),
(10, 'Maya', '2021-07-15', 'f', 1);




create table historial
(
ID_Historial int not null,
Fecha date,
Perro int,
Descripcion varchar(30),
Monto int,
constraint ID_historial primary key (ID_Historial),
constraint FPerro foreign key (Perro) references Perro(ID_Perro)
);

insert into historial(ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
(1, '2020-07-07', 1, 'Baño y Corte', 1400),
(2, '2022-06-03', 5, 'Baño y corte', 1900),
(3, '2015-06-13', 2, 'Baño y Corte', 350),
(4, '2016-05-22', 3, 'Baño', 350),
(5, '2021-03-19', 4, 'Baño, Corte y Pulgas', 2000),
(6, '2022-07-15', 10, 'Corte y Pulgas', 1600),
(7, '2020-01-03', 6, 'Baño, Corte y Pulgas', 1650),
(8, '2017-01-03', 7, 'Baño, Corte y Pulgas', 1000),
(9, '2006-01-21', 8, 'Baño, Corte y Pulgas', 75),
(10, '2018-04-13', 9, 'Baño, Corte y Pulgas', 1350);


select * from Perro where Sexo = 'm' and Fecha_nac >= '2020-01-01';



