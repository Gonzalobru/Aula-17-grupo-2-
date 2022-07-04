# **Arquitectura de los SGBDs.**

Un sistema gestor de base de datos (**SGBD** o **DBMS** , por sus siglas en inglés: ***Data Base Management System***) es el software que permite a los usuarios
procesar, describir, administrar y recuperar los datos almacenados en una base de datos. Proporciona un conjunto coordinado de programas, procedimientos y lenguajes
que permiten a los distintos usuarios realizar sus tareas habituales con los datos, garantizando y manteniendo además la seguridad e integridad de los mismos. 

# Niveles de abstracción.
En 1975, el comité **ANSI-SPARC** (_American National Standard Institute - Standards Planning and
Requirements Committee_) propuso una arquitectura de tres niveles para los SGBD cuyo objetivo
principal era el de separar los programas de aplicación de la BD física.

## Nivel externo o de visión.
* El más cercano a lxs **usuarixs**, donde se describen varios Esquemas Externos o Vistas de Usuarixs.
* Se trata de la visión de los datos que poseen lxs usuarixs finales.
Esa visión es la que obtienen a través de las aplicaciones. Las aplicaciones creadas por los
desarrolladores abstraen la realidad conceptual de modo que el usuarix no conoce las relaciones entre
los datos, como tampoco sabe dónde realmente se están almacenando.
* Los esquemas externos los realizan las programadoras/es según las indicaciones formales de los
y las analistas.
Realmente cada aplicación produce un esquema externo diferente (aunque algunos pueden coincidir) o
vista de usuarix. El conjunto de todas las vistas de usuario es lo que se denomina esquema externo
global.

## Nivel conceptual.
* Es el plano o Modelo General de la BD, describe su estructura mediante un Esquema Conceptual realizado por Diseñadores o Analistas.
* Este esquema describe las entidades, atributos, relaciones, operaciones de lxs usuarixs, y restricciones; ocultando los detalles de las estructuras físicas de almacenamiento. Permite modelar un problema real a su forma correspondiente en el ordenador.

## Nivel interno o físico.
* Describe la estructura física de la BD mediante un Esquema Interno.
* Se especifica con un modelo físico y describe los detalles de cómo se almacenan físicamente los datos.
* Esta visión solo la requiere el o la administrador/a.
