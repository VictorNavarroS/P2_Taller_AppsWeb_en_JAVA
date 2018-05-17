create database Prueba2

use Prueba2
create table Regiones(
id int primary key,
nombre varchar (50),
valor int
);

create table Resumen (
descripcion varchar(50),
peso int ,
region varchar(50),
rutEmisor varchar(50),
nombreEmisor varchar(50),
apellidosEmisor varchar(50),
direccionEmisor varchar(50),
telefonoEmisor int ,
rutReceptor varchar(50),
nombreReceptor varchar(50),
apellidosReceptor varchar(50),
direccionReceptor varchar(50),
telefonoReceptor int ,
Total int 
);

insert into Regiones values (1,'I Tarapaca',300);
insert into Regiones values (2,'II Antofagasta',300);
insert into Regiones values (3,'III Atacama',250);
insert into Regiones values (4,'IV Coquimbo',250);
insert into Regiones values (5,'V Valparaiso',200);
insert into Regiones values (6,'VI Ohiggins',250);
insert into Regiones values (7,'VII Maule',250);
insert into Regiones values (8,'VIII Biobio',300);
insert into Regiones values (9,'IX La Araucania',300);
insert into Regiones values (10,'X Los Lagos',400);
insert into Regiones values (11,'XI Aysen',500);
insert into Regiones values (12,'XII Magallanes y Antartica',1000);
insert into Regiones values (13,'Region Metropolitana',200);
insert into Regiones values (14,'XIV Los Rios',400);
insert into Regiones values (15,'XV Arica y Parinacota',400);

select * from resumen