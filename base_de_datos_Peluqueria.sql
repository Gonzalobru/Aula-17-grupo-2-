-- PUNTO 1 -- 

/*creacion de la base de datos*/
CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

/*tabla dueno */
CREATE TABLE dueno(
Dni INT(12) NOT NULL,
Nombre VARCHAR(80) NOT NULL,
Apellido VARCHAR(80) NOT NULL,
Telefono VARCHAR(16) NOT NULL,
primary key(Dni)
);

 /*tabla perro*/
CREATE TABLE IF NOT EXISTS perro(
ID_perro INT(12) NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(80) NOT NULL,
Fecha_nac DATE NULL,
Sexo char(4) NOT NULL,
DNI_dueno INT(12) NOT NULL,
PRIMARY KEY(ID_perro),
FOREIGN KEY(DNI_dueno) REFERENCES dueno(Dni)
);

 /*  base historial */
CREATE TABLE IF NOT EXISTS historial(
ID_historial INT(12) NOT NULL AUTO_INCREMENT,
Fecha DATE NOT NULL,
Perro INT(12) NOT NULL,
Descripcion VARCHAR(120) NULL,
PRIMARY KEY(ID_historial),
FOREIGN KEY(Perro) REFERENCES perro(ID_perro)
);


/*PUNTO 2*/

/* Se insertan nuevos datos*/
INSERT INTO dueno(Dni,Nombre,Apellido,Telefono,Domicilio)
VALUES(26374081,"Romina","Moriente","11467318",libertador 145);
INSERT INTO dueno(Dni,Nombre,Apellido,Telefono,Domicilio)
VALUE(36001407,"Catalina","Dugan","1167892531",ayacucho 624);
INSERT INTO dueno(Dni,Nombre,Apellido,Telefono,Domicilio)
VALUES(30002045,"Ignacio","Balverde","153218974",Beiro 9631);

INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_dueno)
VALUES("Pipo","2012-05-12","H",18001407);
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_dueno)
VALUES("Melba","2015-03-12","H",38002045);
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_dueno)
VALUES("Chatran","2022-05-5","H",28001407);


INSERT INTO historial(Fecha,Perro,Descripcion)
VALUES("2016-02-12",2,"Presenta mastitis y bajo peso posiblemente parasitos");
INSERT INTO historial(Fecha,Perro,Descripcion)


VALUES("2021-09-10",1,"Perro rescatado de la calle , parasitos sarna y bajo peso");


/*PUNTO 9*/

UPDATE dueno SET domicilio = 'Libertad 123' WHERE domicilio 'libertador 145'
