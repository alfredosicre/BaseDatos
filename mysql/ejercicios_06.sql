-- base de datos 06_empleados
-- 1 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
select nombre, apellido1, apellido2, departamento from empleados join departamentos on fk_departamento = id_departamento;
  
-- 2 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.
select departamento, concat(apellido1,' ',apellido2,' ',nombre) empleado from empleados join departamentos on fk_departamento = id_departamento order by departamento asc, apellido1 asc, apellido2 asc, nombre asc;

-- 3 Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
select id_departamento, departamento from departamentos join empleados on fk_departamento is not null;

-- 4 Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solamente de aquellos departamentos que tienen empleados.
    -- El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial (columna presupuesto) menos el valor de los gastos que ha generado (columna gastos).
    -- Verificar el resultado en el departamento I+D si es correcto.
select DISTINCT id_departamento, departamento, presupuesto, gastos, cast(presupuesto as signed) - (gastos) as actual from departamentos join empleados on fk_departamento is not null order by id_departamento asc;

-- 5 Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.
select departamento, nif from departamentos join empleados on nif = '38382980M' and fk_departamento = id_departamento; 

-- 6 Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.
select departamento, nif, nombre, apellido1, apellido2 from departamentos join empleados on nombre = 'Pepe' and apellido1 = 'Ruiz' and apellido2 = 'Santana' and fk_departamento = id_departamento;
select departamento, nif, nombre, apellido1, apellido2 from departamentos join empleados on (nombre, apellido1, apellido2) = ('Pepe','Ruiz','Santana') and fk_departamento = id_departamento;

-- 7 Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
select departamento, nif, nombre, apellido1, apellido2 from departamentos join empleados on departamento = 'i+d' and fk_departamento = id_departamento; 

-- 8 Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
select departamento, nif, nombre, apellido1, apellido2 from departamentos join empleados on (departamento = 'i+d' or departamento = 'contabilidad' or departamento = 'sistemas') and (fk_departamento = id_departamento); 

-- 9 Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre 100000 y 200000 euros.
select id_departamento, nombre, apellido1, apellido2, departamento, presupuesto, gastos, cast(presupuesto as signed) - (gastos) as actual from departamentos 
join empleados on fk_departamento is not null or (cast(presupuesto as signed) - (gastos)<100000 and cast(presupuesto as signed) - (gastos)>20000) order by id_departamento asc;

-- 10 Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.
select departamento, nombre, apellido1, apellido2 from departamentos
	join empleados on (apellido1 is null or apellido2 is null) and fk_departamento = id_departamento order by departamento;

-- ****Resuelva las siguientes consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.***
-- 11 Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. Este listado también debe incluir los empleados que no tienen ningún departamento asociado.
select * from empleados left join departamentos on fk_departamento = id_departamento;
-- 12 Devuelve un listado donde sólo aparezcan aquellos empleados que no tienen ningún departamento asociado.
select * from empleados where fk_departamento is null;
-- 13 Devuelve un listado donde sólo aparezcan aquellos departamentos que no tienen ningún empleado asociado.
select DISTINCT nombre, apellido1, apellido2, fk_departamento from empleados join departamentos on fk_departamento is null;

-- 14 Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan.
      -- El listado debe incluir los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. 
	  -- Ordene el listado alfabéticamente por el nombre del departamento.
select * from empleados left join departamentos on fk_departamento = id_departamento
	union
select * from empleados right join departamentos on fk_departamento = id_departamento order by departamento;

-- 15 Devuelve un listado con los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.
select * from empleados left join departamentos on fk_departamento=id_departamento where fk_departamento is null
union
select * from empleados right join departamentos on fk_departamento=id_departamento
where id_empleado  is null order by departamento, id_empleado;
