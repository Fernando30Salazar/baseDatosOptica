# creamos la base de datos
create database OptiQ;

# tabla de cliente
create table cliente(
id int not null auto_increment unsigned primary key,
codigoUnico varchar(32) not null unique,
estatus tinyint not null default 1,
);

# tabla de empleado
create table empleado(
id int not null auto_increment unsigned primary key,
codigoUnico varchar(32) not null unique,
rol varchar(10) not null,
usuario varchar(20) not null unique,
password varchar(32) not null,
estatus tinyint not null default 1,
);

# tabla de persona
create table persona(
id int not null auto_increment unsigned primary key,
rfc varchar(13) not null unique,
correo varchar(50) not null,
nombre varchar(50) not null,
apellidoPaterno varchar(50) not null,
apellidoMaterno varchar(50) not null,
genero varchar(1) not null,
telMovil varchar(10) not null,
telCasa varchar(10) not null,
cliente_id int not null,
empleado_id int not null,
constraint fk_persona_cliente foreign key(cliente_id) references cliente(id),
constraint fk_persona_empleado foreign key(empleado_id) references empleado(id),
);
