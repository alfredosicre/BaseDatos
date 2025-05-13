DROP DATABASE IF EXISTS 06_empleados;
CREATE DATABASE 06_empleados CHARACTER SET utf8mb4;
USE 06_empleados;

CREATE TABLE departamentos (
  id_departamento INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  departamento VARCHAR(45) NOT NULL,
  presupuesto DECIMAL(11,2) UNSIGNED NOT NULL,
  gastos DECIMAL(11,2) UNSIGNED NOT NULL
);

CREATE TABLE empleados (
  id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR(45) NOT NULL,
  apellido1 VARCHAR(45) NOT NULL,
  apellido2 VARCHAR(45),
  fk_departamento INT UNSIGNED,
  FOREIGN KEY (fk_departamento) REFERENCES departamentos(id_departamento)
);

INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleados VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleados VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleados VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleados VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleados VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleados VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleados VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleados VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleados VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleados VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleados VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleados VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleados VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);