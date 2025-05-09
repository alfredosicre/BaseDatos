-- creamos estas tablas en la base de datos 04_reflexivas que es la que tengo activa.
UNLOCK TABLES;
drop table if exists conexiones;
drop table if exists aeropuertos;

create table aeropuertos(
	idaeropuerto int primary key auto_increment,
    aeropuerto varchar(35) not null unique,
    ciudad varchar(30) not null
);

create table conexiones(
	fk_aeropuerto_origen int,
    fk_aeropuerto_destino int,
    primary key (fk_aeropuerto_origen, fk_aeropuerto_destino),
    foreign key (fk_aeropuerto_origen) references aeropuertos(idaeropuerto)
);

insert into aeropuertos values (null, 'Barajas', 'Madrid');
insert into aeropuertos values (null, 'El Prat', 'Barcelona');
insert into aeropuertos values (null, 'Ezeiza', 'Buenos Aires');
insert into aeropuertos values (null, 'VillaCisneros', 'Sahara');
insert into aeropuertos values (null, 'Sevilla', 'Sevilla');
insert into aeropuertos values (null, 'Paris', 'Paris');

insert into conexiones values (1,3);
insert into conexiones values (3,1);
insert into conexiones values (2,5);
insert into conexiones values (5,2);
insert into conexiones values (2,3);
insert into conexiones values (3,2);