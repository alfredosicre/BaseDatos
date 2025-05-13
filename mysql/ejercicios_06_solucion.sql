-- base de datos xx_empleados
-- 1 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
-- 2 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.
-- 3 Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
-- 4 Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solamente de aquellos departamentos que tienen empleados.
    -- El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial (columna presupuesto) menos el valor de los gastos que ha generado (columna gastos).
    -- Verificar el resultado en el departamento I+D si es correcto.
select id_departamento, departamento, cast(presupuesto as signed) - gastos
from departamentos;

-- 5 Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.
-- 6 Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.
select *
from empleados
where (nombre, apellido1, apellido2) = ('Pepe', 'Ruiz', 'Santana');

-- 7 Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
-- 8 Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
-- 9 Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre 100000 y 200000 euros.
-- 10 Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.

-- ****Resuelva las siguientes consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.***
-- 11 Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. Este listado también debe incluir los empleados que no tienen ningún departamento asociado.
-- 12 Devuelve un listado donde sólo aparezcan aquellos empleados que no tienen ningún departamento asociado.
-- 13 Devuelve un listado donde sólo aparezcan aquellos departamentos que no tienen ningún empleado asociado.
-- 14 Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. El listado debe incluir los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.
-- 15 Devuelve un listado con los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.
