use 06_empleados;
-- Todos los departamentos con sus empleados
select * from departamentos d
left join empleados e on d.id_departamento = e.fk_departamento;

-- Todos los departamentos con la cantidad de empleados de cada uno
select id_departamento, departamento, count(id_empleado) cuenta
from departamentos d
left join empleados e on d.id_departamento = e.fk_departamento
group by id_departamento;

-- con el where se filtra antes de agrupar
select id_departamento, departamento, count(id_empleado) cuenta
from departamentos d
left join empleados e on d.id_departamento = e.fk_departamento
where d.presupuesto >= 150000
group by id_departamento;

-- Datos de los departamentos y cantidad de empleados de aquellos departamentos
   -- con más de 1 empleado
   -- el having filtra los grupos
select id_departamento, departamento, count(id_empleado) cuenta
from departamentos d
left join empleados e on d.id_departamento = e.fk_departamento
group by id_departamento
having count(id_empleado) > 1;
