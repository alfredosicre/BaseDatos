UNLOCK TABLES;
CREATE DATABASE  IF NOT EXISTS 04_reflexivas;
USE 04_reflexivas;

DROP TABLE IF EXISTS empleados;

CREATE TABLE empleados(
  idempleados int NOT NULL,
  nombre varchar(45) DEFAULT NULL,
  apellidos varchar(45) DEFAULT NULL,
  dni varchar(10) DEFAULT NULL,
  fecha_nacimiento date DEFAULT NULL,
  fk_jefe int,
  PRIMARY KEY (idempleados),
  foreign key (fk_jefe) references empleados(idempleados)
);

LOCK TABLES empleados WRITE;

INSERT INTO empleados VALUES (1,'Javier','Ortega Desio','4473754P','1984-10-2',null);
INSERT INTO empleados VALUES (2,'Marcos','Ayerza','7940816K','1984-5-8',null);
INSERT INTO empleados VALUES (3,'Jeronimo','De La Fuente','5169607A','1986-6-7',null);
INSERT INTO empleados VALUES (4,'Juan Martin','Fernandez Lobbe','5145360O','1983-1-17',null);
INSERT INTO empleados VALUES (5,'Santiago','Garcia Botta','3763193R','1986-1-26',null);
INSERT INTO empleados VALUES (6,'Lucas','Gonzales Amorosino','2807609L','1993-4-15',null);
INSERT INTO empleados VALUES (7,'Marinao','Galarza','1485392G','1988-2-19',null);
INSERT INTO empleados VALUES (8,'Pablo','Matera','6089091L','1974-5-23',null);
INSERT INTO empleados VALUES (9,'Juan','Pablo Socino','6055307E','1975-8-17',null);
INSERT INTO empleados VALUES (10,'Guido','Petti Pagadizabal','2773999I','1997-2-16',null);
INSERT INTO empleados VALUES (11,'Juan','Figallo','8739151Y','1971-12-9',null);
INSERT INTO empleados VALUES (12,'Santiago','Gonzalez Iglesias','3846194N','1987-8-27',null);
INSERT INTO empleados VALUES (13,'Leonardo','Senatore','7610171Y','1962-11-8',null);
INSERT INTO empleados VALUES (14,'Tomas','Lavanini','1172294Y','1984-2-5',null);
INSERT INTO empleados VALUES (15,'Nicolas','Sanchez','7739387C','1997-12-16',null);
INSERT INTO empleados VALUES (16,'Martin','Landajo','8024627E','1993-5-5',null);
INSERT INTO empleados VALUES (17,'Matias','Alemanno','2323264H','1988-1-11',null);
INSERT INTO empleados VALUES (18,'Joaquin','Tuculet','1424527M','1990-10-21',null);
INSERT INTO empleados VALUES (19,'Lucas','Noguera','4499786E','1961-10-8',null);
INSERT INTO empleados VALUES (20,'Matias','Moroni','6065642U','1989-4-27',null);
INSERT INTO empleados VALUES (21,'Horacio','Agulla','5245191F','1991-8-20',null);
INSERT INTO empleados VALUES (22,'Juan Manuel','Leguizamon','5168209I','1962-10-4',null);
INSERT INTO empleados VALUES (23,'Marcelo','Bosch','7713981E','1984-1-27',null);
INSERT INTO empleados VALUES (24,'Nahuel','Tetaz Chaparro','8181787R','1961-3-10',null);
INSERT INTO empleados VALUES (25,'Juan Pablo','Orlandi','1627980B','1984-1-5',null);
INSERT INTO empleados VALUES (26,'Julian','Montoya','3952546X','1962-12-3',null);
INSERT INTO empleados VALUES (27,'Juan','Martin Hernandez','3234307M','1967-8-11',null);
INSERT INTO empleados VALUES (28,'Facundo','Isa','8546841N','1990-5-1',null);
INSERT INTO empleados VALUES (29,'Agustin','Creevy','7415758L','1963-4-6',null);
INSERT INTO empleados VALUES (30,'Santiago','Cordero','8207267T','1996-5-4',null);
INSERT INTO empleados VALUES (31,'Ramiro','Herrera','6172837K','1981-1-17',null);
INSERT INTO empleados VALUES (32,'Tomas','Cubelli','7157940M','1963-4-20',null);
INSERT INTO empleados VALUES (33,'Juan','Imhoff','9049517C','1987-9-23',null);

UNLOCK TABLES;
