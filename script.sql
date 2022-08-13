#Punto 1
use peluqueria_canina;
create table dueño(
DNI int not null primary key,
Nombre varchar(20),
Apellido varchar(20),
Telefono int,
Direccion varchar(30)
);

create table perro(
ID_Perro int auto_increment primary key not null,
Nombre varchar(20),
Fecha_nac datetime,
Sexo varchar(20),
DNI_dueño int not null,
foreign key(DNI_dueno) references dueño(DNI)
);

create table historial(
ID_Historial int auto_increment primary key not null,
Fecha datetime,
Perro int not null,
foreign key(Perro) references perro(ID_Perro),
Descripcion varchar(300),
Monto int
);

#Punto 2
insert into dueño(DNI,Nombre,Apellido,Telefono,Dirección) values (
12345678,
'Paula',
'Gomez',
12345678,
'Frucutoso Rivera 1234'
);
insert into perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueño) values (
3,
'Juana',
'2020-03-24',
'Hembra',
12345678
);
insert into historial(ID_Historial,Fecha,Perro,Monto) values (
4,
'2022-08-10',
3,
2500
);

#Registros para realizar consulta
insert into dueño(DNI,Nombre,Apellido,Telefono,Dirección) values (
75236984,
'Maria',
'Rodriguez',
3512298763,
'Av Patria 485'
);
insert into perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueño) values (
1,
'Shanni',
'2022-06-12',
'Hembra',
75236984
);
insert into historial(ID_Historial,Fecha,Perro,Monto) values (
2,
'2022-08-10',
1,
1200
);

insert into dueño(DNI,Nombre,Apellido,Telefono,Dirección) values (
43592685,
'Candela',
'Ramirez',
3511637824,
'Bv Chacabuco 311'
);
insert into perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueño) values (
14,
'Simon',
'2018-02-27',
'Macho',
43592685
);
insert into historial(ID_Historial,Fecha,Perro,Monto) values (
1,
'2022-08-10',
14,
5400
);

#Punto 4 (punto a elección)
UPDATE perro set Fecha_nac='2020-03-25' where Nombre='Juana';
