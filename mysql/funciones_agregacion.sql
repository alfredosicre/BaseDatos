select *
from departamentos;

select sum(presupuesto) tot_presupuesto 
from departamentos;

select count(id_departamento) cantidad 
from departamentos
where presupuesto > 200000;

select avg(presupuesto) media_presupuesto
from departamentos
where presupuesto > 0;

select sum(presupuesto)/5 media_presupuesto
from departamentos
where presupuesto > 0;


select max(gastos) gasto_maximo
from departamentos;

select gastos
from departamentos
order by gastos desc
limit 1;
