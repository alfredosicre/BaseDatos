use 01_negocio;

select * from productos;

-- actualizacion de datos: UPDATE DELETE INSERT ***********************************

update productos set prod_precio = 12.5 where idproducto = 23;

-- si me arrepiento del cambio realizado en la linea anterior puedo hacer ... si el modo autocommid esta desactivado

rollback; 

-- para ver la variable autocommid como esta es:

select @@autocommit;

-- para cambiarla hacemos:

set autocommit = 0; -- MODIFICAMOS EL VALOR DE LA VARIABLE DEL SISTEMA AUTOCOMMIT

-- ahora si yo hago una actualizacion de algun dato de la tabla con el update, despues si puedo utilizar el rollback y se vuelve a como estaba.

-- si el autocommit esta a 0, para que todo se actualice definitivamente hay que hacer un commit

commit;
