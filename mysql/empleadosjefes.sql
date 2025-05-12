use 04_reflexivas;
-- Datos del jefe máximo
select * from empleados e where e.fk_jefe is null;

-- Datos de los directores generales que dependen del CEO(2)

select * from empleados where fk_jefe = 2;

-- Datos de todos los empleados con el nombre de su jefe

select * from empleados em01 join empleados em02 on em01.fk_jefe = em02.idempleados;
-- em01 llamo a la tabla de empleados y em02 llamo a la tabla de jefes, las dos son la misma pero tengo que referenciarlas.
-- em01 lo renombro para los empleados y em02 lo renombre para los jefes, hay que ponerle alias

select idempleados, nombre, apellidos, dni from empleados;
select idempleados, upper(nombre), upper(apellidos), dni from empleados;
select idempleados, upper(concat(apellidos, ', ', nombre)), dni from empleados where nombre like 'j%';
 