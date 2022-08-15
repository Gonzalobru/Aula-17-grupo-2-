/*Punto 1:*/
CREATE DATABASE peluqueria_canina;

USE peluqueria_canina;

CREATE TABLE dueno(
    dni INT(10) NOT NULL,
    nombre VARCHAR(35) NOT NULL,
    apellido VARCHAR(35) NOT NULL,
    telefono INT(20) NOT NULL,
    direccion VARCHAR(40) NOT NULL,
    PRIMARY KEY(dni)
);

CREATE TABLE perro(
    ID_perro INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo VARCHAR(10) NOT NULL,
    dni_dueno INT(10) NOT NULL,
    PRIMARY KEY(ID_perro),
    FOREIGN KEY(dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial(
    ID_historial INT AUTO_INCREMENT NOT NULL,
    fecha DATE NOT NULL,
    perro INT NOT NULL,
    descripcion VARCHAR(120) NOT NULL,
    monto INT(20) NOT NULL,
    PRIMARY KEY(ID_historial),
    FOREIGN KEY(perro) REFERENCES perro(ID_perro)
);

/*Punto 2:*/

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(45321698,'mariana','rodriguez', 3484569715,'luis borges 124'),
    (49568742,'tomas','gonzalez', 3484789632,'los lazaristas 4563'),
    (44658742,'martin','gutierrez', 3484565674,'general lemos 265'),
    (41324695,'karina','acevedo',3484553355,'salvador caspi 1234');

INSERT INTO perro(nombre,fecha_nacimiento,sexo,dni_dueno)
VALUES('pumpi','2016/05/12', 'hembra',45321698),
    ('rasta','2018/06/13', 'macho',49568742),
    ('blacky','2013/07/11', 'hembra',44658742),
    ('quisqui','2020/06/20','hembra',41324695);

INSERT INTO historial(fecha, perro, descripcion, monto)
VALUES('2021/12/21',1,'pelo largo, corte carre, dormilona- baño y corte pelo', 1500),
    ('2021/12/27',2,'pelo corto, piel sensible, juegueton- baño',500),
    ('2022/02/05',3,'docil, inquieta- baño y corte de uñas',850),
    ('2022/02/07',4,'canichita dulce y tierna-baño y corte',1500);

/* Punto 6: Obtener todos los perros que asistieron a la peluquería en 2022. */
SELECT perro FROM historial WHERE fecha LIKE '2022/%';





