create table marcas(
	id_marca serial not null,
    marca varchar(45) not null,
    primary key(id_marca),
    unique (marca)
);

create table modelos(
	id_modelo serial not null,
    modelo varchar(45) not null,
    fk_marca int not null,
    primary key(id_modelo),
    foreign key(fk_marca) references marcas(id_marca)
);

create table plazas_garaje(
	id_plaza serial not null,
    descripcion varchar(45) not null,
    primary key(id_plaza),
	unique (descripcion)
);

create table coches(
	id_coche serial not null,
    matricula varchar(10) not null,
    precio_alquiler decimal(8,2) not null,
    color varchar(15),
    fk_modelo int not null,
    fk_plaza int not null,
    primary key(id_coche),
    unique (matricula),
    unique (fk_plaza),
    foreign key(fk_modelo) references modelos(id_modelo),
    foreign key(fk_plaza) references plazas_garaje(id_plaza)
);

create table clientes (
	id_cliente serial not null,
    nombre varchar(45) not null,
    dni varchar(15) not null,
    direccion varchar(45),
    telefono varchar(15),
    primary key(id_cliente),
	unique (dni)
);

create table reservas(
	id_reserva serial not null,
    fecha_inicio date not null,
    fecha_fin date,
    precio_total decimal(8,2),
    fk_cliente int not null,
    primary key(id_reserva),
    check (fecha_fin >= fecha_inicio),
    foreign key(fk_cliente) references clientes(id_cliente)
);

create table coches_por_reserva (
	fk_coche int not null,
    fk_reserva int not null,
    km_inicio int not null,
    km_fin int,
    precio decimal(8,2),
    litros_gasolina decimal(6,2) not null,
    primary key(fk_coche, fk_reserva),
    foreign key(fk_coche) references coches(id_coche),
    foreign key(fk_reserva) references reservas(id_reserva),
    check(km_fin >= km_inicio)
);

create table avales (
	fk_reserva int not null,
    fk_cliente int not null,
    porcentaje decimal(5,2) not null,
    primary key(fk_reserva, fk_cliente),
    foreign key(fk_reserva) references reservas(id_reserva),
    foreign key(fk_cliente) references clientes(id_cliente)
);

