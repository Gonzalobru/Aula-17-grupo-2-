create database peluqueria_canina
use peluqueria_canina



create table Dueño (
DNI_d int not null,
Nombre_d varchar (50),
Apellido_d varchar(50),
Telefono_d bigint,
Direccion_d varchar (50),
constraint pk_dd primary key (DNI_d)
)

insert into Dueño values (37856942, 'Pedro', 'Gomez', 1559682436, 'Concordia') 
select*from Dueño



create table Perro (
ID_Perro_p varchar (50),
Nombre_p varchar (50),
Fecha_Nacimiento_p datetime,
Sexo_p varchar (20),
DNI_d1 int not null,
constraint pk_pp primary key (ID_Perro_p), constraint fk_Dueño foreign key (DNI_d1) references Dueño (DNI_d)
)

insert into Perro values (3,'Coco','2012-08-28','Macho',37856942) 
select * from perro



create table historial(
id_historial_h int not null,
fecha_h datetime,
perro_h varchar (20),
descripcion_h varchar (100),
monto_h int,
constraint pk_hh primary key (id_historial_h),
constraint fk_perro foreign key (perro_h) references perro (id_perro_p)
)

Select Nombre_p, Nombre_d from Perro inner join Dueño on Perro.DNI_d1 = Dueño.dni_d
where Nombre_d = "Pedro"