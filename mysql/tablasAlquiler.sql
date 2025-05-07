drop database if exists 03_alquiler;
create database 03_alquiler;
use 03_alquiler;

create table marcas(
id_marca int AUTO_INCREMENT,
marca varchar(45) NOT NULL,
primary key (id_marca),
unique key (marca)
);

create table modelos(
id_modelo INT AUTO_INCREMENT, 
modelo varchar(45) NOT NULL,  
fk_marca int NOT NULL, 
primary key(id_modelo), 
unique key(modelo), 
constraint marca_modelo foreign key (fk_marca) 
	references marcas(id_marca)
);

create table coches(
id_coche INT AUTO_INCREMENT, 
matricula varchar(10) NOT NULL,
precio decimal(10,2) NOT NULL,  
color varchar(20),
fk_modelo int NOT NULL, 
primary key(id_coche), 
constraint modelo_coche foreign key (fk_modelo) 
	references modelos(id_modelo)
);

create table clientes(
id_cliente int AUTO_INCREMENT,
dni varchar(20) NOT NULL,
nombre varchar(45) NOT NULL,
apellido1 varchar(20) NOT NULL,
apellido2 varchar(20) NOT NULL,
telefono int,
direccion varchar(30) NOT NULL,
codpostal int,
primary key (id_cliente),
unique key (dni)
);

create table reservas(
id_reserva INT AUTO_INCREMENT, 
precioreserva decimal(10,2) NOT NULL,  
fechainicio date NOT NULL,
fechafinal date NOT NULL,
fk_cliente int NOT NULL, 
primary key(id_reserva),  
constraint reservacliente foreign key (fk_cliente) 
	references clientes(id_cliente)
);

create table avales(
porcentage decimal(5,2) not null,
fk_reserva int not null,
fk_clienter int not null,
primary key (fk_clienter, fk_reserva),
foreign key (fk_clienter)
	references clientes(id_cliente),
foreign key (fk_reserva)
	references reservas(id_reserva)
);

create table cochesreservas (
fk_cochere int not null,
fk_reservare int not null,
litrosgasolina int not null,
kminicio int not null,
kmfin int,
primary key (fk_cochere, fk_reservare),
foreign key (fk_reservare) references reservas(id_reserva),
foreign key (fk_cochere) references coches(id_coche)
);

-- hola nsjhdsghsh