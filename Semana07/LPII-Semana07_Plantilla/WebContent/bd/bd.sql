create database estore;

use estore;

create table tb_usuario(
cod_usu  smallint not null auto_increment,
log_usu  varchar(15),
pas_usu  varchar(15),
nom_usu  varchar(30),
ape_usu  varchar(50),
eda_usu  smallint,
est_usu  char(1),
primary key(cod_usu)
);

insert into tb_usuario values (null,'pepe','pepe','Juan','Perez',30,1);
insert into tb_usuario values (null,'maria','maria','Maria','Fernandez',28,1);
insert into tb_usuario values (null,'sonia','sonia','Sonia','Fabiola',35,1);
insert into tb_usuario values (null,'pedro','pedro','Pedro','Ayala',40,1);
