drop database if exists 09_abogados;
create database 09_abogados;

use 09_abogados;

create table personas(
	id_persona int auto_increment,
    tipo_doc varchar(3) not null,
    nro_doc varchar(15) not null,
    nombre varchar(25) not null,
    apellidos varchar(25) not null,
    direccion varchar(45) not null,
    telefono varchar(15) not null,
    primary key(id_persona),
    unique key(tipo_doc, nro_doc)
);

create table clientes(
	id_cliente int,
    fecha_alta date not null,
    primary key(id_cliente),
    foreign key(id_cliente) references personas(id_persona)
);

create table empleados(
	id_empleado int,
    fecha_ingreso date not null,
    primary key(id_empleado),
    foreign key(id_empleado) references personas(id_persona)
);

create table procuradores(
	id_procurador int,
    nro_matricula varchar(15) not null unique,
    primary key(id_procurador),
    foreign key(id_procurador) references empleados(id_empleado)
);

create table abogados(
	id_abogado int,
    nro_matricula varchar(15) not null unique,
    primary key(id_abogado),
    foreign key(id_abogado) references empleados(id_empleado)
);

create table especialidades(
	id_especialidad int auto_increment,
    especialidad varchar(35) not null unique,
    primary key(id_especialidad)
);

create table especialidades_abogados(
	fk_abogado int,
    fk_especialidad int,
    primary key(fk_abogado, fk_especialidad),
    foreign key(fk_abogado) references abogados(id_abogado),
    foreign key(fk_especialidad) references especialidades(id_especialidad)
);

create table estados(
	id_estado int auto_increment primary key,
    estado varchar(45) not null unique
);

create table expedientes(
	id_expediente int auto_increment primary key,
    descripcion varchar(35) not null,
    descripcion_detallada text,
    fecha_inicio date not null,
    fecha_fin date,
    fk_abogado int not null,
    fk_cliente int not null,
    fk_estado int not null,
    foreign key(fk_abogado) references abogados(id_abogado),
    foreign key(fk_cliente) references clientes(id_cliente),
    foreign key(fk_estado) references estados(id_estado)
);

create table intervenciones(
	fk_empleado int,
    fk_expediente int,
    fecha date,
    hora time,
    descripcion varchar(35) not null,
    primary key(fk_empleado, fk_expediente, fecha, hora),
    foreign key(fk_empleado) references empleados(id_empleado),
    foreign key(fk_expediente) references expedientes(id_expediente)
);