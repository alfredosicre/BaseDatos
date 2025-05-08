drop database if exists 03_alquiler_coches;
create database 03_alquiler_coches;
use 03_alquiler_coches;

create table marcas(
	id_marca int AUTO_INCREMENT,
    marca varchar(30) not null unique,
    primary key (id_marca)
);

create table modelos(
	id_modelo int AUTO_INCREMENT,
    modelo varchar(30) not null unique,
    fk_marca int not null,
    primary key(id_modelo),
	foreign key (fk_marca) references marcas(id_marca)

);

create table coches(
	id_coche int AUTO_INCREMENT,
    matricula varchar(10) not null unique,
    color varchar(20) not null,
    precio_alquiler decimal(8,2) not null,
    fk_modelo int not null,
    primary key(id_coche),
	foreign key (fk_modelo) references modelos(id_modelo)
);

create table clientes(
	id_cliente int AUTO_INCREMENT,
    nombre varchar(45) not null,
    dni varchar(15) not null unique,
    direccion varchar(45) not null,
    telefono varchar(20) not null,
    primary key(id_cliente)
);

create table reservas(
	id_reserva int AUTO_INCREMENT,
    fecha_inicio date not null,
    fecha_fin date not null,
    precio_total decimal (10,2),
    fk_cliente int not null,
    primary key (id_reserva),
    foreign key (fk_cliente) references clientes(id_cliente)
);

create table coches_por_reservas(
	fk_coche int,
    fk_reserva int,
    litros int not null,
    km_inicio int not null,
    km_fin int,
    primary key (fk_coche, fk_reserva),
    constraint cpr_coches foreign key (fk_coche) references coches(id_coche),
    foreign key (fk_reserva) references reservas(id_reserva)
);

create table avales(
	fk_cliente int,
    fk_reserva int,
    porcentaje decimal(3,2) not null,
    primary key (fk_cliente, fk_reserva),
    foreign key (fk_cliente) references clientes(id_cliente),
    foreign key (fk_reserva) references reservas(id_reserva)
);