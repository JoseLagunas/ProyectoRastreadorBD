create database Proyecto;
use Proyecto;
Create table usuario (id_usuario int not null auto_increment primary key, 
nombre varchar(50), 
fecha_registro varchar(50), 
correo varchar(50), 
contrasena varchar(8));


Create table animal(id_animal int not null auto_increment primary key, 
nombre varchar(50),
 estado varchar(50),
 edad varchar(50));
 
Create table limitaciones(id_limitaciones int not null auto_increment primary key,
distancia_maxima_permitida varchar(50),
ubicacion_geografica varchar(50));

Create table rastreador(id_rastreador int not null auto_increment primary key,
latitud varchar(50),
longitud varchar(50),
ultima_posicion varchar(50),
hora datetime);
 