# creamos la base de datos
create database OptiQ;
use OptiQ;

# tabla de cliente
create table cliente(
id int unsigned not null auto_increment primary key,
codigoUnico varchar(32) not null unique,
estatus tinyint not null default 1
);

# tabla de empleado
create table empleado(
id int unsigned not null auto_increment  primary key,
codigoUnico varchar(32) not null unique,
rol varchar(10) not null,
usuario varchar(20) not null unique,
password varchar(32) not null,
estatus tinyint not null default 1
);

# tabla de persona
create table persona(
id int unsigned not null auto_increment primary key,
rfc varchar(13) not null unique,
correo varchar(50) not null,
nombre varchar(50) not null,
apellidoPaterno varchar(50) not null,
apellidoMaterno varchar(50) not null,
genero varchar(1) not null,
telMovil varchar(10),
telCasa varchar(10),
cliente_id int unsigned,
empleado_id int unsigned ,
constraint fk_persona_cliente 
foreign key(cliente_id) references cliente(id),
constraint fk_persona_empleado 
foreign key(empleado_id) references empleado(id)
);
