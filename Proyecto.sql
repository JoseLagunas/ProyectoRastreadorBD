

create database Proyecto;
use Proyecto;
Create table usuario (id_usuario int not null auto_increment primary key, 
nombre varchar(50), 
fecha_registro varchar(50), 
correo varchar(50), 
contrasena varchar(8));


Create table animal(id_animal int not null auto_increment primary key, 
id_usuario int,
nombre varchar(50),
 estado varchar(50),
 edad varchar(50)
);
 alter table animal add constraint id_usuario_fk foreign key (id_usuario) references usuario (id_usuario);
 
Create table limitaciones(id_limitaciones int not null auto_increment primary key,
id_animal int,
distancia_maxima_permitida int,
ubicacion_geografica varchar(50));
alter table limitaciones add constraint id_animal_fk foreign key (id_animal) references animal (id_animal);

Create table rastreador(id_rastreador int not null auto_increment primary key,
id_animal int,
latitud float,
longitud float,
hora timestamp);
alter table rastreador add constraint id_animal1_fk foreign key (id_animal) references animal (id_animal);

 create table reporte(id_reporte int not null auto_increment primary key,
 id_rastreador int,
 ultima_posicion varchar(50),
 hora timestamp);
 alter table reporte add constraint id_rastreador_fk foreign key (id_rastreador) references rastreador (id_rastreador);

select * from animal;
select * from limitaciones;
select * from usuario;
select * from rastreador;

SELECT animal.id_animal, animal.nombre, animal.estado, animal.edad,  limitaciones.distancia_maxima_permitida
FROM animal
LEFT JOIN limitaciones ON animal.id_animal=limitaciones.id_limitaciones;
 
