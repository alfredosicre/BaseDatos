DROP DATABASE IF EXISTS Abogados;
CREATE DATABASE Abogados CHARACTER SET utf8mb4;
use Abogados;

CREATE TABLE `Abogados`.`personal` (
  `idpersonal` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(15) NOT NULL,
  `apellido1` VARCHAR(20) NOT NULL,
  `apellido2` VARCHAR(20) NOT NULL,
  `dni` VARCHAR(15) NOT NULL,
  `tipo` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`idpersonal`),
  UNIQUE INDEX `dni_UNIQUE` (`dni` ASC) VISIBLE);
  
